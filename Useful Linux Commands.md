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

#### find packages
`rpm -qa | grep <package>`

#### find installed package files
`rpm -ql <package complete name>`

#### Find current working directory of a process
`lsof -p PROCESS_ID | grep cwd`

#### alternatives command
`alternatives --verbose --display hive-conf`

#### top 10 cpu consuming process
`ps -e -o pcpu,pid,user,args|sort -k1 -nr|head -10`

#### To list top 10 Memory consuming processes with user
`ps -e -o pmem,pid,user,args|sort -k1 -nr|head -10`

#### To list top 10 CPU usage processes with user
`ps -e -o pcpu,pid,user,args|sort -k1 -nr|head -10`
#### Find out top 10 CPU consuming process
`ps -auxf|sort -nr -k3|head -10`
#### To list top 10 Memory consuming processes with user
`ps -e -o pmem,pid,user,args|sort -k1 -nr|head -10`
#### Find out the top 10 memory consuming process
`ps -auxf|sort -nr -k4|head -10`
#### Find out every process running under a user
`ps -U user-name -u user-name u`
`ps -e -o pid,user,args|grep $username`

#### all processes under
/proc/<pid>

#### find all threads started by a process
ps -T -p <PID>

top -H -p <PID>
  
### find unique established connection  

 grep ESTABLISHED netstat_rm.txt  | awk '{print $5}' | awk -F":" '{print $1}' |sort | uniq -c

### To untar in a new folder
tar -xvf file.tar.gz -C newlyCreatedFolder
  
### remove space from file names
for oldname in *; do newname=`echo $oldname | sed -e 's/ //g'`; mv "$oldname" "$newname";done
