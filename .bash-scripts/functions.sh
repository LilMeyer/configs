s() {
  project=${PWD##*/}
  if [ -f "$project.sublime-project" ]; then
    echo "$project.sublime-project exists."
    subl "$project.sublime-project"
  else
    subl .
  fi
}

venv_init() {
  if [ -d "./venv" ]; then
    echo '# Removing current folder venv...'
    rm -rf venv
  fi
  echo "# creating new venv: python3.8 -m venv venv"
  python3.8 -m venv venv
  echo "# source venv/bin/activate"
  source venv/bin/activate
  echo "# install last version of pip setuptools and wheel"
  pip install --upgrade pip setuptools wheel
}

venv_source() {
  echo 'source ./venv/bin/activate'
  source ./venv/bin/activate
}

random() {
  if [ $# -eq 0 ];
    then
      echo "Usage random <nb> where nb is the string length"
    else
      cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $1 | head -n 1
  fi
}
