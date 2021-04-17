#!/usr/bin/env bash
set -euxof pipefail

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
# brew install bash
# brew install bash-completion2

# simple logic to check if oh my zsh is installed
OH_MY_ZSH_DIR=$HOME/.oh-my-zsh
if [ ! -d "$OH_MY_ZSH_DIR" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  # zsh auto suggestions plugin
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli
brew install markdown

# ==== Beginning of extra apps ===
brew install shellcheck

# productivity apps
brew install --cask spectacle
brew install --cask vlc
# brew install --cask flux
# brew install --cask lastpass
brew install --cask keepassx
# brew install --cask qvod-player
# brew install --cask time-out
brew install --cask xmind
brew install --cask anki
# security
brew install --cask gas-mask
brew install --cask microsoft-office

# brew install --cask malwarebytes

# dev
brew cask install visual-studio-code
brew cask install altair-graphql-client
brew install tmux
brew install elixir
brew install the_silver_searcher
brew install postgresql

brew cask install psequel
brew cask install iterm2
brew cask install dash
brew cask install keycastr
brew cask install tableplus
brew cask install postman

# brew tap heroku/brew && brew install heroku

# may need to run this twice after allowing kernel extensions
# brew cask install --appdir="/Applications" virtualbox

brew cask install emacs
# brew linkapps emacs

# other apps recommended but not used. Can be enabled with uncommenting
# brew install --cask alfred # don't like it
# brew install --cask --appdir="/Applications" wunderlist # NOT working
# brew install --cask electronic-wechat # not trusted its security
# brew install --cask cyberduck

# other apps
# wunderlist

# direct download
# sougou wubi
# MS-office

# brew cask install wechat

# ==== ending of extra apps ===

# Remove outdated versions from the cellar.
brew cleanup
