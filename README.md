## 说明

* ```.zshrc``` oh-my-zsh 的个人习惯配置
* ```victor.zsh-theme``` oh-my-zsh 的自定义皮肤
* ```Preferences.sublime-settings``` Sublime Text 的自定义配置
* ```Default (OSX).sublime-keymap``` Sublime Text 的自定义快捷键
* ```tasks-base16-bright-dark.hidden-tmTheme``` Sublime Text 2 插件：PlainTasks 的配色方案
* ```.vimrc``` vim 配置

### ST3 Plugins

* Vintageous
* AdvancedNewFile
* ApplySyntax
* DocBlockr
* GitGutter
* Side Bar
* PlainTasks
* SublimeREPL (这里需要配置才能在 ST3 中运行 Ruby 具体参考我的 blog）
  * pry shoud be < 0.9.12 (在2014.11.14的实际安装中发现) 
  * 根据 gem env 修改个人的配置如下

```
{
  "default_extend_env": {
    "PATH": "{HOME}/.rvm/rubies/ruby-2.1.2/bin:{PATH}",
    "GEM_PATH": "{HOME}/.rvm/gems/ruby-2.1.2@rails4"
  }
}

```

### ST3 Theme and Color Theme

* Dracula Color Scheme
* Spacegray
* Tomorrow COlor Schemes
* Seti UI
