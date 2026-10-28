#!/bin/bash

export DES103_MODO="laboratorio"

printf "Proceso principal: %s\n" "$DES103_MODO"

bash -c 'printf "Proceso hijo: %s\n" "${DES103_MODO:-no definida}"'