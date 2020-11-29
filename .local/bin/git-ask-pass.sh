#!/usr/bin/env bash
# ex: set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab:

set -eu
[ -n "${BASH_DEBUG:-}" ] && set -x

### 2 examples for possible values for argument INPUT
# Password for 'https://github.com':
# Password for 'https://dvaerum@github.com':
INPUT="${1}"

if grep --quiet --ignore-case '^username' <<<${INPUT}; then
  HOST="$(sed -E -e "s|^username for '(https?://)?([^@]+@)?([^']+)': *\$|\1\3|i" <<<${INPUT})"
  >&2 echo "You have not specified a username for this domain, plz do so using the following command:"
  >&2 echo "  git config --global credential.${HOST}.username YOUR-USERNAME"
  exit 1
fi

HOST="$(sed -E -e "s|^password for '(https?://)?([^@]+@)?([^']+)': *\$|\3|i" <<<${INPUT})"
USER="$(sed -E -e "s|^password for '(https?://)?([^@]+@)?([^']+)': *\$|\2|i" -e 's|@||' <<<${INPUT})"

if [ "${HOST}" == "github.com" ]; then
  pass "website/${HOST}" | head -1
elif [ "${HOST}" == "gitlab.com" ]; then
  pass "website/${HOST}" | head -1
else
  exit 1
fi

