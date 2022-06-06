- pacman  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pacman 是 archlinux 下的包管理器， 它拥有非常简洁和高效的命令， 它还享受 archlinux 下的 aur 镜像。
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pacman 指令主要分为3类， -S 指令， 同步执行; -R 指令， 删除相关; -Q 指令， 查询本地包。这三个指令都是大写开头， 后面可以跟一些小写字母的指令

    - -S 指令：
        - -S 指令不添加小写字母指令时， 默认是安装一个软件， 如
        
        ```shell
        sudo pacman -S vim 
        ```
         
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这个指令用于安装 vim
        - -Sy 在arch 软件源上获取最新的情报， 如果最近执行过这个指令， 系统还是会告诉你是最新的软件， 但这时你不知道你用的是不是最新的软件库。此时因该使用 -Syy 指令
          
         - -Syy 强行更新软件库 , 无论是 -Sy 还是 -Syy 都不会世纪更新你的软件  
           
        - -Su 更新已经安装的软件
         
        - -Syu 更新软件源， 再更新你的软件
         
        - -Syyu 强制更新源， 再更新软件
        
        - -Ss 查找一个软件, 如：  
        
        ```shell
        sudo pacnman -Ss vim 
        ```
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会查找所有带 vim 的软件包, 并且会显示这个软件的版本， 来源信息等， 同时这个指令也支持**正则表达式**
    
        - -Sc pacman安装完一个软件后并不会删除它的软件包， 而是保留在 /var/cache/pacman/pkg/ 路径下，这个指令用于删除软件的安装包
        
    - -R 指令：
     
        - -R R即 remove， 用于删除一个软件， 但不会删除它的依赖项  ， 如：  
        ```shell
        sudo pacman -R nano 
        ```
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这个指令用于删除 nano
        - -Rs  删除一个软件和它的依赖项

        - -Rns  删除一个软件和它的依赖项， 并删除它的全局配置文件， 但不会删除个人配置文件  
        
        - -R $(pacman -QDtq) 删除孤立包
        
    - -Q 指令：
     
        - -Q 查看pacman上的软件， 并显示版本, 可以使用 `|` 指令来查看有安装了多少个软件， 如：  
        
        ```shell
        sudo pcaman -Q | wc -l 
        ```
        ⇒ 1480
     
        - -Qe 查看已经安装的软件， 并显示版本
        
        - -Qeq 查看已经安装的软件， 但不显示版本

        - -Qs 查看某个本地安装软件, 如：  
        ```shell
        sudo pacman -Qs vim 
        ```

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这行代码，会查看已经安装的软件中， 所以带 **vim** 的软件
    
        - -Qdt 查看已经安装的孤立包（不再被依赖的软件包）
    
    ---
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pacman的配置文件在 /etc/pacman.conf 文件下
 
- 添加 pacman 镜像源  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 编辑pacman的配置文件（gnone下没有安装vim)
    
    ```shell
    sudo vi /etc/pacman.conf 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在最后添加这些代码， 更多源需要网上自行搜索
    
    ```txt
    [archlinuxcn] 
    SigLevel = Never 
    Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$arch 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 或者在 archlinux 文件下添加源， 可以添加这几行代码
    
    ```shell
    [archlinux] 
    SigLevel = Optional TrustedOnly 
    Include = /etc/pacman.d/archlinuxcn 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 切换到中国源
    
    ```shell
    sudo pacman-mirrors -c China 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 强制更新包管理器， 一路回车， 然后重启

    ```
    sudo pcaman -Syyu 
    ```

