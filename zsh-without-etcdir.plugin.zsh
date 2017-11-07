# use zsh version of without-etcdir to ignore setting files under /etc directory
if [ $SHELL = '/bin/zsh' ]; then
  echo -e '\e[31mDefault zsh loads /etc/zprofile. It causes changing order of environment path.'
  if [[ ! -x /usr/local/bin/zsh  ]]; then
    echo '\e[32mInstalling zsh without etcdir'
    /usr/local/bin/brew install --without-etcdir zsh
    echo '\e[32mPlease add /usr/local/bin/zsh to /etc/shells to use it as default shell!'
  fi
  chsh -s /usr/local/bin/zsh # zsh installed via brew
  exit
fi