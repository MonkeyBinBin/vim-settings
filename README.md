# MonkeyBinBin Vim settings

試著使用 Vim 做為開發程式用的編輯器，這個是我目前使用的設定檔案。透過網路上的教學影片與文章，自已試著去安裝設定讓 Vim 更接近自已使用上的需要。由於目前大多以前端開發為主，所以此設定檔的內容比較適合前端開發使用。

## Vim 版本

8.2

## 手動安裝

```bash
cd ~
git clone https://github.com/MonkeyBinBin/vim-settings .vim
ln -s .vim/.vimrc .vimrc
```

開啟 Vim 執行 :PlugInstall 安裝外掛程式

## 自動安裝

```bash
sh <(curl -L https://raw.githubusercontent.com/MonkeyBinBin/vim-settings/main/utils/install.sh)
```

## 使用套件

### 外管管理

- [junegunn/vim-plug](https://github.com/junegunn/vim-plug)

### 功能增強

- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
- [jlanzarotta/bufexplorer](https://github.com/jlanzarotta/bufexplorer)
- [mhinz/vim-startify](https://github.com/mhinz/vim-startify)
- [tomtom/tcomment_vim](https://github.com/tomtom/tcomment_vim)
- [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)
- [Shougo/denite.nvim](https://github.com/Shougo/denite.nvim)
- [heavenshell/vim-jsdoc](https://github.com/heavenshell/vim-jsdoc)
- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)

### 程式碼 Syntax 支援

- [elzr/vim-json](https://github.com/elzr/vim-json)
- [stephpy/vim-yaml](https://github.com/stephpy/vim-yaml)
- [othree/html5.vim](https://github.com/othree/html5.vim)
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
- [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim)
- [maxmellon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)
- [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [leafoftree/vim-vue-plugin](https://github.com/leafOfTree/vim-vue-plugin)
- [moll/vim-node](https://github.com/moll/vim-node)

### 佈景主題

- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [mhartington/oceanic-next](https://github.com/mhartington/oceanic-next)
- [connorholyday/vim-snazzy](https://github.com/connorholyday/vim-snazzy)
- [lmintmate/blue-mood-vim](https://github.com/lmintmate/blue-mood-vim)
- [rhysd/vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

### 注意事項

- Shougo/defx.nvim 套件要求 Vim 8.2 以上版本並支援 python3，並且需要啟用 python3 介面，詳情參考 [Shougo/defx.nvim README.md](https://github.com/Shougo/defx.nvim)
- Shougo/denite.nvim 套件要求 Vim 8.2 以上版本並支援 python3，並且需要啟用 python3 介面，詳情參考 [Shougo/denite.nvim README.md](https://github.com/Shougo/denite.nvim)
- Shougo/denite.nvim 套件由於設定有使用 ggreer/the_silver_searcher 功能，所以需要額外安裝 ggreer/the_silver_searcher
- 使用 neoclide/coc-eslint 套件可能會在狀態列出現"ESLint is disabled since its execution has not been approved or denied yet."訊息，使用 :CocCommand eslint.showOutputChannel 指令啟動授權，該訊息就會消失

## tmux 設定

### 安裝方式
```bash
cd ~
ln -s .vim/.tmux.conf .tmux.conf
```
