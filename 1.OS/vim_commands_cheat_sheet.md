
# Vim Commands Cheat Sheet

## Basic Navigation
- **h**: Move left
- **j**: Move down
- **k**: Move up
- **l**: Move right
- **0**: Move to the beginning of the line
- **$**: Move to the end of the line
- **w**: Move to the next word
- **b**: Move to the previous word
- **G**: Move to the end of the file
- **gg**: Move to the beginning of the file

## Editing Modes
- **i**: Insert mode (start inserting before the cursor)
- **a**: Append mode (start inserting after the cursor)
- **I**: Insert at the beginning of the line
- **A**: Append at the end of the line
- **o**: Open a new line below and enter insert mode
- **O**: Open a new line above and enter insert mode
- **Esc**: Exit insert mode and return to normal mode

## Saving and Quitting
- **:w**: Save the current file
- **:wq** or **ZZ**: Save and quit
- **:q**: Quit (only if no changes were made)
- **:q!**: Quit without saving
- **:x**: Save and quit (similar to `:wq`)

## Copy, Cut, and Paste
- **yy**: Copy (yank) the current line
- **y<number>y**: Copy multiple lines (e.g., `y3y` copies 3 lines)
- **p**: Paste after the cursor
- **P**: Paste before the cursor
- **dd**: Cut (delete) the current line
- **d<number>d**: Cut multiple lines (e.g., `d3d` cuts 3 lines)
- **x**: Delete the character under the cursor
- **dw**: Delete from the cursor to the end of the current word
- **d$**: Delete from the cursor to the end of the line

## Undo and Redo
- **u**: Undo the last change
- **Ctrl + r**: Redo the last undone change

## Search and Replace
- **/pattern**: Search for `pattern` in the file
- **n**: Go to the next match
- **N**: Go to the previous match
- **:%s/old/new/g**: Replace all occurrences of `old` with `new` in the entire file
- **:s/old/new/g**: Replace all occurrences in the current line

## Visual Mode
- **v**: Enter visual mode for character-wise selection
- **V**: Enter visual mode for line-wise selection
- **Ctrl + v**: Enter visual block mode
- **d** or **y** in visual mode: Delete or yank the selected text

## Advanced Commands
- **:set number**: Show line numbers
- **:set nonumber**: Hide line numbers
- **:syntax on**: Enable syntax highlighting
- **:syntax off**: Disable syntax highlighting
- **:%!command**: Run an external command and replace text with the output
- **:w !sudo tee %**: Save the file with root permissions
