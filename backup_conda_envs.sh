#!/bin/bash

for ienv in `mamba env list | tail -n +3 | cut -d ' ' -f1`; do mamba env export -n ${ienv} --no-builds | grep -v "^prefix" > conda_envs_yaml/${ienv}.yaml; done
