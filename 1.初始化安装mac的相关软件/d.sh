

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

④ zsh-autosuggestions
# 参考资料： https://mp.weixin.qq.com/s/6n5nddCzZ0ET7nNkD6xHOg
三方插件，自动补全插件，根据历史命令和当前输入内容，自动推荐可能的命令。安装命令：



 

brew install zsh-autosuggestions
# 编辑文件
vim ~/.zshrc
# 将下面配置加到.zshrc内容末尾
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# 添加内容后执行
source .zshrc



⑤ zsh-syntax-highlighting

三方插件，语法高亮插件，让命令行更加易读易懂。安装命令：

 

brew install zsh-syntax-highlighting
# 编辑文件
vim ~/.zshrc
# 将下面配置加到.zshrc内容末尾
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 添加内容后执行
source .zshrc




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


 


#mac 中安装gradle 同时在android studio 中设置gradle

启动您的 Terminal 应用程序。

安装 SDKMAN!：
在终端中运行以下命令：

curl -s "https://get.sdkman.io" | bash
初始化 SDKMAN!：
安装完成后，需要运行以下命令来初始化 SDKMAN!：

source "$HOME/.sdkman/bin/sdkman-init.sh"
验证安装：
运行以下命令以检查 SDKMAN! 是否安装成功：


sdk version
如果显示版本信息，则表示 SDKMAN! 已成功安装。

使用 SDKMAN! 安装 Gradle
安装 Gradle：
现在可以使用 SDKMAN! 安装 Gradle。在终端中运行：


sdk install gradle
验证 Gradle 安装：
安装完成后，您可以通过以下命令检查 Gradle 的版本：


gradle -v
这将输出您已安装的 Gradle 版本和其他相关信息。


设置 Gradle Home
打开 Android Studio：
启动 Android Studio。

打开项目结构：

点击菜单栏中的 File （文件）选项。
选择 Project Structure... （项目结构）。在一些版本中，您也可以通过快捷键 Ctrl + Alt + Shift + S（Windows/Linux）或 Command + ;（Mac）进入这个界面。
配置 Gradle：

在弹出的窗口中，选择左侧的 Project 选项卡。
在右侧，您会看到一个名为 Gradle Version 的下拉框。确保它不是空的，而是选择一个合适的版本。
如果您的 Gradle Home 仍然为空，您需要手动设置它。
手动设置 Gradle Home：

在同一窗口中，找到 Gradle 选项（通常在左侧的列表中）。
选择 Use local gradle distribution（使用本地 Gradle 分发）。
在 Gradle home 字段中，输入本地 Gradle 的安装路径，例如：
Windows 示例：C:\Users\<YourUsername>\gradle-x.x
macOS/Linux 示例：/Users/<YourUsername>/gradle-x.x
确保填写的是正确的路径，并且该路径下包含 bin, lib 等目录。
应用更改并关闭：

点击 OK 或 Apply 按钮，保存更改并关闭窗口。
检查和同步：

回到主界面，点击 Sync Project with Gradle Files（与 Gradle 文件同步），以确保所有更改生效。

#  gradle 的命令行需要 java  安装 Java JDK
方法 1: 使用 Homebrew 安装 JDK
打开终端。

确保 Homebrew 已安装：
如果您还没有安装 Homebrew，可以通过运行以下命令安装它：


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
安装 OpenJDK：
您可以使用 Homebrew 安装 OpenJDK。运行以下命令：


brew install openjdk
设置 JAVA_HOME 环境变量：
安装完成后，需要设置 JAVA_HOME 环境变量。您可以在 .bash_profile, .zshrc, 或 .bashrc 文件中添加以下行（取决于您使用的 shell）：


export JAVA_HOME=$(/usr/libexec/java_home)
然后，执行以下命令使更改生效：


source ~/.bash_profile  # 如果您使用 bash
source ~/.zshrc         # 如果您使用 zsh
验证安装：
运行以下命令以验证 Java 是否已安装：


java -version
如果显示 Java 版本信息，则说明 Java 已成功安装。
