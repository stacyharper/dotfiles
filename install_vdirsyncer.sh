#!/bin/sh

echo "*/2 * * * * /usr/bin/vdirsyncer sync" | crontab -
