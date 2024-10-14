function sum(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2

  return $((num1+num2))
  
}

function sub(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2

  echo $((num1-num2))
  
}

function list(){

  echo ls -l
}

function help(){
  echo "Usage: $0 [option]"
  echo "Options:"
  echo "  -h, --help: Display help"
  echo "  -s, --sum: Sum two numbers"
  echo "  -l, --list: List files"
  echo "  -v, --version: Display version"
}

function DaysToExpiry(){
  # local script_dir=$(dirname $0)
  # echo "script_dir -> $script_dir"
  # local script_name=$(basename $0)
  # echo "script_name -> $script_name"
  # local script_path=$script_dir/$script_name
  # echo "script_path -> $script_path"

  local current_timestamp=$(date +%s)
  echo "func current_timestamp -> $current_timestamp"

  #get expiration timestamp from reg-time.json

  jq . reg-time.json

  local future_date="$(jq -r '.expiration_date[:19]' reg-time.json)"
  local future_timestamp=$(date -d "$future_date" +%s)
  echo "func future_timestamp -> $future_timestamp"

  local time_diff=$((future_timestamp - current_timestamp))
  echo "func time_diff -> $time_diff"

  local days=$((time_diff / 86400))
  echo "func days -> $days"

  return $days

}