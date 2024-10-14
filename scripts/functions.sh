function sum(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2

  echo $((num1+num2))
  
}

function sub(){
  local script_dir=$(dirname $0)
  local script_name=$(basename $0)
  local script_path=$script_dir/$script_name

  local num1=$1
  local num2=$2

  echo $((num1-num2))
  
}