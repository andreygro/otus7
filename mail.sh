#!/bin/bash
if
find ./ -name check_log.sh -exec {} \; > otchet.txt &&
mailx and@comprepair.dp.ua < otchet.txt &&
rm otchet.txt access.log

then
exit 0
else 
echo "file not found"
fi