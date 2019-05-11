sudo yum -y update
sudo yum install -y ntp
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo sed -i '' '/rali-dp/d' /etc/hosts ; sudo sed -i '' 'N;/^\n$/d;P;D' /etc/hosts;echo -e "\n172.26.84.43 rali-dp-1.openstacklocal rali-dp-1
172.26.84.44 rali-dp-2.openstacklocal rali-dp-2
172.26.84.42 rali-dp-3.openstacklocal rali-dp-3
172.26.84.46 rali-dp-4.openstacklocal rali-dp-4
172.26.84.45 rali-dp-5.openstacklocal rali-dp-5
" | sudo tee -a /etc/hosts
