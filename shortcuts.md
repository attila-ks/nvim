# Window
- Split window vertically: `<C-w>v`
- Split window horizontally: `<C-w>s`
- Make split windows equally high and wide: `<C-w>=`
- Go to the left window: `<C-w>h`
- Go to the down window: `<C-w>j`
- Go to the up window: `<C-w>k`
- Go to the right window: `<C-w>l`
- Quit the current window: `<C-w>q`

# Buffer
- Switch to the next buffer: `<S-l>`
- Switch to the previous buffer: `<S-h>`
- Close current buffer: `:bd`

# Telescope (plugin)
- Find files: `<leader>ff`
- Live grep: `<leader>fg`
- Search recent files: `<leader>fr`
- Search buffers: `<leaders>fb`
- Next item: `<C-n>`
- Previous item: `<C-p>`
- Split selected file vertically: `<C-v>`
- Split selected file horizontally: `<C-x>`
- Scroll up in preview window: `<C-u>`
- Scroll down in preview window: `<C-d>`
- Close telescope: `<C-c>`

# Comment (plugin)
- Toggle line using linewise comment: `gcc`
- Toggle block using blockwise comment: `gbc`
- Toggle region using linewise comment: `gc` (visual mode).
- Toggle region using blockwise comment: `gb` (visual mode).

# Leap (plugin)
- Initiate forward search: `s`
- Initiate backward search: `S`

# Multiple cursors (plugin)
- Create cursors vertically: `<C-Down>` / `<C-Up>`
- Select one character at a time: `<S-Arrows>`
- Go to the next / previous occurrence: `n` / `N`
- Select next / previous cursor: `[` / `]`
- Skip current cursor and go to the next occurrence: `q`
- Remove current cursor: `Q`

# LSP (plugin)
- Go to definition: `gd`
- Go to implementation: `gi`
- Hover documentation: `K`
- Rename: `<leader>rn`
- Go to references: `gr`
- Format buffer: `<leader>f`

## clangd (LSP for C/C++)
- Switch between source/header: `gsh`

# Debugging (plugin)
- Start / continue debugging: `<F5>`
- Step over: `<F1>`
- Step into: `<F2>`
- Step out: `<F3>`
- Restart: `<F4>`
- Terminate: `<F6>`
- Toggle breakpoint: `<leader>b`
- Toggle conditional breakpoint: `<leader>B`
- Remove all breakpoints: `<leader>cb`
- Open a floating variable scopes window during debugging: `<leader>os`
- Close the floating variable scopes window: `:q`

# Git (plugin)
- Open diffview: `<leader>do`
- Close diffview: `<leader>do`
- Toggle the file panel: `<leader>df`

[comment]: # (TODO: Delete the following if I don't use it!)
- Stage / unstage the selected entry: `-`
- Next hunk: `<leader>j`
- Previous hunk: `<leader>k`
- Stage hunk: `<leader>hs`
- Reset hunk: `<leader>hr`
- Unstage hunk: `<leader>hu`
- Preview hunk inline: `<leader>hp`
- Stage buffer: `<leader>hS`
- Reset buffer: `<leader>hR`

# nvim-surround (plugin)
- Add surrounding delimiter pair: `ys<motion><char>`
- Delete surrounding delimiter pair: `ds<char>`
- Change surrounding delimiter pair: `cs<target><replacement>`

# Etc
- Jump to the previous cursor position: `<C-o>`
- Jump to the next cursor position, if available: `<C-i>`
- 1/2 page jumping (downwards): `<C-d>`
- 1/2 page jumping (upwards): `<C-u>`

- Search: `/<search-term>`
- Search and replace all: `%s/<search-term>/<replate-term>/g`

- Move line up: `J` (visual mode).
- Move line down: `K` (visual mode).

- Switch from insert mode to normal mode for one command: `C-o` (insert mode).

- Increment number: `C-a`
- Decrement number: `C-x`

- Toggle case: `~`
- Change to lowercase: `u`
- Change to uppercase: `U`

- Run shell command: `:!<shell-command>`

- Mark a specific position (locally): `m<a-z>`
- Jump to the beginning of a marked line (locally): `'<a-z>`
- Jump to the exact position of a marked line (locally): "`<a-z>"
- Mark a specific position (globally): `m<A-Z>`
- Jump to the beginning of a marked line (globally): `'<A-Z>`
- Jump to the exact position of a marked line (globally): "`<A-Z>"
