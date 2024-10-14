function sum(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2
  local result=$((num1+num2))

  echo "func sum -> $result"

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

  # local http_code=$(curl -so /dev/null -w "%{http_code}" https://www.google.com)
  # echo "func http_code -> $http_code"

  local http_code=101

  return $http_code

}