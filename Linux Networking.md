* To setup local DNS like system use /etc/hosts
* /etc/nsswitch.conf contains the order which is used to resolve a hostname.
* nslookup or host shouldn't be used to test /etc/hosts as these tools bypass /etc/hosts and /etc/nsswitch.conf
* ping -c 1 should be used instead.



# Find the authorative Nameserver
dig +short NS exampledomain.com
host -t NS exampledomain.com
nslookup -type=NS exampledomain.com
whois exampledomain.com | grep -i "Name .*:"



