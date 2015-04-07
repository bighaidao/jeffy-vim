# 简介 #
  * jeffy-vim用于配置Vim编辑器，使Vim工作得更像一个C/C++的IDE。在一些插件的润色下，jeffy-vim实现了很多IDE的基本功能，比如：代码解析、代码补全、函数跳转、 程序调试等。我还自己编写了一个插件用于管理项目，包括生成tags和cscope的数据库、高亮用户定义的类型和函数等功能，让工程管理起来更方便。

  * 由于要使用ctags和cscope来管理项目数据，所以项目的文件不能太多，否则数据库的生成及更新就会变得很慢。因此，如果要使用jeffy-vim的配置文件，你的项目就不能太大。如果你需要更大型项目的Vim配置文件，可以email我(jeffy.du@163.com)。

# 安装 #
  * 请安装7.2及以上的Vim版本；
  * 安装前请先备份您自己的Vim配置文件；
  * Linux系统下需要自己安装ctags、cscope程序；
  * 如果没有svn，也可以在Downloads里面下载，但不能保证是最新版本。
  * 如果是Linux系统，运行如下命令进行安装
```
$ svn checkout http://jeffy-vim.googlecode.com/svn/trunk/ jeffy-vim-read-only
$ cd jeffy-vim-read-only
$ ./install.sh
```
  * 如果是Windows系统，把svn上的代码checkout下来后，运行里面的install.bat进行安装。

# 使用 #
##### 阅读.vimrc文件 && 查看帮助文档 #####
  * 打开VIM后使用命令":e ~/.vimrc"可以打开配置文件，就会发现有一些行和其它行颜色不一样，这些行就是folder，使用"zj"命令就可以移动到最近的folder，可以使用"zo"打开folder，也可以使用"zc"关闭folder。

  * 在你眼前的第一句是"set nocompatible"，也许你不懂set和nocompatible什么意思，请不要惊慌并且随时记得用"help set"或"help nocompatible"来打开它们的帮助文档。对于其它你不懂的命令也可以使用同样的方法来查看帮助文档。

  * 显然，这些帮助文档都是英文的，但我相信对于想学习VIM的你来说这点英文不是问题。当然，想看中文的帮助文档也有，不过得你自己去弄。

##### 修改配色方案 #####
  * 本配置文件使用vividchalk的配色方案，如果你对配色不满意，可以修改这个文件vimfiles/bundle/vividchalk/color/vividchalk.vim。修改方法请使用命令":help highlight"查看详细帮助文档。

##### 快捷键映射 #####
  * vimrc里面的Key Bindings折叠里定义了最常用的快捷键定义，如果你有其它需要定义的键映射可以添加到这里。

