#!/bin/bash
jupyter.exe notebook --notebook-dir='.' --no-browser &
sleep 3
jnserver=$(jupyter.exe notebook list | grep "http://localhost" | head -1 | cut -d' ' -f1)
addr=${jnserver:0:22}notebooks/ifz.ipynb${jnserver:22}
~/node_modules/.bin/decktape --chrome-arg=--no-sandbox -s 2560x1440 rise $addr ifz.pdf
kill $!

