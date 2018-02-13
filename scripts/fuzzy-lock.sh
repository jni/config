#!/bin/sh -e
# Author: Stéfan van der Walt
# From: https://faq.i3wm.org/question/83/how-to-run-i3lock-after-computer-inactivity/

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
#mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 2.5% -scale 4000% /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png -e -f

# Turn the screen off after a delay.
# sleep 5; pgrep i3lock && xset dpms force off
