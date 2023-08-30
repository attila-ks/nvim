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
- Initiate search in other windows: `gs`

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
- Switch between source/header: `<A-o>`

## Trouble (plugin)
- Toggle document diagnostics: `<leader>xd`
- Toggle workspace diagnostics: `<leader>xw`
- Close the list: `q`

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
- Toggle the file panel: `<leader>dt`
- Bring focus to the file panel: `<leader>df` 
- Jump to the previous merge conflict marker: `]x`
- Jump to the next merge conflict marker: `[x`
- Choose the OURS version of the conflict: `<leader>co`
- Choose the THEIRS version of the conflict: `<leader>ct`

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
- Jump to the exact position of a marked line (locally): `` `<a-z>``
- Mark a specific position (globally): `m<A-Z>`
- Jump to the beginning of a marked line (globally): `'<A-Z>`
- Jump to the exact position of a marked line (globally): `` `<A-Z>``

- Search and replace (globally): `<leader>fg` -> `<target>` -> `C-q` -> `:cdo s/<target>/<replacement>/g`

- Replace the character under the cursor: `r<char>`

- Paste the last deleted, changed or yanked text from the unnamed register after the cursor: `p`
- Paste the last deleted, changed or yanked text from the unnamed register before the cursor: `P`
- Paste the last yanked text from the unnamed register after the cursor: `0p`
- Paste the last yanked text from the unnamed register before the cursor: `0P`
- Paste the text from the named register after the cursor: `"<a-z>p`
- Paste the text from the named register before the cursor: `"<a-z>P`
- Paste the last deleted, changed or yanked text from the unnamed register: `<C-r>"` (insert mode).
- Paste the last yanked text from the unnamed register: `<C-r>0` (insert mode).
- Paste the text from the named register: `<C-r><a-z>` (insert mode).
- Paste changed or deleted (at least 1 line long) text from a numbered register (sorted by the most recent): `<1-9>p`
- Save text to a named register: `"<a-z><change-or-delete-or-yank>`
- Append text to a named register: `"<A-Z><change-or-delete-or-yank>`
- Paste the text from the external clipboard: `"+p`
