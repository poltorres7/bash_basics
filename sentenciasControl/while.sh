#!/bin/bash
contador=0
termina=10

while [ $termina -ge $contador ]
do
  echo $contador
  let contador=$contador+1
done
