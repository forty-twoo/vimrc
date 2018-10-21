丽敏的vimrc
====
![GitHub version](https://img.shields.io/badge/version-0.1.0-green.svg)
![Vim version](https://img.shields.io/badge/vim-8.0%2B-brightgreen.svg)

# 目标
* 创建出适合`Rust`/`C`/`C++`开发的`Vim`配置文件
* 备份`iosmanthus`的`Vim`配置文件

# 配置原则:
* 所有插件的配置不在`vimrc`给出, 配置文件应当在`.vim/modules`中给出, 插件的配置文件命名为:
```sh
pluginx.vim # pluginx 是插件名字
```
* 插件配置文件创建一个名为`s:setup()`的函数, 将配置信息写在函数里边, 在文件末尾调用这个函数.
* 插件的配置文件在`vimrc`中手动加载.
```vim
runtime! ./modules/pluginx.vim " 加载插件配置
```
* 配置文件实例: [vim-plug configuration](https://github.com/iosmanthus/vimrc/blob/master/modules/vim-plug.vim)

# 截图
* `Rust`

![Imgur](https://media.giphy.com/media/5UyPFDiFDdWQAKNBKK/giphy.gif)

* `C/C++`

![Imgur](https://media.giphy.com/media/YVr9KeZNU0cS5sgErB/giphy.gif)

# 安装
1. 将仓库克隆到本地, 覆盖前请自行备份自己的配置文件
```sh
git clone https://github.com/iosmanthus/vimrc ~/.vim
mkdir .vim/swap # 将swap文件都放到这里...
vim -c ":PlugInstall" # 安装所有插件
```

2. 安装系统依赖

```shell
# ArchLinux
# clang, cquery for c/c++; rustup for rust
yay -S fortune-mod cowsay cquery clang rustup
pip install neovim

# Ubuntu
# Install ArchLinux :)
# 包名可以根据上边的依赖到apt自行搜索

# Mac
# Install Ubuntu
```

# 删除
```sh
rm ~/.vim
```

# 插件

插件通过`vim-plug`管理, 插件较多, 日常较多用到的是:

* [deoplete](https://github.com/Shougo/deoplete.nvim) 代码补全引擎, 功能强大, 扩展性极强 (之前用 [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) 每次跟新需要编译, 不支持`Language Server`, 虽然他的*fuzzy matching*真的好用...)
* [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) 和*Language Server*打交道, 提供补全, 跳转, 格式化等插件的后端. `Rust`需要安装`rls`, `C/C++`需要安装`cquery`
* [ultisnips](https://github.com/SirVer/ultisnips) 片段补全, 以 [vim-snippets](https://github.com/honza/vim-snippets) 做片段库 这里的片段库我fork了一份, 持续添加`Rust`的片段... 配置中使用的是我自己的fork...
* [ale](https://github.com/w0rp/ale) 异步*Linter*, 方便检查语法错误
* [vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace) 管理缓冲区, 工作区
* [vim-autoformat](https://github.com/Chiel92/vim-autoformat) 自动格式化代码
* ... 更多插件详见`vimrc`
* 插件配置统一存放在`.vim/modules`中, 可自行修改配置

# 贡献
欢迎给我开Issues和提Pull request :)