##### 插件使用 #####
  * jeffy-vim的配置使用pathogen来管理插件，每个插件在vimfiles/bundle下都有一个目录，大部分的插件在相应的doc目录下都有对应的帮助文档，少部分在相应的plugin里面对应插件的开始部分就是帮助文档。你也可以添加你自己想要的插件到vimfiles/bundle下。

  * 首先你要做的就是，找一个不太大的C项目，此项目可以有几十个文件，一层一层的子目录。进入到项目的根目录下，启动VIM。按照下面的文档一步一步做，你就可以对jeffy-vim的功能有个大致了解。其它关于Vim的操作请参考其它文档。

  * 按",jc"会生成项目的ctags和cscope的数据库。此命令会在当前目录下生成project.vim的目录，所有的项目数据库文件会放到这个目录下。以后打开Vim后（根目录和子目录都可以），就会自动加载项目数据库，源文件修改后可以用",ju"来更新项目数据库，如果项目太大的话你可能就得等一会了。

  * 按",f"会在VIM的右边打开一个文件浏览器窗口。再按一下",f"会关闭这个窗口。你可以在这个窗口里面上下左右移动选择文件，按回车打开文件。按"?"可以打开和关闭帮助菜单。详细的使用方法请参考插件NERD\_tree。

  * 如果你的项目文件及子目录太多，你又不知道你想打开的文件在哪里，此时你就可以按",e"并输入你想打开的文件的名字（可以使用正则表达式）再按Tab进行选择，回车就可以打开。

  * 现在你已经打开了一个C文件，按",t"将会在Vim的左边打开一个Taglist窗口，这个窗口里面包含了C文件里面的定义，如struct,typedef,全局变量,函数等。使用"Ctrl-h"将光标移动到左边的窗口，上下选择tag按回车定位到tag的定义处。再按",t"就会关闭Taglist窗口。详细的使用方法请参考插件Taglist。

  * 你可能会发现，你定义的函数、类型、宏用不同的颜色高亮起来了，这个是用一个叫jeffy-plugins的插件来实现的。该插件是我实现的，虽然远没有SI那样强大，但有总比没有好了，将就着用吧<sup>-</sup>。当你定义了新类型后，Vim不会立即给你高亮起来，你得用",ju"更新数据库。该插件还不完善，如果在使用的过程中给你带来了不便，请见谅！

  * 将光标放在某个宏上，按"Ctrl+]"就会跳到宏的定义处，按"Ctrl+o"就会跳回来。更详细的使用方法可以使用命令":help tagsrch.txt"查看帮助文档。

  * cscope也可以用来在代码间跳来跳去，但有些功能是ctags所没有的，比如查找某个函数被哪些函数调用过、查找某个文件被哪些文件引用过等等，在.vimrc里面定义了使用cscope的快捷键，比如将光标放在某个函数上使用命令",sc"就可以查看这个函数被哪些函数调用过，使用命令",sg"就可以跳转到函数的定义处。更多的使用方法请使用命令":help if\_cscop.txt"查看帮助文档。

  * 如果你想调试，你得先安装gdb。在Gvim下有插件完美支持Vim下的gdb调试，但终端下的Vim只有当Vim编译的时候打了vimgdb的补丁才能用gdb来调试。如果你的Vim在编译的时候打了此补丁，你可以通过`<`F7>来调试。详细的调试命令请使用":help vimgdb"打开帮助文档。

  * 现在你可能打开了很多个文件，如果你想查看当前打开了哪些文件，可以使用命令",be"在当前窗口中打开buffer浏览器，上下选择文件回车就可以打开。更多的使用方法请使用":help bufexplorer.txt"查看帮助文档。

  * 打开一个C文件，输入几个字符，除非你运气实在不好，否则你就会看到一个弹出菜单。里面会根据你输入的内容提示补全。用上下或"Ctrl-p","Ctrl-n"进行选择。在结构体变量后输入"."或"->"的时候也会根据结构成员补全。更多的使用方法请使用":help acp.txt"和":help omnicppcomplete.txt"查看帮助文档。

  * 打开一个C文件，在一个函数实现体中调用另外一个函数。当你输入完这个被调用的函数名，在输入左括号的时候在Vim的下方就会显示函数的原型。详细帮助文档请参考echofunc插件。

  * 打开一个文件，在一行的开头输入main再按"Tab"键试试，main函数就这样出来了，在main函数里面输入for再按几个"Tab"看看会出现什么效果。更多的代码自动完成请查看文件"vimfiles/bundle/snipMate/snippets/c.snippets"，当然你也可以自己定义代码自动完成，定义方法请使用":help snipMate.txt"。请在vimrc里面修改自己的个人信息g:snip\_name,g:snip\_mail,g\_snip\_company。

  * 此时你可以关闭Vim，下次打开Vim的时候按",r"会打开一个MRU窗口，这个窗口里面记录了最近打开的文件，上下选择文件回车打开。如果没有你想打开的文件可以按"q"关闭窗口。详细使用方法请参考插件MRU。

# 图片 #
![http://jeffy-vim.googlecode.com/svn/trunk/images/image1.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image1.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image2.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image2.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image3.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image3.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image4.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image4.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image5.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image5.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image6.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image6.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image7.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image7.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image8.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image8.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image9.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image9.png)
![http://jeffy-vim.googlecode.com/svn/trunk/images/image10.png](http://jeffy-vim.googlecode.com/svn/trunk/images/image10.png)

# 申明 #
**jeffy-vim项目里面有很多配置是借鉴网上牛人的配置，如有侵权请email我<jeffy.du@163.com>。**