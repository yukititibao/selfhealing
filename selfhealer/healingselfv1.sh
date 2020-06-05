life_mana(){
	xdotool key x
	sleep 0.2
	xdotool key F1
	sleep 0.6
	xdotool key o
}

lifel(){
	xdotool key F5
	sleep 0.2
	xdotool key o
}

food(){
	xdotool key Control_L+U0060
}

mana(){
	xdotool key v
	sleep 0.3
}

ring(){
	xdotool key o
	sleep 0.3
}

notfoud(){
	msg='cor nao encontrada:'
	$1
	echo "$msg $1" > teste.out
}

while true
do
	COLOR="$(xwd -root -silent | convert xwd:- -depth 8 -crop "1x1+189+34" txt:- | grep -om1 '#\w\+')"
	
	case $COLOR in
	"#6D7F89") life_mana ;;#morrendo
	"#5F0000") life_mana ;;#morrendo
	"#BE0000") life_mana ;;#morrendo
	"#C89809") life_mana ;;#morrendo mais ou menos
	"#BE2F2F") life_mana ;;#morrendo mais ou menos
	"#6D9E04") lifel ;;
	#"#00BE00") ring ;;
	*)notfoud $COLOR;;
	esac
	
	#sleep 0.5
done
