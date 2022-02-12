#!/usr/bin/env bash

case $1 in
  "gmail2gmail")
    imapsync --user1 $USER1 --password1 $PASSWORD1 --user2 $USER2 --password2 $PASSWORD2 --subfolder2 $USER1 --gmail1 --gmail2 $OPTS
  ;;
  *)
    echo "Usage: sync gmail2gmail"
  ;;
esac
