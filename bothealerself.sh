#!/bin/bash
HEALER_FILE="/home/yukiti/pid2.txt"
if [ -f "$HEALER_FILE" ]
then
   kill -9 $(cat $HEALER_FILE)
   rm $HEALER_FILE
   notify-send 'Bot selfhealer' 'OFF'
   echo "desligando bot!" >> /home/yukiti/bot-selfhealer.logs
else
   /home/yukiti/healingselfv1.sh & echo $! > /home/yukiti/pid2.txt
   echo "ligando bot healer!" >> /home/yukiti/bot-selfhealer.logs
   cat /home/yukiti/pid2.txt >> /home/yukiti/bot-selfhealer.logs
   notify-send 'Bot selfhealer' 'ON'
fi

