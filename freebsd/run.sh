#!/usr/local/bin/bash

currentDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${currentDir}/base.sh # Get variables from base script.

set -eo pipefail

sudo bastille cp $VM_ID $1 /tmp/run.sh
sudo bastille cmd $VM_ID /tmp/run.sh
