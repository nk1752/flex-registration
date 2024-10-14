function sum(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2
  local result=$((num1+num2))
  
  echo "exit code -> $?"
  echo "func result -> $result"

  return $result
  
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

function HttpCode(){
  # local script_dir=$(dirname $0)
  # echo "script_dir -> $script_dir"
  # local script_name=$(basename $0)
  # echo "script_name -> $script_name"
  # local script_path=$script_dir/$script_name
  # echo "script_path -> $script_path"

  local http_code=$(curl -so /dev/null -w "%{http_code}" https://www.google.com)
  echo "exit code -> $?"

  if [ $? -ne 0 ]; then
    return 499
    exit 1
  else
    return $http_code  
    exit 0
  fi

}

function EchoTest(){
  echo "Hello, World!"
}

function Display(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  EchoTest

  echo "pwd -----> $(pwd)"
  echo '{}' > ned.json
  echo "script_dir -> $script_dir"
  echo "script_name -> $script_name"
  echo "script_path -> $script_path"

  echo "env name -> $1"
  echo "step name -> $2"
}