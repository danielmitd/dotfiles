#!/usr/bin/env zsh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install coreutils
brew install zsh-completions
brew install git
brew install php70 --without-apache
brew install php70-intl
brew install php70-opcache
brew install php70-redis
brew install php70-xdebug
brew install z
brew install wget --with-iri
brew install gnupg
brew install jq

# Remove outdated versions from the cellar.
brew cleanup
