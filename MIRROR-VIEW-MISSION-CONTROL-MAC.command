#!/bin/bash

echo "Launching scrcpy..."
scrcpy --no-audio --max-fps=30 --max-size=1600 --no-control --render-driver=sdl
