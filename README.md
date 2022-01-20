# Erlang/OTP Shared/Community CI setup

This repository explains how to run a copy of Erlang/OTP CI.
Start with GitLab installation (in a VM or a container).

## Setting up Linux (Docker) runner
This runner is required to run tests on Ubuntu Linux VM. Create a new VM,
run ubuntu/setup-vm.sh to install prerequisites (gitlab-runner).

By default, runner allows up to 16 concurrently running Docker containers.

## Setting up FreeBSD runner
This runner tests FreeBSD using Jails (similar to Linux Docker).
Use freebsd/setup-runner.sh to install prerequisites and GitLab runner.

## Setting up Windows runner


## Setting up Mac OS runner

## Setting up SunOS (Solaris) runner