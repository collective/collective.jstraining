#!/bin/bash
# we want to exit on errors
set -e

VIRTUALENV_BIN=$(command -v virtualenv-2.7 || command -v virtualenv)
PYTHON=$(command -v python2.7 || command -v python)
"$VIRTUALENV_BIN" -p "$PYTHON" .

# Let's enter the virtualenv
. bin/activate
./bin/pip install -r requirements.txt

# Now we have
PYTHON=$(command -v python2.7 || command -v python)
./bin/buildout
