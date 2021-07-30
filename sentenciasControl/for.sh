#!/bin/bash

TOTAL_INSTANCES=$1

#for i in $(seq $TOTAL_INSTANCES); do
#	echo "$i: Instancia creada"
#done

SIZE=s-1vcpu-1gb
RTMP_SERVER_KEY=30286996



for user in $(cat users-nube.txt); do
	echo "$user"
	DROPLET_NAME=lab-server-${user}
	#Create tags
		doctl compute tag create ${user}
		doctl compute tag create ${DROPLET_NAME}

		doctl compute droplet create --region sfo3 --image centos-8-x64 \
			--size ${SIZE} \
			--ssh-keys ${RTMP_SERVER_KEY} \
	  	--tag-names ${user},${DROPLET_NAME} ${DROPLET_NAME}

done
