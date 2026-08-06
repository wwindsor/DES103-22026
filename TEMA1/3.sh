case "$1" in
scan)
echo "Ejecutando escaneo"
;;
backup)
echo "Realizando respaldo"
;;
report)
echo "Generando reporte"
;;
restore)
echo "Restaurando reporte"
;;
remove)
echo "Eliminado el reporte"
;;
*)
echo "Uso: $0 {scan|backup|report|restore|remove}"
exit 1
;;
esac