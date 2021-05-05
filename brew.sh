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

brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
# brew install openssh
# brew install screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

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
# brew install git
# brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
# brew install ssh-copy-id
# brew install tree
# brew install vbindiff
# brew install zopfli
brew install markdown

# ==== Beginning of extra apps ===
# Install dock tools
# brew install dockutil

# brew install shellcheck
brew install hub
# brew install speedtest-cli

# brew install tldr

# Extend brew with cask
brew install cask

# productivity apps
brew install --cask spectacle
# brew install --cask vlc
# brew install --cask flux
# brew install --cask lastpass
brew install --cask keepassx
# brew install --cask qvod-player
# brew install --cask time-out
brew install --cask xmind
brew install --cask anki
# security
brew install --cask gas-mask
# brew install --cask malwarebytes

# dev
brew install --cask visual-studio-code
brew install --cask altair-graphql-client
brew install elixir
brew install the_silver_searcher

brew install --cask iterm2
# brew install --cask keycastr
brew install --cask tableplus
brew install --cask postman
brew install --cask google-chrome
brew install --cask skitch

# brew tap heroku/brew && brew install heroku

# may need to run this twice after allowing kernel extensions
# brew install --cask --appdir="/Applications" virtualbox

# brew install --cask microsoft-office
# brew install --cask cyberduck

# ==== ending of extra apps ===

# Remove outdated versions from the cellar.
brew cleanup
