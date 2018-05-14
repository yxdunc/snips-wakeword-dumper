# This will install a system service that will dump audio of detected hotwords

## Simple Usage:

 - Go to the folder:

```
cd snips-wakeword-dumper
```

 - Then run this script (from your computer or directly on the pi):

```
sh install_service_ssh.sh wakeword_dumper_package pi@<raspi-name>.local
```

**You will find all the recording on your pi in "/usr/share/snips/audio_dumps/"**

