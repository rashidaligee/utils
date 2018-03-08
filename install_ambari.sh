wget -O /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.6.1.0/ambari.list
apt-key adv --recv-keys --key-server kerserver.ubuntu.com B9733A7A07513CAD
apt-get update
echo 'confirming ambari is installed'
apt-cache showpkg ambari-server
apt-cache showpkg ambari-agent
apt-cache showpkg ambari-metrics-assembly

echo "installing ambari"
apt-get install ambari-server


