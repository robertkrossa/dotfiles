/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.inputrc ~/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.zprofile ~/

git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts

brew install z
brew install nvm
brew install fzf
brew install awscli
brew install gh
brew install rg

