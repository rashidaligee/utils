#yum -y install httpd
#systemctl enable httpd.service
#systemctl restart httpd.service
#systemctl status httpd.service
echo 'creating directories'
BASE_DIR='/var/www/html/'
AMBARI_TAR_FILE='ambari-2.7.3.0-centos7.tar.gz'
HDP_TAR_FILE='HDP-3.1.0.0-centos7-rpm.tar.gz'
HDP_UTILS_TAR_FILE='HDP-UTILS-1.1.0.22-centos7.tar.gz'
AMBARI_REPO_URL="http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/${AMBARI_TAR_FILE}"
HDP_REPO_URL="http://public-repo-1.hortonworks.com/HDP/centos7/3.x/updates/3.1.0.0/${HDP_TAR_FILE}"
HDP_UTILS_REPO_URL="http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.22/repos/centos7/${HDP_UTILS_TAR_FILE}"
mkdir -p ${BASE_DIR}ambari/centos7/2.x/updates/2.7.3.0
mkdir -p ${BASE_DIR}HDP/centos7/3.x/updates/3.1.0.0
mkdir -p ${BASE_DIR}HDP-UTILS-1.1.0.22/repos/centos7
echo "downloading ambari tar file"
#wget ${AMBARI_REPO_URL}
#tar -xzvf ${AMBARI_TAR_FILE} -C ${BASE_DIR}ambari/centos7/2.x/updates/2.7.3.0/

echo "downloading HDP tar file ${HDP_TAR_FILE}"
#wget ${HDP_REPO_URL}
#tar -xzvf ${HDP_TAR_FILE} -C ${BASE_DIR}HDP/centos7/3.x/updates/3.1.0.0/

echo "downloading HDP Utils ${HDP_UTILS_TAR_FILE}"
#wget ${HDP_UTILS_REPO_URL}
tar -xzvf ${HDP_UTILS_TAR_FILE} -C ${BASE_DIR}HDP-UTILS-1.1.0.22/repos/centos7/
