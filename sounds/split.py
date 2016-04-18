#!/usr/bin/env python3

import datetime
import subprocess

for i in range(78):
    offset = 350 # ms
    t = datetime.timedelta(milliseconds=i*offset)
    hours = t.seconds // 3600
    minutes = (t.seconds - hours*3600) // 60
    seconds = (t.seconds - minutes*60)
    milliseconds = t.microseconds // 1000
    start = "%02d:%02d:%02d.%03d"%(hours, minutes, seconds, milliseconds)
    command = "ffmpeg -loglevel quiet -i nyanya.wav -ss %s -t 00:00:00.%d -c copy nya%03d.wav"%(start, offset, i)
    print(command)
    subprocess.call(command.split())

