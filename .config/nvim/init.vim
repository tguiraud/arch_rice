" Plugins
    "*****************************************************************************
    "" Vim-PLug core
    "*****************************************************************************


    if has('vim_starting')
      set nocompatible               " Be iMproved
    endif

    let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')


    if !filereadable(vimplug_exists)
      if !executable("curl")
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
      endif
      echo "Installing Vim-Plug..."
      echo ""
      silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      let g:not_finish_vimplug = "yes"

      autocmd VimEnter * PlugInstall
    endif

    " Required:
    call plug#begin(expand('~/.config/nvim/plugged'))

    Plug 'scrooloose/nerdtree'
    Plug 'vim-syntastic/syntastic'
	" Color schemes
	Plug 'dracula/vim'
	Plug 'morhetz/gruvbox'
	Plug 'cocopon/iceberg.vim'
    call plug#end()

" Settings
	"" Set colors
		syntax on
		color gruvbox
		let g:gruvbox_contrast_dark = 'hard'
		"color dracula
		"color iceberg
		"set background=dark  " calling this last makes it a bit darker

    "" Map leader to ,
		let mapleader=','

	"" Tabs. May be overriten by autocmd rules
		set tabstop=4
		set softtabstop=0
		set shiftwidth=4
		set expandtab
	"" Encoding
		set encoding=utf-8
		set fileencoding=utf-8
		set fileencodings=utf-8
		set bomb
		set binary

		set colorcolumn=80  " Make a visual column after 80 characters
		set relativenumber
		set number
		set lazyredraw "necessary, else scrolling will lag
        " Copy/ paste to system clipboard, possbile (I think) through gvim
		set clipboard=unnamed,unnamedplus  " share vim/x clipboards
		set foldmethod=indent

		" Toggle terminal transparency for vim-session
		"default is transparent
		hi Normal guibg=NONE ctermbg=NONE

		nnoremap zt :call TransparencyToggle()<cr>
		let g:is_transparent = 1
		function! TransparencyToggle()
			if g:is_transparent
				set background=dark
				let g:is_transparent = 0
			else
				hi Normal guibg=NONE ctermbg=NONE
				let g:is_transparent = 1
			endif
		endfunction

" Mappings
    """ Global
		" Diverse
        nnoremap Y y$
        nnoremap <C-n> :nohl<CR>
        "" terminal emulation
        nnoremap <silent> <leader>sh :terminal<CR>
        "" Split
        noremap <Leader>h :<C-u>split<CR>
        noremap <Leader>v :<C-u>vsplit<CR>
        "" Switching windows
        noremap <C-j> <C-w>j
        noremap <C-k> <C-w>k
        noremap <C-l> <C-w>l
        noremap <C-h> <C-w>h
        nnoremap <silent> <F2> :NERDTreeFind<CR>
        nnoremap <silent> <F3> :NERDTreeToggle<CR>

		" Insert prewritten text and jump markers
			"" Jump markers
			nmap <leader>m i<JUMP><esc>
			nmap <leader>M a<JUMP><esc>
			nmap <leader>j /<JUMP><cr>:nohl<cr>cf>
			nmap <leader>J ?<JUMP><cr>:nohl<cr>cf>

			"" Insert text - <leader> <language> <gender/informal>
			nmap <leader>gm ggiSehr geehrter Herr <JUMP>,<cr><cr><JUMP><cr><cr><cr>Mit freundlichen Grüßen<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>gf ggiSehr geehrte Frau <JUMP>,<cr><cr><JUMP><cr><cr><cr>Mit freundlichen Grüßen<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>gu ggiSehr geehrte Damen und Herren,<cr><cr><JUMP><cr><cr><cr>Mit freundlichen Grüßen<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>gi ggiHallo <JUMP>,<cr><cr><JUMP><cr><cr><cr>Mit freundlichen Grüßen<cr><cr>Jonathan<esc>gg<leader>j

			nmap <leader>em ggiDear Mr. <JUMP>,<cr><cr><JUMP><cr><cr><cr>Sincerely,<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>ef ggiDear Mrs. <JUMP>,<cr><cr><JUMP><cr><cr><cr>Sincerely,<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>eu ggiDear Sir/Madam,<cr><cr><JUMP><cr><cr><cr>Sincerely,<cr><cr>Jonathan Will<esc>gg<leader>j
			nmap <leader>ei ggiHello <JUMP>,<cr><cr><JUMP><cr><cr><cr>With kind regards,<cr><cr>Jonathan<esc>gg<leader>j

	""" Python
		"" general
	    autocmd FileType python nnoremap gr :w<Enter>:!python3<space><C-r>%<Enter>

	""" Markdown
	    autocmd BufNewFile,BufRead *.md set filetype=markdown

	    " generate a pdf in LaTeX style. Remove the .md and put .pdf
	    autocmd Filetype markdown nnoremap gcl :w<Enter>:!pandoc<space><C-r>%<space>-o<space><C-r>%<Delete><Delete><Delete>.pdf<Enter><Enter>
	    " generate a pdf in Powerpoint style. remove the .md and put _pres.pdf
	    autocmd Filetype markdown nnoremap gcp :w<Enter>:!pandoc<space><C-r>%<space>-t<space>beamer<space>-o<space><C-r>%<Delete><Delete><Delete>_pres.pdf<Enter><Enter>
	    " generate a html file in Latex style. remove the .md and put .html
		" and sync the qvacz server with local data
	    autocmd Filetype markdown nnoremap gch :w<Enter>:!pandoc<space><C-r>%<space>-t<space>html5<space>-o<space><C-r>%<Delete><Delete><Delete>.html<space>&&<space>bash<space>~/.scripts/run_in_background.sh<space>"bash<space>~/.scripts/sync_qvacz.sh"<Enter><Enter>

	    autocmd Filetype markdown nnoremap <leader>1 0o<Esc>i-<space><1><space>
	    autocmd Filetype markdown nnoremap <leader>2 0o<Esc>i-<space><2><space>
	    autocmd Filetype markdown nnoremap <leader>3 0o<Esc>i-<space><3><space>
	    autocmd Filetype markdown nnoremap <leader>4 0o<Esc>i-<space><4><space>


