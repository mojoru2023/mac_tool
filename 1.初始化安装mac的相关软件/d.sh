

# install homebrew 

/bin/bash -c "$(curl -fsSL https://gitee.com/ineo6/homebrew-install/raw/master/install.sh)"


# # 查看配置
brew config
# 更新 Homebrew
brew update
#  搜索相关的包
brew search [关键词] 
# 查看包的信息
brew info [软件名]
# 查看已安装的包
brew list
# 更新某个软件
brew upgrade [软件名]
# 清理所有软件的旧版
brew cleanup
# 卸载某个软件
brew uninstall [软件名]
# 安装某个软件
brew install [软件名]
# 安装cask软件
brew install --cask [软件名]

brew install zsh
# install ：安装 Oh My Zsh 并配置
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 自动补全插件
brew install zsh-syntax-highlighting





# vscode  自动保存


settings --->  auto save


# android studio 用命令行启动模拟器 

命令的路径：Tools--> SDK Manager--->Android SDK --> Android SDK Locations

列出所有模拟器名称：/Users/applmima1111/Library/Android/sdk/emulator/emulator -list-avds
启动某个模拟器 ： /Users/applmima1111/Library/Android/sdk/emulator/emulator -avd  模拟器名称

# install flutter 

brew install --cask flutter


# install tmux

brew install tmux


# install unrar

 brew install carlocab/personal/unrar
