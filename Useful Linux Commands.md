## OS Commands
* yum search

#### Find To 10 Files by Size
`find /var/log -type f -exec du -Sh {} + | sort -rh | head -n 10`