- 配置中文输入法  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 需要安装 fcitx5-im 和fcitx5-chinese-addons, 并且配置将拼音或者五笔添加到左边, 详细可以查看 [fcitx5](https://wiki.archlinux.org/title/Fcitx5_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
    
    ```shell
    sudo pacman -S fcitx5-im 
    sudo pacman -S fcitx5-chinese-addons 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 接下来我们需要配置环境变量， 并重新登陆

    ```shell
    vim ~/.pam_environment 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加以下代码, 注销重新登陆即可使用

    ```txt
    GTK_IM_MODULE DEFAULT=fcitx 
    QT_IM_MODULE  DEFAULT=fcitx 
    XMODIFIERS    DEFAULT=@im=fcitx 
    INPUT_METHOD  DEFAULT=fcitx 
    SDL_IM_MODULE DEFAULT=fcitx 
    ```

- 设置 vim 为默认编辑器

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果安装的桌面环境是 gnone 的话， 它的默认编辑器则是 nano， 我是不会用这个编辑器， 所以选择了vim , 安装vim后还需配置一些环境变量  
    
    ```shell
    vim ~/.profile 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 默认应该是没有的， 添加下面这行代码
    ```txt
    export EDITOR=/usr/bin/vim 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 再修改 .bashrc 文件
    ```shell
    vim ~/.bashrc 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在最后添加这两行代码
    ```vim
    export EDIROR=/usr/bin/vim 
    export VISUAL=/usr/bin/vim 
    ```
 
- 修改默认终端
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 比如， 希望改成fish， 先用 which 命令查看 fish 的位置
    
    ```shell
    which fish 
    ```
    ⇒ /usr/bin/fish 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 然后使用， chsh 命令 修改为 fish ， 注销重新登陆再打开终端， 则使用的就变为 fish 了。  
    
    ```shell
    chsh -s /usr/bin/fish 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 配置fish, 使用fish_config 命令即可打开配置页面
 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果想要安装 [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) 的话， 先获取源代码  
    
    ```shell
    git clone https://github.com/oh-my-fish/oh-my-fish 
    cd oh-my-fish-master/bin 
    ./install 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 即可安装 omf

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在fish下， `alias` 可以映射一些按键， 直到终端关闭， 如果想要保存映射可以可以使用 `funcsave` ,来保存映射， 比如我们想把 `l` 映射为 `ls -la` ：  
    
    ```shell
    alias l "ls -la" 
    funcsave l 
    ```

- 安装 i3
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 选择全部安装， 注销后， 重新到登陆界面即可选择桌面环境。  
 
    ```shell
    sudo pacman -S i3 
    ```

    - i3 基本命令
        - `<Super> + <CR>`  打开一个终端
        - `<Super> + 1 ～ 5` 切换到第 N 个桌面
        - `<Super> + f` 全屏打开窗口
        - `<Super> + r` 调整窗口大小
        - `<Super> + h/j/k/l` 切换工作窗口
        - `<Super> + d` 打开 demnu ，并使用一个命令
        - `<Super> + <shift> + r `刷新i3
        - `<Super> + h` 水平分割窗口
        - `<Super> + v` 垂直分割窗口
        - 
    - 修改 i3的 dpi， 在～目录下新建一个 .Xresources 文件  
      
    ```shell
    vim ~/.Xresources 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加以下代码。重启就可以改变
 
    ```txt
    xft.dpi: 200 
    ```

   - 修改默认终端， 打开 `~/.config/i3/config` 文件，找到
    
    ```txt
    bindsym $mod+Return exec i3-sensible-terminal 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改为：  

    ```txt
    bindsym $mod+Return exec alacritty  
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 刷新i3 `<Super>+<shift>+r `即可。

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改 alacritty 字体， 打开 `～/.config/alacritty/alacritty.yml` 文件， 如果没有则复制 `/usr/share/doc/alacritty/example/alacritty.yml` 一份到文件夹下

    ```
    font: 
       normal: 
         family: "Source Code Pro" 
         style: Medium 
 
       bold: 
         family: "Source Code Pro" 
         style: Bold 
 
       italic: 
         family: "Source Code Pro" 
         style: Italic 
 
       bold_italic: 
         family: "Source Code Pro" 
         style: Bold Italic 
 
    
    # point size 
    size: 18 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果想设置半透明终端可以， 修改 **alacritty** 的配置文件， 找到 `backgound_opacity:` 选项，将它透明度调低。  

    ```txt
    backgound_opacity: 0.8 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 再安装一个渲染器 **picom** 

    ```shell
    sudo pacman -S pciom 
    ```
    - 修改键位 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; linux 下修改键位可以使用 xorg 
    
    ```shell
    sudo pacmn -S xorg 
    ```
   
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `xmodmap -kde` 可以输出键盘上所有按键对应， 可以把它输出到 `～/.xmodmap` 文件。

   ```shell
   xorg -pke > ~/.xmodmap 
   ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 将 `<Caps Lock>` 的建位修改为 `<ESC>` ， 并在开头添加 `clear lock`. 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后使用 xmodmap 命令引用文件即可。  

    ```shell
    xmodmap ～/.xmodmap 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加i3快捷建， 打开 `~/.config/i3/config` 文件， 比如给 `<Super>+c` 添加打开浏览器命令， 可以添加以下代码：  

    ```shell
    bindsym $mod+c exec google-chrome-stable 
    ```
 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果想每次启动 i3 时， 启动一些软件， 比如, xmodmap， 就可以使用以下命令：  

    ```shell
    exec_always xmodmap ~/.xmodmap 
    ```

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改窗口边框大小， 比如想把它调到看不见， 可以使用添加以下代码：  

    ```shell
    new_window 1pixel 
    ```
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改窗口主题， 可以使用 **lxappearance** 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加 i3 窗口的空隙. 需要安装 **i3-gaps** .在 i3 配置文件下添加以下代码即可
    
    ```txt
    gaps inner 5 
    ```
- 一些常用软件
    - gvim 
    - ranger
    - fish
    - dmenu
    - nodejs
    - pacman扩展 - yay
    - 键位修改 - xorg-xmodmap
    - 显卡渲染终端 - alacritty
    - 修改主题 - lxappearance
    - 修改壁纸 - feh
    - 自动更换壁纸 - variety
    - qgis
    - 开源谷歌浏览器 chromuim
    - 谷歌浏览器 google-chrome
    - TeamSpeack3
    - 网易云音乐 - netease-cloud-music
    - QQ - linuxqq
    - 微信 - wine-wechat
    - steam
    - 视频播放器 - vlc 
    - 显示键盘按键 - screenkey
    - 下载软件 - transmission-qt / qbittorrent
    - 硬件信息显示 - polybar
    
- 配置 polybar  
    - polybar 的配置文件在， `/usr/share/doc/polybar/config` 文件。个人配置文件在 `～/.config/polybar/config` 文件下。  
  
    - 找到 [bar/example] 以下为包配置
    
    - 将 hight 改为30 ， font-size 改为14. 
    
    - 保存退出后， 使用 `polybar exmaple` 启用即可

    - 添加启动脚本， 创建 lanuch.sh 文件， 并添加以下代码：  
    
    ```shell
    killall polybar 
    
    polybar example  
    ```

    - 再到 `~/.config/i3/config` 配置文件下添加 `exec_always ~/.config/polybar/lanuch.sh` 即可
    

