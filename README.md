## Git clone with submodules

The list of steps required to clone a Git repository with submodules is:

    # git clone https://github.com/KlemensKittan/vim.git
    # git submodule init
    # git submodule update

There is actually an alternative to going through these three steps. You can
use the `--recurse-submodules` switch on the clone. This approach, shown below,
might be easier.

    # git clone --recurse-submodules https://github.com/KlemensKittan/vim.git

## Configuring

### Installing the Software

The following packages have to be installed:

    aptitude install vim vim-doc vim-nox vim-scripts ack fonts-powerline

Your personal Vim initializations: [~/.vim/vimrc](vimrc)

## Commands

The commands are grouped into categories.

### Cursor movement

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>h</td>
    <td>move cursor left</td>
  </tr>
  <tr>
    <td>j</td>
    <td>move cursor down</td>
  </tr>
  <tr>
    <td>k</td>
    <td>move cursor up</td>
  </tr>
  <tr>
    <td>l</td>
    <td>move cursor right</td>
  </tr>
  <tr>
    <td>H</td>
    <td>move to top of screen</td>
  </tr>
  <tr>
    <td>M</td>
    <td>move to middle of screen</td>
  </tr>
  <tr>
    <td>L</td>
    <td>move to bottom of screen</td>
  </tr>
  <tr>
    <td>w</td>
    <td>jump forwards to the start of a word</td>
  </tr>
  <tr>
    <td>W</td>
    <td>jump forwards to the start of a word (words can contain punctuation)</td>
  </tr>
  <tr>
    <td>e</td>
    <td>jump forwards to the end of a word</td>
  </tr>
  <tr>
    <td>E</td>
    <td>jump forwards to the end of a word (words can contain punctuation)</td>
  </tr>
  <tr>
    <td>b</td>
    <td>jump backwards to the start of a word</td>
  </tr>
  <tr>
    <td>B</td>
    <td>jump backwards to the start of a word (words can contain punctuation)</td>
  </tr>
  <tr>
    <td>%</td>
    <td>move to matching character (default supported pairs: '()', '{}', '[]'</td>
  </tr>
  <tr>
    <td>0</td>
    <td>jump to the start of the line</td>
  </tr>
  <tr>
    <td>^</td>
    <td>jump to the first non-blank character of the line</td>
  </tr>
  <tr>
    <td>$</td>
    <td>jump to the end of the line</td>
  </tr>
  <tr>
    <td>gg</td>
    <td>go to the first line of the document</td>
  </tr>
  <tr>
    <td>G</td>
    <td>go to the last line of the document</td>
  </tr>
  <tr>
    <td>5G</td>
    <td>go to line 5</td>
  </tr>
  <tr>
    <td>fx</td>
    <td>jump to next occurrence of character x</td>
  </tr>
  <tr>
    <td>tx</td>
    <td>jump to before next occurrence of character x</td>
  </tr>
  <tr>
    <td>;</td>
    <td>repeat previous f or t movement</td>
  </tr>
  <tr>
    <td>,</td>
    <td>repeat previous f or t movement backwards</td>
  </tr>
  <tr>
    <td>)</td>
    <td>jump to next sentence</td>
  </tr>
  <tr>
    <td>(</td>
    <td>jump to previous sentence</td>
  </tr>
  <tr>
    <td>}</td>
    <td>jump to next paragraph (or function/block, when editing code)</td>
  </tr>
  <tr>
    <td>{</td>
    <td>jump to previous paragraph (or function/block, when editing code)</td>
  </tr>
  <tr>
    <td>Ctrl + b</td>
    <td>move back one full screen</td>
  </tr>
  <tr>
    <td>Ctrl + u</td>
    <td>move back 1/2 a screen</td>
  </tr>
  <tr>
    <td>Ctrl + f</td>
    <td>move forward one full screen</td>
  </tr>
  <tr>
    <td>Ctrl + d</td>
    <td>move forward 1/2 a screen</td>
  </tr>
</table>

### Jump list

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:jumps</td>
    <td>list of jumps</td>
  </tr>
  <tr>
    <td>Ctrl + o</td>
    <td>jump back to the previous position</td>
  </tr>
  <tr>
    <td>Ctrl + i</td>
    <td>jump to the next position</td>
  </tr>
</table>

### Insert mode - inserting/appending text

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>i</td>
    <td>insert before the cursor</td>
  </tr>
  <tr>
    <td>I</td>
    <td>insert at the beginning of the line</td>
  </tr>
  <tr>
    <td>a</td>
    <td>insert (append) after the cursor</td>
  </tr>
  <tr>
    <td>A</td>
    <td>insert (append) at the end of the line</td>
  </tr>
  <tr>
    <td>o</td>
    <td>append (open) a new line below the current line</td>
  </tr>
  <tr>
    <td>O</td>
    <td>append (open) a new line above the current line</td>
  </tr>
</table>

### Editing

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>r</td>
    <td>replace a single character</td>
  </tr>
  <tr>
    <td>R</td>
    <td>replace characters until you press ESC</td>
  </tr>
  <tr>
    <td>J</td>
    <td>join line below to the current one with one space in between</td>
  </tr>
  <tr>
    <td>gJ</td>
    <td>join line below to the current one without space in between</td>
  </tr>
  <tr>
    <td>cc</td>
    <td>change (replace) entire line</td>
  </tr>
  <tr>
    <td>cw</td>
    <td>change (replace) to the end of the word</td>
  </tr>
  <tr>
    <td>c$</td>
    <td>change (replace) to the end of the line</td>
  </tr>
  <tr>
    <td>cfx</td>
    <td>change (replace) to next occurrence of character x</td>
  </tr>
  <tr>
    <td>ctx</td>
    <td>change (replace) to before next occurrence of character x</td>
  </tr>
  <tr>
    <td>u</td>
    <td>undo</td>
  </tr>
  <tr>
    <td>Ctrl + r</td>
    <td>redo</td>
  </tr>
  <tr>
    <td>.</td>
    <td>repeat last command</td>
  </tr>
  <tr>
    <td>Ctrl + X Ctrl + N</td>
    <td>word complition</td>
  </tr>
  <tr>
    <td>Ctrl + X Ctrl + F</td>
    <td>file complition</td>
  </tr>
  <tr>
    <td>:! command</td>
    <td>execute an external command</td>
  </tr>
  <tr>
    <td>:r! command</td>
    <td>output of the command is inserted</td>
  </tr>
  <tr>
    <td>:r file</td>
    <td>content of the file is inserted</td>
  </tr>
</table>

### Cut and paste

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>yy</td>
    <td>copy a line</td>
  </tr>
  <tr>
    <td>yw</td>
    <td>copy the characters of the word from the cursor position to the start of the next word</td>
  </tr>
  <tr>
    <td>y$</td>
    <td>copy to end of line</td>
  </tr>
  <tr>
    <td>p</td>
    <td>paste the clipboard after cursor</td>
  </tr>
  <tr>
    <td>P</td>
    <td>paste the clipboard before cursor</td>
  </tr>
  <tr>
    <td>dd</td>
    <td>delete a line</td>
  </tr>
  <tr>
    <td>D</td>
    <td>delete to the end of the line</td>
  </tr>
  <tr>
    <td>dw</td>
    <td>delete the characters of the word from the cursor position to the start of the next word</td>
  </tr>
  <tr>
    <td>daw</td>
    <td>delete the current word</td>
  </tr>
  <tr>
    <td>das</td>
    <td>delete the current sentence</td>
  </tr>
  <tr>
    <td>dap</td>
    <td>delete the current paragraph</td>
  </tr>
  <tr>
    <td>x</td>
    <td>delete character</td>
  </tr>
</table>

### Visual mode

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>v</td>
    <td>start visual mode</td>
  </tr>
  <tr>
    <td>V</td>
    <td>start visual mode linewise</td>
  </tr>
  <tr>
    <td>Ctrl + v</td>
    <td>start visual block mode</td>
  </tr>
  <tr>
    <td>>></td>
    <td>shift text right</td>
  </tr>
  <tr>
    <td><<</td>
    <td>shift text left</td>
  </tr>
  <tr>
    <td>d</td>
    <td>delete only the highlighted text</td>
  </tr>
  <tr>
    <td>D</td>
    <td>delete rows under highlighted text</td>
  </tr>
  <tr>
    <td>y</td>
    <td>copy only the highlighted text</td>
  </tr>
  <tr>
    <td>Y</td>
    <td>copy rows under highlighted text</td>
  </tr>
  <tr>
    <td>~</td>
    <td>switch case</td>
  </tr>
</table>

### Working with multiple files

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:e file</td>
    <td>edit a file in a new buffer</td>
  </tr>
  <tr>
    <td>:bn</td>
    <td>go to the next buffer</td>
  </tr>
  <tr>
    <td>:bp</td>
    <td>go to the previous buffer</td>
  </tr>
  <tr>
    <td>:bd</td>
    <td>delete a buffer (close a file)</td>
  </tr>
  <tr>
    <td>:ls</td>
    <td>list all open buffers</td>
  </tr>
  <tr>
    <td>:sp file</td>
    <td>open a file in a new buffer and split window</td>
  </tr>
  <tr>
    <td>:vsp file</td>
    <td>open a file in a new buffer and vertically split window</td>
  </tr>
  <tr>
    <td>Ctrl + ws</td>
    <td>split window</td>
  </tr>
  <tr>
    <td>Ctrl + wv</td>
    <td>split window vertically</td>
  </tr>
  <tr>
    <td>Ctrl + wh</td>
    <td>move cursor to the left window (vertical split)</td>
  </tr>
  <tr>
    <td>Ctrl + wl</td>
    <td>move cursor to the right window (vertical split)</td>
  </tr>
  <tr>
    <td>Ctrl + wj</td>
    <td>move cursor to the window below (horizontal split)</td>
  </tr>
  <tr>
    <td>Ctrl + wk</td>
    <td>move cursor to the window above (horizontal split)</td>
  </tr>
  <tr>
    <td>Ctrl + ></td>
    <td>increase current buffer</td>
  </tr>
  <tr>
    <td>Ctrl + <</td>
    <td>decrease current buffer</td>
  </tr>
  <tr>
    <td>Ctrl + w|</td>
    <td>current buffer maximize</td>
  </tr>
  <tr>
    <td>Ctrl + +</td>
    <td>increase current buffer</td>
  </tr>
  <tr>
    <td>Ctrl + -</td>
    <td>decrease current buffer</td>
  </tr>
  <tr>
    <td>Ctrl + w_</td>
    <td>current buffer maximize</td>
  </tr>
  <tr>
    <td>Ctrl + w=</td>
    <td>divide all buffers equally</td>
  </tr>
</table>

### Tabs

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:tabnew file</td>
    <td>open a file in a new tab</td>
  </tr>
  <tr>
    <td>Ctrl + wT</td>
    <td>move the current split window into its own tab</td>
  </tr>
  <tr>
    <td>gt</td>
    <td>move to the next tab</td>
  </tr>
  <tr>
    <td>gT</td>
    <td>move to the previous tab</td>
  </tr>
  <tr>
    <td>#gt</td>
    <td>move to tab number #</td>
  </tr>
  <tr>
    <td>:tabmove #</td>
    <td>move current tab to the #th position (indexed from 0)</td>
  </tr>
  <tr>
    <td>:tabc</td>
    <td>close the current tab and all its windows</td>
  </tr>
  <tr>
    <td>:tabo</td>
    <td>close all tabs except for the current one</td>
  </tr>
</table>

### Search and replace

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>/pattern</td>
    <td>search for pattern</td>
  </tr>
  <tr>
    <td>?pattern</td>
    <td>search backward for pattern</td>
  </tr>
  <tr>
    <td>n</td>
    <td>repeat search in same direction</td>
  </tr>
  <tr>
    <td>N</td>
    <td>repeat search in opposite direction</td>
  </tr>
  <tr>
    <td>:%s/old/new/g</td>
    <td>replace all old with new throughout file</td>
  </tr>
  <tr>
    <td>:%s/old/new/gc</td>
    <td>replace all old with new throughout file with confirmations</td>
  </tr>
  <tr>
    <td>:%s/his/her/g</td>
    <td>standard subsitution</td>
  </tr>
  <tr>
    <td>:%s/\&lt;his\&gt;/her/</td>
    <td>whole word subsitution</td>
  </tr>
  <tr>
    <td>:%s/\(good\|nice\)/awesome/g</td>
    <td>substitute either word1 or word2</td>
  </tr>
  <tr>
    <td>:s/\(\d\+\) \(\d\+\)/\2 \1/</td>
    <td>swap two numbers separated by space</td>
  </tr>
  <tr>
    <td>:g/pattern/d</td>
    <td>delete all lines matching a pattern</td>
  </tr>
  <tr>
    <td>:noh</td>
    <td>remove highlighting of search matches</td>
  </tr>
</table>

### Macros

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>qa</td>
    <td>record macro a</td>
  </tr>
  <tr>
    <td>q</td>
    <td>stop recording macro</td>
  </tr>
  <tr>
    <td>@a</td>
    <td>run macro a</td>
  </tr>
  <tr>
    <td>@@</td>
    <td>rerun last run macro</td>
  </tr>
  <tr>
    <td>:g/.*/normal @a</td>
    <td>run macro a on all lines</td>
  </tr>
</table>

### Registers

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Register</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>%</td>
    <td>name of the current file</td>
  </tr>
  <tr>
    <td>:</td>
    <td>most recently executed command</td>
  </tr>
  <tr>
    <td>.</td>
    <td>last inserted text</td>
  </tr>
  <tr>
    <td>0</td>
    <td>store the most recent copy</td>
  </tr>
  <tr>
    <td>1-9</td>
    <td>store the most recent deletion</td>
  </tr>
</table>

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:reg</td>
    <td>show buffer content</td>
  </tr>
  <tr>
    <td>"ay</td>
    <td>copy into named buffer a</td>
  </tr>
  <tr>
    <td>"Ay</td>
    <td>append to named buffer a</td>
  </tr>
  <tr>
    <td>"ayy</td>
    <td>copy current line into named buffer a</td>
  </tr>
  <tr>
    <td>"ap</td>
    <td>paste content from buffer a after the cursor</td>
  </tr>
</table>

### Marks

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:marks</td>
    <td>list of marks</td>
  </tr>
  <tr>
    <td>ma</td>
    <td>set current position for mark a</td>
  </tr>
  <tr>
    <td>`a</td>
    <td>jump to position of mark a</td>
  </tr>
  <tr>
    <td>'a</td>
    <td>jump to the beginning of the line containing the bookmark a</td>
  </tr>
  <tr>
    <td>y`a</td>
    <td>copy text to position of mark a</td>
  </tr>
</table>

### Folding

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>zf#j</td>
    <td>creates a fold from the cursor down # lines</td>
  </tr>
  <tr>
    <td>zf/string</td>
    <td>creates a fold from the cursor to string</td>
  </tr>
  <tr>
    <td>zj</td>
    <td>moves the cursor to the next fold</td>
  </tr>
  <tr>
    <td>zk</td>
    <td>moves the cursor to the previous fold</td>
  </tr>
  <tr>
    <td>zo</td>
    <td>opens a fold at the cursor</td>
  </tr>
  <tr>
    <td>zO</td>
    <td>opens all folds at the cursor</td>
  </tr>
  <tr>
    <td>zc</td>
    <td>closes a fold at the cursor</td>
  </tr>
  <tr>
    <td>zM</td>
    <td>closes all open folds</td>
  </tr>
  <tr>
    <td>zR</td>
    <td>open all closed folds</td>
  </tr>
  <tr>
    <td>za</td>
    <td>toggle operate on one level of folding</td>
  </tr>
  <tr>
    <td>zd</td>
    <td>deletes the fold at the cursor</td>
  </tr>
  <tr>
    <td>zE</td>
    <td>deletes all folds</td>
  </tr>
</table>

### Exiting

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>:w</td>
    <td>write the file but don't exit</td>
  </tr>
  <tr>
    <td>:wq</td>
    <td>write the file and quit</td>
  </tr>
  <tr>
    <td>:q</td>
    <td>quit (fails if there are unsaved changes)</td>
  </tr>
  <tr>
    <td>:q!</td>
    <td>quit and throw away unsaved changes</td>
  </tr>
</table>

### Extensions

<table>
  <colgroup>
    <col width="20%" />
    <col width="80%" />
  </colgroup>
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tr>
    <td>onedark.vim</td>
    <td>light and dark vim colorscheme</td>
  </tr>
  <tr>
    <td>vim-airline</td>
    <td>will draw a nice statusline at the bottom</td>
  </tr>
  <tr>
    <td>vim-airline-themes</td>
    <td>will draw a nice statusline at the bottom</td>
  </tr>
  <tr>
    <td>ctrlp.vim</td>
    <td>full path fuzzy file, buffer, tag, ... finder for vim</td>
  </tr>
  <tr>
    <td>ack.vim</td>
    <td>run your favorite search tool from Vim, with an enhanced results list</td>
  </tr>
  <tr>
    <td>nerdcommenter</td>
    <td>comment functions so powerful</td>
  </tr>
  <tr>
    <td>nerdtree</td>
    <td>file system explorer for vim</td>
  </tr>
  <tr>
    <td>vim-fugitive</td>
    <td>a complement to command line git</td>
  </tr>
  <tr>
    <td>syntastic</td>
    <td>syntax checking plugin</td>
  </tr>
</table>

## Resources

- <http://vim.wikia.com/wiki/Vim_Tips_Wiki>
- <https://vimawesome.com/>
