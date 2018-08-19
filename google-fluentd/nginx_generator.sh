for f in /var/log/nginx/*-error.log; do
	name="$( echo $f  | rev | cut -d "/" -f 1 | rev)"
echo "<source>"
echo "  @type tail"
echo "  format none"
echo "  path $f"
echo "  pos_file /var/lib/google-fluentd/pos/$name-nginx-error.pos"
echo "  read_from_head true"
echo "  tag nginx-error"
echo "</source>"
done 


for f in /var/log/nginx/*-access.log; do
        name="$( echo $f   | rev | cut -d "/" -f 1 | rev)"
echo "<source>"
echo "  @type tail"
echo "  format none"
echo "  path  $f"
echo "  pos_file /var/lib/google-fluentd/pos/$name-nginx-access.pos"
echo "  read_from_head true"
echo "  tag nginx-access"
echo "</source>"
done 

