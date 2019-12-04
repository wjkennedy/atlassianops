tt=confluence
TT=Confluence

T(){
	echo "Confluence > $TT"
	for file in $(ack -l Confluence)
	do
		sed -i "s/Confluence/$TT/g" $file
	done
}

t(){
	echo "confluence > $tt"
	for file in $(ack -l confluence)
	do
		sed -i "s/confluence/$tt/g" $file
	done
}

T
t
