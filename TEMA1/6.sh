ls /archivo_inexistente
if [[ "$?" -ne 0 ]]; then
  echo "Se detectó un error en la operación"
 else
  echo "$?"
fi
