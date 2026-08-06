#!/bin/bash

edad=20
  if [[ "$edad" -lt 18 ]]; then
    echo "Menor de edad"
   elif [[ "$edad" -lt 65 ]]; then
    echo "Adulto"
   else
    echo "Adulto mayor"
  fi


