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
  
```bash
└─[] gem env
RubyGems Environment:
  - RUBYGEMS VERSION: 2.4.2
  - RUBY VERSION: 2.1.2 (2014-05-08 patchlevel 95) [x86_64-darwin13.0]
  - INSTALLATION DIRECTORY: /Users/Victor/.rvm/gems/ruby-2.1.2@rails4
  - RUBY EXECUTABLE: /Users/Victor/.rvm/rubies/ruby-2.1.2/bin/ruby
  - EXECUTABLE DIRECTORY: /Users/Victor/.rvm/gems/ruby-2.1.2@rails4/bin
  - SPEC CACHE DIRECTORY: /Users/Victor/.gem/specs
  - SYSTEM CONFIGURATION DIRECTORY: /etc
  - RUBYGEMS PLATFORMS:
    - ruby
    - x86_64-darwin-13
  - GEM PATHS:
     - /Users/Victor/.rvm/gems/ruby-2.1.2@rails4
     - /Users/Victor/.rvm/gems/ruby-2.1.2@global
  - GEM CONFIGURATION:
     - :update_sources => true
     - :verbose => true
     - :backtrace => false
     - :bulk_threshold => 1000
  - REMOTE SOURCES:
     - https://rubygems.org/
  - SHELL PATH:
     - /Users/Victor/.rvm/gems/ruby-2.1.2@rails4/bin
     - /Users/Victor/.rvm/gems/ruby-2.1.2@global/bin
     - /Users/Victor/.rvm/rubies/ruby-2.1.2/bin
     - /usr/local/bin
     - /usr/bin
     - /bin
     - /usr/sbin
     - /sbin
     - /Users/Victor/.rvm/bin
 ```

```
{
  "default_extend_env": {
    "PATH": "{HOME}/.rvm/rubies/ruby-2.1.2/bin:{PATH}",
    "GEM_PATH": "{HOME}/.rvm/gems/ruby-2.1.2@rails4"
  }
}

```

注意我安装的 rvm 并设置 ruby-2.1.2@rails4 是默认启动的环境

### ST3 Theme and Color Theme

* Dracula Color Scheme
* Spacegray
* Tomorrow COlor Schemes
* Seti UI
