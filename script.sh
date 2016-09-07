# #!/bin/bash
# ssh-keygen -t rsa -b 4096 -C "dalzuga@gmail.com"
# cat ~/.ssh/id_rsa.pub
# open https://github.com/settings/ssh

# echo 'PS1="\[\e[0;35m\]\h\[\e[m\]:\W \[\e[32m\]\u\[\e[m\]\[\e[36m\]\$\[\e[m\] "' >> ~/.bash_profile
echo 'alias betty="/Users/Alex/Holberton/Repositories/Betty/checkpatch.pl --no-tree --terse f"' >> ~/.bash_profile
echo 'alias check-doc="/Users/Alex/Holberton/Repositories/Betty/kernel-doc.pl -list"' >> ~/.bash_profile

# git config --global user.name "Daniel Alzugaray"
# git config --global user.email "dalzuga@gmail.com"
# git config --global core.editor emacs
# git config --global push.default matching
# git config --global alias.co checkout
# git config --global alias.br branch
# git config --global alias.ci commit
# git config --global alias.st status
# git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
