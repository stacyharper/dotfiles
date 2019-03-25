#!/bin/sh

chanel_id=${1/https:\/\/www.youtube.com\/channel\/}
echo "https://www.youtube.com/feeds/videos.xml?channel_id=$chanel_id"
