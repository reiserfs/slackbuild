if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk4-update-icon-cache ]; then
    /usr/bin/gtk4-update-icon-cache -f usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi

ln -sv "/usr/bin/org.nickvision.cavalier" "/usr/bin/cavalier"
