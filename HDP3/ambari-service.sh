#!/bin/bash

AMBARI_SERVER_HOSTNAME_PORT="172.25.36.148:8080"
USERNAME=admin
PASSWORD=rali
CLUSTERNAME=c1117
SERVICE=$1

REST_API_URL="http://${AMBARI_SERVER_HOSTNAME_PORT}/api/v1/clusters/${CLUSTERNAME}/services/${SERVICE}"

case "$2" in
	start)
		echo "Starting Service $SEARVICE"
		curl -u $USERNAME:$PASSWORD -H 'X-REQUESTED-BY: admin' -X PUT -d '{"RequestInfo":{"context":"_PARSE_.START.${SERVICE}","operation_level":{"level":"SERVICE","cluster_name":"${CLUSTERNAME}","service_name":"${SERVICE}"}},"Body":{"ServiceInfo":{"state":"STARTED"}}}' $REST_API_URL
;;
	stop) 
		echo "Stopping Service $SERVICE"
		curl -u $USERNAME:$PASSWORD -H 'X-REQUESTED-BY: admin' -X PUT -d '{"RequestInfo":{"context":"_PARSE_.STOP.${SERVICE}","operation_level":{"level":"SERVICE","cluster_name":"${CLUSTERNAME}","service_name":"${SERVICE}"}},"Body":{"ServiceInfo":{"state":"INSTALLED"}}}' $REST_API_URL
;;
	status)
		echo "Checking Status of $SERVICE"
		curl --silent -u $USERNAME:$PASSWORD -H 'X-REQUESTED-BY: admin' -X GET $REST_API_URL?fields=ServiceInfo | grep -w "state"
;;
	*)
		echo "Usage: ambari-service.sh <SERVICE> <start|stop|status>"
        	echo
        	echo 'Available services:' 
        	curl --silent -u $USERNAME:$PASSWORD -X GET http://${AMBARI_SERVER_HOSTNAME_PORT}/api/v1/clusters/${CLUSTERNAME}/services | grep service_name| awk -F":" '{print $2}'
        ;;
		
esac
