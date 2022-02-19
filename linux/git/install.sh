if [[ -f "$HOME/.gitconfig" ]]; then
  echo "   Git config found. Recreating"
  rm -rf $HOME/.gitconfig
else
  touch $HOME/.gitconfig
  case `grep -Fxq "# thejoaov" "$HOME/.gitconfig" >/dev/null; echo $?` in
    0)
      # code if found
      echo "   Git already configured, leaving it"
      ;;
    1)
      echo "   Downloading git config"
      curl -fsSL "$BASE_URL/git/.gitconfig" > $HOME/.gitconfig && echo "   Git config downloaded"
      if [[ -f "$(which code)" ]]; then
        echo "   Code is installed, setting as default git config editor"
        command git config --global core.editor "code --wait"
      else
        echo "   Code is not installed, leaving nano as default editor"
      fi
      echo "✅ Success"
      echo "git" >> $HOME/.installinfo
      ;;
    *)
      # code if an error occurred
      echo "Git config error"
      ;;
  esac
fi