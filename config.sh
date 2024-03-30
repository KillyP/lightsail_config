# UPDATE AND INSTALL PACKAGES
sudo apt update && sudo apt upgrade -y
sudo apt install git curl docker-compose build-essential procps curl file

# SET PASSWORD
sudo su -
passwd admin
su admin

# INSTALL HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

# INSTALL FISH
sudo apt install fish
chsh -s /usr/bin/fish

# INSTALL GH
brew install gh
