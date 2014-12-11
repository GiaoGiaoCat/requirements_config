### ST3 Plugins

* Vintageous
* All AutoComplete
* AdvancedNewFile
* ApplySyntax
* DocBlockr
* GitGutter
* Side Bar
* PlainTasks
* DashDoc 使用快捷键 ```Ctrl + Option + h``` 在 Dash 中搜索当前选中单词
* http://emmet.io/ 前端开发用
* SublimeREPL (这里需要配置才能在 ST3 中运行 Ruby 具体参考我的 blog）
  * pry shoud be < 0.9.12 (在2014.11.14的实际安装中发现) 
  * 根据 gem env 修改个人的配置如下
  
```bash
$ gem env
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
# SublimeREPL.sublime-settings
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

### 修改 Seti UI 的边栏颜色

让边栏在被选中的情况下，当前行颜色更亮。打开 `Packages/Seti_UI/Seti.sublime-theme` 编辑如下：

```
    // Sidebar rows || selected files bg
    {
        "class": "tree_row",
        "layer0.texture": null,
        "layer0.tint": [55, 61, 86],
        "layer0.opacity": 0
    },
```
