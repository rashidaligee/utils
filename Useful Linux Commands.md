## OS Commands
* yum search

#### Find To 10 Files by Size
`find /var/log -type f -exec du -Sh {} + | sort -rh | head -n 10`

#### Find attached disks
`- lsblk -ido KNAME,TYPE,SIZE,MODEL`

#### List packages in system
`yum list`

#### list repos
`yum repolist`

#### Find current working directory of a process
`lsof -p PROCESS_ID | grep cwd`

