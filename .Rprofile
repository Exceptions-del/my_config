# Things you might want to change

# options(papersize="a4")
# options(editor="notepad")
# options(pager="internal")

# set the default help type
# options(help_type="text")
options(help_type="html")

# set a site library
# .Library.site <- file.path(chartr("\\", "/", R.home()), "site-library")

# set a CRAN mirror
# local({r <- getOption("repos")
#       r["CRAN"] <- "http://my.local.cran"
#       options(repos=r)})

# Give a fortune cookie, but only to interactive sessions
# (This would need the fortunes package to be installed.)
#  if (interactive()) 
#    fortunes::fortune()

# user config
options(tab.width=4)
options(prompt="-> ")
options(continue="+ ")

# 仓库及镜像源
.libPaths("D:/R_library")
local({r <- getOption("repos")
r["CRAN"] <- "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"
options(repos=r)})

# 启动函数
.First <- function(){
    pacman::p_load(ggplot2, dplyr, RColorBrewer, hrbrthemes, grDevices,readr)
    
    # 设定字体，特别注意里面的 enfont 和 cnfont 是我最常用的两个字体。
    library(showtext)
    showtext_auto(enable = TRUE)
    font_add("cnfont", regular = "C:/Users/shi/AppData/Local/Microsoft/Windows/Fonts/SourceHanSansSC-Regular.otf")
    
    cnfont <- "cnfont"
    
    # 设定 ggplot2 绘图主题
    # theme_set(theme_ipsum(base_family = 'cnfont'))
    
    # 这是设定 R 的基础绘图系统的绘图主题
    if(0){
        library(basetheme)
        pars <- basetheme("default")
        pars$palette <- c("#2A363B", "#019875", "#99B898", "#FECEA8", "#FF847C", "#E84A5F", "#C0392B", "#96281B") 
        pars$bg  <- "white"
        pars$fg  <- "gray20"
        pars$col <- "gray20"
        pars$col.main <- "black"
        pars$col.axis <- "gray20"
        pars$col.lab  <- "gray20"
        pars$family   <-  "cnfont"
        pars$lab      <-  c(10, 10, 7)
        pars$cex.axis <-  0.8
        pars$las      <-  0
        pars$rect.border <- "black"
        pars$rect.lwd    <- 4
        basetheme(pars)
    }
    # 取消科学计数法的显示
    options(scipen = 1)
    
    # 设定 ggplot2 的默认调色板
    # options(
    #    ggplot2.continuous.colour = "viridis",
    #    ggplot2.continuous.fill = "viridis"
    # )
    cat("\nWelcome to", version$version.string, "\nNow", date(), "\n")
}

# 结束函数
.Last <- function() {
    cat("\nGoodbye at", date(), "\n")
    }
    
