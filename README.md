# VIMSANE
Sane VIM configuration for my personal use.

<img src="./vimsane-screenshot.jpg" alt="VIMSANE">

## Install VIM PLUG
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Download to your ~/.vimrc 
```
wget "https://raw.githubusercontent.com/arazgholami/vimsane/refs/heads/main/vimrc"
cp vimrc ~/.vimrc
```

## Install/Update VIM PLUG
```
:PlugUpdate
```

## Keymap
`:` Commands
`i` Insert
`y` Copy (yank!), `yy` Copy whole line
`d` Cut, `dd` Cut whole line
`p` Paste
`u` Undo
`ESC` and `v` Select, `V` for line selection 
`qa` Close all and exit
`ESC`+NUM Switch Tabs
`G` Move to end of doc, `gg` Move to begining
`Ctrl+t` Open tree
`Ctrl+ww` Switch to Editor from Tree
`Ctrl+p` Quick Open
`/KEYWORD` Search
`%s/KEYWORD/REPLACE-WITH/gc` Search and Replace (all, confirm before)
