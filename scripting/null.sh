#!/bin/bash

String='nombre'

if [ -z "$String" ]; then
  echo "\$String is null."
else
  echo "\$String is NOT null"
fi

