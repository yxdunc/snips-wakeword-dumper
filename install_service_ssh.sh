#!/bin/bash

scp -r $1 "$2:~"
ssh -t "$2" /bin/bash << EOF
cd `basename $1`
echo "Creating folder at /usr/share/snips/audio_dumps"
sudo mkdir -p  /usr/share/snips/audio_dumps
sudo chown -R _snips /usr/share/snips/audio_dumps
echo "Copying service code..."
sudo cp -v wakeword_dumper.sh /usr/bin/
sudo chmod +x /usr/bin/wakeword_dumper.sh
echo "Copying service descriptor..."
sudo cp -v wakeword_dumper.service /lib/systemd/system/
echo "Enabling service..."
sudo systemctl enable wakeword_dumper.service
echo "Starting service..."
sudo systemctl start wakeword_dumper.service
EOF
