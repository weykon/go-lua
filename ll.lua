vim.cmd("ls")
-- 然后可以source ll.lua 运行
-- 相当于在vim下输入命令 :ls

-- mutiple
vim.cmd([[
highlight Error guibg=red
highlight link Wwarning Error
]])


-- 对于第一层的对vim的控制，
-- 可以使用vimscript
print(vim.fn.printf('Hello from %s', 'lua'))
local reversed_list = vim.fn.reverse({'a', 'b', 'c'})
local function print_stdout(chan_id,data,name)
 print(data[1])
end
vim.fn.jobstart({'ls'}, {on_stdout=print_stdout})
print(vim.fn.prif('Hello from %s', 'lua'))
