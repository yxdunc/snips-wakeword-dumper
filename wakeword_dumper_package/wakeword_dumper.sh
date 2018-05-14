#!/bin/bash

echo "Starting wakeword dumper service..."
echo "You can find the audio samples in /usr/share/snips/audio_dumps/"
RUST_BACKTRACE=1 snips-watch --dump_audio --dump_audio_path /usr/share/snips/audio_dumps/ -d
