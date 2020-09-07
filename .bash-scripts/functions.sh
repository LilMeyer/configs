######### Functions ############

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

# Warning: you should have /usr/bin/git-grep for this function to work
git()
{
    typeset -r gitAlias="git-$1"
    if 'which' "$gitAlias" >/dev/null 2>&1; then
        shift
        "$gitAlias" "$@"
    elif [[ "$1" =~ [A-Z] ]]; then
        # Translate "X" to "-x" to enable aliases with uppercase letters.
        translatedAlias=$(echo "$1" | sed -e 's/[A-Z]/-\l\0/g')
        shift
        "$(which git)" "$translatedAlias" "$@"
    else
        "$(which git)" "$@"
    fi
}
