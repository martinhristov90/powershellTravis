#!/usr/bin/env bash

# This line executes the script that needs to be tests and stores the out in the# variable "output"
output=$(pwsh -f "${env:TRAVIS_BUILD_DIR}/hello.ps1")

# we compare output to "hello"
if [ "${output}" == "hello" ]; then
  # if output match all good
  echo GOOD: Test Pass
  exit 0
else
  # if output doesn't match - mr dragon is not happy
  echo BAD: Test fail
  exit 1
fi 
