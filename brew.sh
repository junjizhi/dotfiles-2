#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

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
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

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

# productivity apps
brew install --cask spectacle
brew install --cask vlc
# brew install --cask flux
# brew install --cask lastpass
brew install --cask keepassx
# brew install --cask qvod-player
# brew install --cask time-out
brew install --cask xmind

# security
brew install --cask gas-mask
# brew install --cask malwarebytes

# other apps recommended but not used. Can be enabled with uncommenting
# brew install --cask alfred # don't like it
# brew install --cask --appdir="/Applications" wunderlist # NOT working
# brew install --cask electronic-wechat # not trusted its security
# brew install --cask cyberduck

# other apps to install through App store
# wunderlist

# direct download
# sougou wubi
# MS-office
# kuaibo

# ==== ending of extra apps ===

# Remove outdated versions from the cellar.
brew cleanup
