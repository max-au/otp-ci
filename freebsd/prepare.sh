#!/usr/local/bin/bash

set -eo pipefail

currentDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${currentDir}/base.sh # Get variables from base script.

# trap any error, and mark it as a system failure.
trap "exit $SYSTEM_FAILURE_EXIT_CODE" ERR

sudo bastille clone otp-base-image "$VM_ID" "10.20.10.1$CUSTOM_ENV_CI_CONCURRENT_PROJECT_ID"

sudo bastille start "$VM_ID"
