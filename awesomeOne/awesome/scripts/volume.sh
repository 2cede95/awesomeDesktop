[ $(pulsemixer --get-mute) = 1 ] && echo vol: mute && exit

vol="$(pulsemixer --get-volume | awk '{if (NR==1) print $1}')"

if [ "$vol" -gt "100" ]; then
	icon="!"
else 
	echo "vol: $vol%" && exit
fi

echo "vol: $icon$vol%"
