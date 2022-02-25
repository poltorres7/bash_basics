#/bin/bash

VALUE=$(cat /home/paul.torres/cron/clean.logs| grep -v "Logs limpios")

if [[ ! -z ${VALUE} ]]; then

message=$VALUE
apiToken=1768413358:AAGCcpnYNWVbEtz_91sZ3R9jHUR8XSQMqeU
chatId=-539819376

send() {
        curl -s \
        -X POST \
        https://api.telegram.org/bot$apiToken/sendMessage \
        -d text="$message" \
        -d chat_id=$chatId
}

if [[ ! -z "$message" ]]; then
        send
fi

fi


