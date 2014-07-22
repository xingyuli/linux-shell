#!/bin/sh

# Gather udp packet statistics via the "netstat" command. One line will be
# recorded per miniute.
#
# If your output didn't match the awk patterns shown here, e.g.,
#
#   [0-9]+ packates received
#
# adjust those patterns according to your needs freely.

while (true);
do (echo "date: " `date +"%Y-%m-%d-%H:%M"`; netstat -su) |
awk '

  /^date:/ {date=$2;}
  /[0-9]+ packets received/ {recv=$1;}
  /[0-9]+ packets to unknown port received/ {unknown=$1;}
  /[0-9]+ packet receive errors/ {error=$1;}
  /[0-9]+ packets sent/ {send=$1;}
  /RcvbufErrors:/ {recvBufError=$2;}
  /SndbufErrors:/ {sendBufError=$2;}

  END {
    print date"\t"recv","unknown","error"\t"send","recvBufError","sendBufError
  }';
sleep 60
done >> `date +"%Y-%m-%d"`"-"`hostname`

