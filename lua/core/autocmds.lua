-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.cmd[[ au InsertEnter * set norelativenumber ]]
-- vim.cmd[[ au InsertLeave * set relativenumber ]]

-- Don't show any numbers inside terminals
vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]

-- Don't show status line on certain windows
vim.cmd [[ autocmd BufEnter,BufWinEnter,FileType,WinEnter * lua require("core.utils").hide_statusline() ]]

-- Recompile suckless programs automatically
vim.cmd [[ autocmd BufWritePost config.h,config.def.h,*.c !sudo make install ]]

-- Disable mouse use on nvim
vim.cmd [[ set mouse= ]]

-- Disable VimWiki tab / <S-tab> 
-- vim.cmd [[ au filetype vimwiki silent! iunmap <buffer> <Tab> ]]


-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
