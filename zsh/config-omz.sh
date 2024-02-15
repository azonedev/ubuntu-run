#!/bin/bash

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install common plugins (customize as needed)
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  history
  zsh-completions
)

for plugin in "${plugins[@]}"; do
  git clone https://github.com/zsh-users/$plugin ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$plugin
done

echo "Oh My Zsh and plugins installed!"
