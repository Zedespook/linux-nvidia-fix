#!/usr/bin/sh

xset r rate 300 50 # Faster cursor refresh, this is preference.

nvidia-settings --assign DigitalVibrance=512
nvidia-settings --assign CurrentMetaMode="$(nvidia-settings -q CurrentMetaMode -t|tr '\n' ' '|sed -e 's/.*:: \(.*\)/\1\n/g' -e 's/}/, ForceFullCompositionPipeline = On}/g')" > /dev/null

/usr/bin/nvidia-settings -a 'SyncToVBlank=0'
/usr/bin/nvidia-settings -a 'AllowFlipping=0'
/usr/bin/nvidia-settings -a "[gpu:0]/GpuPowerMizerMode=1"
