#!/usr/bin/bash

echo "* Install zsh\n"
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "* Setting up addons"

echo "prompt_context() {}" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -s "s/plugins=.*/plugins=(zsh-autosuggestions)/" -i ~/.zshrc

echo "* Fonts"
echo "- copy fonts to /usr/share/fonts/truetype"
cp -r ./fira-code /usr/share/fonts/truetype/fira-code

echo "! Now the final touch: go and install Fira Code font in your terminal. And enjoy"







