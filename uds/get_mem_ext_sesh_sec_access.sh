set -euo pipefail

function send_isotp() {
  isotp_data=$1
  echo "$isotp_data" | isotpsend -s 7e0 -d 7e8 vcan0
}

send_isotp "10 03"
#send_isotp "27 
