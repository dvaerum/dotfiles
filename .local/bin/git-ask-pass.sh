#!/usr/bin/env bash
# ex: set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab:

set -x

### 2 examples for possible values for argument INPUT
# Password for 'https://github.com':
# Password for 'https://dvaerum@github.com':
INPUT="${1}"


HOST="$(sed -E -e "s|^password for '(https?://)?([^@]+@)?([^']+)': *\$|\3|i" <<<$INPUT)"
USER="$(sed -E -e "s|^password for '(https?://)?([^@]+@)?([^']+)': *\$|\2|i" -e 's|@||' <<<$INPUT)"


if [ "${HOST}" == "github.com" ]; then
  pass "website/${HOST}" | head -1
elif [ "${HOST}" == "gitlab.com" ]; then
  pass "website/${HOST}" | head -1
else
  pass "website/${HOST}" | head -1
fi

