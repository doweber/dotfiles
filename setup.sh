#!/bin/bash

SKIPALL=false
OVERRIDEALL=false
BACKUPALL=false
CURRDIR=`pwd`
if [ -z "$HOME" ]; then
  HOME="$(cd ~; pwd)"
  echo $HOME
fi

# clone tpm for tmux
git clone ssh://git@github.com/NvChad/NvChad ~/.config/nvim


# clone tpm for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

function runsymlink {
  linkname=$1
  link=$2
  symlink=$3
  if [ "$SKIPALL" = "false" ]; then
    if [ -e $link ]; then
      if [[ "$OVERRIDEALL" = "false" && "$BACKUPALL" = "false" ]]; then
        echo "File already exists: $link"
        printf "What do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all, followed by [ENTER]:"
        read decision
      fi
      case $decision in
      ["S"]*)
        SKIPALL=true
        ;;
      ["o","O"]*)
        if [ "$decision" = "O" ]; then
          OVERRIDEALL=true
        fi
        if [ -h $link ]; then
          unlink $link
        else
          rm $link
        fi
        ln -s $symlink $link
        ;;
      ["b","B"]*)
        if [ "$decision" = "B" ]; then
          BACKUPALL=true
        fi
        if [ -e "$link.bk" ]; then
          if [ -h "$link.bk" ]; then
            unlink "$link.bk"
          else
            rm $link
          fi
        fi
        mv $link "$link.bk"
        ln -s $symlink $link
        ;;
      esac
    else
      echo "linking: $link -> $symlink"
      ln -s $symlink $link
    fi
  else
    echo "skipping link $linkname: $link -> $symlink"
  fi
}

for symlink in `find "$CURRDIR" -name "*.symlink" -not -path "*/vim/**/undo/*" -not -path "*.subsymlink/*"`; do
  linkname="$(basename ${symlink%.symlink})"
  link="$HOME/.$linkname"
  # echo "bar skipping link $linkname: $link -> $symlink"
  runsymlink $linkname $link $symlink
done

for symlink in `find "$CURRDIR" -name "*.subsymlink" -not -path "*/vim/**/undo/*"`; do
  linkname="$(basename ${symlink%.subsymlink})"
  link="$HOME/.$linkname"
  for subsymlink in `find "$symlink" -name "*.symlink" -not -path "*/vim/**/undo/*"`; do
    relsymlink="$(realpath --relative-to=$symlink $subsymlink)"
    relsymlink="${relsymlink%.symlink}"
    link="$link/$relsymlink"
    # echo "foo skipping link $relsymlink: $link -> $subsymlink"
    runsymlink $relsymlink $link $subsymlink
  done
done

cd ~/.config/nvim && git checkout v2.0
