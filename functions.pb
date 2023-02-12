IRCV_QUERY_INFO(){

  libs/irecovery -q | grep -w $1 | sed 's/'$1': //g'

}

IRCV_SEND_RAW_COMMAND(){
  
  libs/irecovery -c "$1"
  
}

IRCV_SEND_RAW_FILE(){

  libs/irecovery -f "$1"
  
 }
