# xcode

> 查看虚拟机列表
>
> xcrun instruments -s
>
> 启动虚拟机
> xcrun instruments -w "iPhone 11 (14.0)"



# DLang 安装

```shell
brew install dscanner gdb dfix dfmt dub dmd
# VSCODE插件列表
Bracket Pair Colorizer
Chinese (Simplified) Language Pack for Visual Studio Code
Code Runner
D Programming Language
Path Intellisense

Vscode中使用 Command+shift+p，输入Code-d:Run即可看到运行选项，回车即可


```

Mac安装地址  ：  https://www.yuque.com/lanceadd/nb5tvo/acx8ko

# Brew镜像

## 中科大镜像

```
# 替换brew.git:
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

# 替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

# 替换homebrew-cask.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-cask"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git

# 应用生效
brew update
# 替换homebrew-bottles:
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```

## 切回官方

```
# 替换brew.git:
cd "$(brew --repo)"
git remote set-url origin https://github.com/Homebrew/brew.git

# 替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core.git

# 替换homebrew-cask.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-cask"
git remote set-url origin https://github.com/Homebrew/homebrew-cask.git

# 应用生效
brew update

# 删除.zshrc变量
vim  ~/.zshrc
# 删除如下变量
```



