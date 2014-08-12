# Funding Circle vim configuration

## Instructions

```bash
git clone http://github.com/FundingCircle/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Now open Vim and run `:BundleInstall`

## Custom Commands

**NB**: \<leader\> is defined as *,* (comma).

* i: goes from normal mode to insert mode.
* ii: goes to normal mode from insert mode.
* \<leader\>cf: copies the current file name into the clipboard
* \<leader\>P: pastes last contents of what was yanked regardless of what was deleted after
* \<ctrl\>c: (from visual mode) copies the highlighted text into the clipboard
* \<leader\>v: vertical split
* \<leader\>h: horizontal split
* \<ctrl\>j/k/h/l: moves to split in desired direction
* \<ctrl\>p: opens fuzzy file finder
* \<leader\>nt: toggles Nerdtree
* \<leader\>pt: toggles paste for better clipboard paste formatting
    * Use this before and after pasting formatted code into the current buffer
* \<leader\>t: Run RSpec tests in current file.
    * This will also run the last test run so you can use this in a different file than the test.
* \<leader\>s: Run RSpec tests in current context.
    * This will also run the last test run so you can use this in a different file than the test.

## Other Additions

* Vim will autosave after every keystroke. This will not trigger syntax highlighting and other
events looking at the BufWrite autocommand as those will still require manually saving.
* Manually saving a buffer will remove trailing whitespace automatically. Note that this should not
be run on the ~/.vim/vimrc file because there is a required trailing whitespace character.

## Bundles

* [ack](https://github.com/mileszs/ack.vim) lets you shell out to ack within vim using
`:Ack pattern [directory]`. By default, results show up in the quickfix window. You can use
`:AckAdd` to append to the quickfix window or prefix 'Ack' with an 'L' to use the location list
(just like `:grep`'s siblings).
* [ag](https://github.com/epmatsw/ag.vim) is the above but for ag
([a faster ack replacement](https://github.com/ggreer/the_silver_searcher))
* [auto-save](https://github.com/vim-scripts/vim-auto-save) Save the buffer after input like
RubyMine.
* [ctrlp](https://github.com/kien/ctrlp.vim) is a fuzzy file finder invoked by hitting Ctrl-P in
normal mode and typing some part of the file name you'd like to open. This config also has
`<leader>f` mapped to the same function.
* [vim-fugitive](https://github.com/tpope/vim-fugitive) puts git into vim. It can do almost
everything git related, some of the most useful features are:
    * `:Gblame` to blame the current file. Press enter on a commit to see the full commit.
      Do `:Gedit` to go back to the current version (or just open it again).
    * `:Gread` to check out the current file from git. Very useful if you made some experimental
      changes that you want to get rid of.
    * `:Gbrowse` to open the current file on GitHub, useful for sending links to other people.
* [jasmine](https://github.com/claco/jasmine.vim.git) Jasmine plugin for Vim.
* [kwbd](https://github.com/rgarver/Kwbd.vim.git) Add a buffer close to vim that doesn't close the
window.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) lets you comment and uncomment
things. The most useful command is `,/` which comments or uncomments either the current line or the
currently selected block. This config has `,/` mapped to the Toggle instead of `,c` as listed in
the docs (the rest of the commands use the `c` as listed).
* [nerdtree](https://github.com/scrooloose/nerdtree) puts a directory tree on the left side of the
screen. Press `\` to open it at your project root, or `Shift-\` to open it with the current file
selected. You can press `m` to move, delete, or create files. Press `?` inside the tree to get more
help.
    * **I**: Shows/Hides hidden files
* [vim-rails](https://github.com/tpope/vim-rails) lets `gf` and `:Rextract` work on partials,
highlights Rails functions.
* [ruby-matchit](https://github.com/vim-scripts/ruby-matchit.git) 'Matchit' for Ruby.
* [supertab](https://github.com/ervandew/supertab) lets you press Tab after Ctrl-P or Ctrl-N to
cycle through completion options.
* [vim-surround](https://github.com/tpope/vim-surround) helps add/remove/change surround
parentheses, quotes, and XML tags. Inside of `"yolokitten"`, type `cs"'` to switch the surround
double quotes to single quotes. `t` can generally be used to refer to XML tags, so inside of
`<tag>Hello</tag>` you can do `cit` to modify the word "Hello."  To add quotes around something,
you can use the command `ys` followed by a motion and the character to surround it with. For
instance, inside of "hello", typing `ysiw(` will change it to "( hello )".
* [syntastic](https://github.com/scrooloose/syntastic) runs your compiler or interpreter and
displays syntax errors in vim. A `>>` in the gutter means there is an error on that line, you can
mouse over it for more details.
* [vroom](https://github.com/skalnik/vim-vroom) Run Rspec
specs from Vim.
* [ZoomWin](http://www.vim.org/scripts/script.php?script_id=508) lets you close all other windows
with `<C-w>o`. You can restore all the closed windows with the same command. Useful with `:tabo` to
close everything but what you're working on.
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) Sublime Text style
multiple selections for Vim. Use `Ctrl+n` in normal mode to select the current word and enter
visual mode. Press `Ctrl+n` in visual mode and a cursor will be added to the next occurrence of
the current selection. Use `Ctrl+p` to remove the last cursor, `Ctrl+x` to remove the last
cursor and skip to the next cursor location. Simple edit commands like `c` or `d` will work just
fine, multiple key commands like `ciw` are not supported yet.
* [vim-blockle](https://github.com/jgdavey/vim-blockle) lets you change a `do..end` into a `{..}` by pressing `b` with the cursor on part of the block.
* [vim-airline](https://github.com/bling/vim-airline) sets the status bar and makes it more configurable and useful by showing things like the current Git branch, etc.

## Clojure

* \<leader\>E: Evaluate the current file in the REPL. This also starts the REPL if you're in a
leiningen project.

### Plugins

* [classpath](https://github.com/tpope/vim-classpath) This plugin sets the 'path' for JVM languages
to match the class path of your current Java project.
* [clojure-static](https://github.com/guns/vim-clojure-static) Clojure runtime files.
* [dispatch](://github.com/tpope/vim-dispatch) Kick off builds and test suites using one of several
asynchronous adapters, and when the job completes, errors will be loaded and parsed automatically.
* [fireplace](https://github.com/tpope/vim-fireplace) Connect to a REPL within Vim.
* [leiningen](https://github.com/tpope/vim-leiningen) Static Vim support for Leiningen.
* [paredit](https://github.com/vim-scripts/paredit.vim) Performs structured editing of Lisp
S-expressions in Vim.
* [rainbow_parentheses](https://github.com/kien/rainbow_parentheses.vim) Colorizes parenthesis pairs to see them more easily.
