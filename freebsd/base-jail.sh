#!/usr/local/bin/bash

bastille create otp-base-image 13.0-RELEASE 10.20.20.1
bastille pkg otp-base-image bootstrap -y
bastille pkg otp-base-image install -y autoconf gcc unixODBC git openjdk16 bash gmake gitlab-runner
bastille cmd otp-base-image chsh -s /usr/local/bin/bash