# This scrit will take a command as parameter and runs it on all the nodes given
# passwordless ssh should be setup prior to run this script.
# e.g. commandRunner.sh 'echo happy'

nodes=("c1117-node2" "c1117-node3" "c1117-node4" "c1117-node5")
for i in "${nodes[@]}"
do
     echo "running command $1 on $i"
     ssh root@$i $1
     echo "completed command $1 on $i"
done
