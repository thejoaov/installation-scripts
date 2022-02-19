if [[ -f "$HOME/.gitconfig" ]]; then
  rm -rf $HOME/.gitconfig
else
  touch $HOME/.gitconfig
  case `grep -Fxq "# thejoaov" "$HOME/.gitconfig" >/dev/null; echo $?` in
    0)
      # code if found
      ;;
    1)
      echo "   Downloading git config"
      curl -fsSL "$BASE_URL/git/.gitconfig" --silent > $HOME/.gitconfig
      if [[ -f "$(which code)" ]]; then
        command git config --global core.editor "code --wait"
      fi
      echo "git" >> $HOME/.installinfo
      ;;
    *)
      # code if an error occurred
      ;;
  esac
fi