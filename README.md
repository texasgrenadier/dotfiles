Instructions for setting up my development systems.

# Install brew and other tools

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew install tmux
brew install --cask iterm2
brew install --cask vivaldi
brew install spotify
brew install git
brew install --cask visual-studio-code
```

# Install fonts
https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf
-- use Font Book to install it

# Install and configure iterm2
- install iterm2 (https://iterm2.com/downloads/stable/latest)
- change iterm2 profile to use solarized dark for color scheme
- change iterm2 profile to use SourceCodePro font and use font size 16


# Configure Python
```
brew install pyenv
pyenv install 3.7.9
pyenv global 3.7.9
```

# Configure Node
```
brew install nvm
nvm install 16
```

# Install .net core
```
brew install cask dotnet
```

# Azure
```
brew install azure-cli
```

# Steps for setting up Sublime Text
- install Sublime Text
- enter license key
- install package control
- install color scheme and theme
	Corey Shafer uses these:
		Predawn (color scheme)
		Material (theme)
	I installed these as well:
		Solarized (to be in line with what I use for my terminal)
- install bracket highlighter
- install sidebar enhancements
- install Anaconda
- setup user settings
- settup Ananconda settings 
- setup Python specific settings
