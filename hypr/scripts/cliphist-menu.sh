#!/bin/bash
cliphist list | wofi --dmenu | cliphist decode | wl-copy
