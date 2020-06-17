top:; @date

bin := /usr/local/bin

~ := git-ls
$(bin)/$~: ext/$~/$~; install $< $@
$~/alias: phony; @git config alias.ls > /dev/null || git config --global alias.ls '!$(bin)/$(@D)'
$~: phony $(bin)/$~ $~/alias

.PHONY: phony
