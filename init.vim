" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai' 
Plug 'morhetz/gruvbox' 
Plug 'junegunn/seoul256.vim'
Plug 'scwood/vim-hybrid'
Plug 'dunstontc/vim-vscode-theme'
Plug 'tomasiser/vim-code-dark' 
Plug 'octol/vim-cpp-enhanced-highlight'


" 定义插件，默认用法，和 Vundle 的语法差不多
" Plug 'junegunn/vim-easy-align'

" Plug 'skywind3000/vim-quickui'

Plug 'ludovicchabant/vim-gutentags' 

" inspect engine
" Plug 'https://gitee.com/fadedzipper/ale'

" 延迟按需加载，使用到命令的时候再加载或者打开对应文件类型才加载
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' } 
" 确定插件仓库中的分支或者 tag

"Plug 'justinmk/vim-sneak'

" as it's name
Plug 'https://github.com/nelstrom/vim-visual-star-search'

" 补全工具
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" surround cs{motion}"' ysiw" ds" viwS" etc.
Plug 'tpope/vim-surround'

" tabNext tabprevious next bnext etc.
Plug 'https://github.com/tpope/vim-unimpaired'

" improved substitute i.g. :Subvert/child{,ren}/adult{,s}/g
Plug 'https://github.com/tpope/vim-abolish'

" Repeat.vim remaps . in a way that plugins can tap into it.  The following plugins support repeat.vim: surround.vim speeddating.vim unimpaired.vim vim-easyclip vim-radical
Plug 'https://github.com/tpope/vim-repeat'

" 注释
Plug 'scrooloose/nerdcommenter'

Plug 'https://gitee.com/fadedzipper/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

Plug 'https://gitee.com/fadedzipper/vim-localvimrc' 
" Plug 'kana/vim-textobj-user'
" Plug 'kana/vim-textobj-indent'
" Plug 'kana/vim-textobj-syntax'
" Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
" Plug 'sgur/vim-textobj-parameter'

"E.g. if you are editing foo.c and need to edit foo.h simply execute :A and you will be editting foo.h, to switch back to foo.c execute :A again.
Plug 'https://gitee.com/bingxuechangyaxvimer/a.vim'

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
'

" load sensible earlier, add the following line to override
runtime! plugin/sensible.vim

set nocompatible              " be iMproved, required
filetype on                  " required

"设置（自动补全
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i
set t_Co=256
set t_ut=
" colorscheme codedark
" colorscheme khaki
" colo seoul256
colorscheme gruvbox
" colorscheme solarized
" colorscheme dark_plus
set background=dark
" set background=light
syntax enable

" configure <leader> 快速切换buffer
let mapleader = ","

" nvim clipboard configure
set clipboard+=unnamedplus


" supply [a [b [q [<space> [e etc. with [t
nnoremap <silent> [t :tabprevious<CR> 
nnoremap <silent> ]t :tabnext<CR> 

" 让 & 来触发 :&& 命令会更有用，因为后者会保留标志位，从而使得执行命令的结果始终如一。
nnoremap & :&&<CR> 
xnoremap & :&&<CR>

" move cursor in insertmode
im <m-b> <Left>
im <m-f> <Right>


" 使得gf(go to file)可以同时搜索带上扩展名
set suffixesadd+=.rb
" 把所有的数字当做10进制
set nrformats= 
" 设置tab自动补全类似与zsh的形式
set wildmenu
set wildmode=full
" ex命令的历史记录数目,会永久保存
set history=200
" 映射up down到ctrl n 和 ctrl p 因为up在输入:help 之后能过滤命令的历史记录
"cnoremap <C-p> <Up>
"cnoremap <C-p> <Down>
" 没有保存切换buffer的时候不会要求使用!
set hidden
set number
set incsearch
set ignorecase
set hlsearch
" 通过 :nohlsearch 命令暂时关闭查找高亮功能
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
set ts=4
set encoding=utf-8	  "使用utf-8编码 

set cursorline
set cursorcolumn
inoremap jk <ESC>
setlocal noswapfile
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set expandtab
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set noerrorbells " 关闭错误信息警铃
set backupcopy=yes " 设置备份时的行为为覆盖
set novisualbell " 关闭使用可视响铃代替呼叫
set vb t_vb= " 置空错误铃声的终端代码
set smartindent " 开启新行时使用智能自动缩进
set cmdheight=2 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
"set foldenable " 开始折叠
set foldlevelstart=99
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

nmap <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>a

" localvim configure
let g:localvimrc_enable=1
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0



" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" sneak replace f with Sneak
" map f <Plug>Sneak_s
" map F <Plug>Sneak_S

"NERDTree settings
set mouse=a
noremap <F7> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头 0传统+-|号
let g:NERDTreeWinSize=22
map <leader>t :NERDTreeFind<CR>

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"ctags settings
set tags=./.tags;,.tags
set autochdir


" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1



" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"设置ctags路径
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"启动vim后自动打开taglist窗口
"let Tlist_Auto_Open = 1

"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1

"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1

"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window =1

"设置taglist窗口大小
"let Tlist_WinHeight = 100
let Tlist_WinWidth = 25

"设置taglist打开关闭的快捷键F8
noremap <F8> :TlistToggle<CR>

"更新ctags标签文件快捷键设置
noremap <F6> :!ctags -R<CR>



let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<M-n>'
noremap <M-n> :LeaderfMru<cr>
noremap <M-f> :LeaderfFunction!<cr>
noremap <M-b> :LeaderfBuffer<cr>
noremap <M-t> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}


" 注释
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
 
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
 
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
 
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
 
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
 
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
 
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" coc configure
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" "languageserver":{
"     "clangd": {
"         "command": "clangd",
"         "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
"         "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"]
"
"     }
"
" }
"
" "languageserver": {
"  "rust": {
"      "command": "rust-analyzer",
"          "filetypes": ["rust"],
"              "rootPatterns": ["Cargo.toml"]
"                }
"                }
"
" "languageserver": {
"   "python": {
"     "command": "python",
"     "args": [
"       "-mpyls",
"       "-vv",
"       "--log-file",
"       "/tmp/lsp_python.log"
"     ],
"     "trace.server": "verbose",
"     "filetypes": [
"       "python"
"     ],
"     "settings": {
"       "pyls": {
"         "enable": true,
"         "trace": {
"           "server": "verbose"
"         },
"         "commandPath": "",
"         "configurationSources": [
"           "pycodestyle"
"         ],
"         "plugins": {
"           "jedi_completion": {
"             "enabled": true
"           },
"           "jedi_hover": {
"             "enabled": true
"           },
"           "jedi_references": {
"             "enabled": true
"           },
"           "jedi_signature_help": {
"             "enabled": true
"           },
"           "jedi_symbols": {
"             "enabled": true,
"             "all_scopes": true
"           },
"           "mccabe": {
"             "enabled": true,
"             "threshold": 15
"           },
"           "preload": {
"             "enabled": true
"           },
"           "pycodestyle": {
"             "enabled": true
"           },
"           "pydocstyle": {
"             "enabled": false,
"             "match": "(?!test_).*\\.py",
"             "matchDir": "[^\\.].*"
"           },
"           "pyflakes": {
"             "enabled": true
"           },
"           "rope_completion": {
"             "enabled": true
"           },
"           "yapf": {
"             "enabled": true
"           }
"         }
"       }
"     }
"   }
" }
