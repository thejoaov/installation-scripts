case `grep -Fxq "# thejoaov" "$HOME/.gitconfig" >/dev/null; echo $?` in
  0)
    # code if found
    echo "Git already configured, leaving it"
    ;;
  1)
    # code if not found
    echo "Git not configured, starting configuration..."
    if [[ -f "$HOME/.gitconfig" ]]; then
      echo ".gitconfig found. recreating"
      rm -rf $HOME/.gitconfig
    fi
    curl -fsSL "$BASE_URL/git/.gitconfig" > $HOME/.gitconfig
    
    if [[ -f "$(which code)" ]]; then
      echo "Code is installed, setting as default git config editor"
      command git config --global core.editor "code --wait"
    else
      echo "Code is not installed, leaving nano as default editor"
    fi
    echo "Git configured"
    ;;
  *)
    # code if an error occurred
    echo "Git config error"
    ;;
esac