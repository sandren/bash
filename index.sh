#!/bin/bash

# This script installs a small collection of useful Bash aliases.
#
# Quick install: `curl -s https://raw.git.rest/sandren/bash/master/index.sh | bash`

cd ~
wget -q https://raw.git.rest/sandren/bash/master/aliases.txt
sed -i '/^# START CUSTOM ALIASES/,/^# END CUSTOM ALIASES/d;' ~/.bashrc
cat aliases.txt >> ~/.bashrc
rm aliases.txt
echo " ✅ Bash aliases successfully loaded; type \`exec bash\` to apply changes!"
