#!/usr/bin/sh

nvidia-settings --assign CurrentMetaMode="$(nvidia-settings -q CurrentMetaMode -t|tr '\n' ' '|sed -e 's/.*:: \(.*\)/\1\n/g' -e 's/}/, ForceFullCompositionPipeline = Off}/g')" > /dev/null
nvidia-settings --assign CurrentMetaMode="$(nvidia-settings -q CurrentMetaMode -t|tr '\n' ' '|sed -e 's/.*:: \(.*\)/\1\n/g' -e 's/}/, ForceCompositionPipeline = Off}/g')" > /dev/null
