#!/usr/bin/env bash
COPY="$(xclip -selection clipboard -o)"
youtube-dl --extract-audio --audio-format mp3 "$COPY"
