#!/bin/bash

TAM=$(du -h /home/diana/cron/mislog.log | cut -f 1 | grep -o '[[:digit:]]*')


if [ $TAM -gt 100 ]; then
  echo "" > /home/diana/cron/mislog.log
fi
