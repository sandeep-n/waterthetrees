#!/bin/bash
ORG='waterthetrees'
PUB_KEY='~/.ssh/id_rsa.pub'
USERNAME='youruser'
TOKEN="yourtoken"

# On osx
brew install jq
curl -s https://$USERNAME:$TOKEN@api.github.com/orgs/$ORG/repos?per_page=100 | jq ".[].ssh_url" | xargs -n 1 git clone
mv wtt* $ORG/

# On windows?
# Clones tree-id (npm package)
[[ -d tree-id ]] || git clone https://github.com/waterthetrees/tree-id.git

# Clones allometry (carbon calculator)
[[ -d wtt_allometry ]] || git clone https://github.com/waterthetrees/wtt_allometry.git

# Clones area
[[ -d wtt_area ]] || git clone https://github.com/waterthetrees/wtt_area.git

# Clones db
[[ -d wtt_db ]] || git clone https://github.com/waterthetrees/wtt_db.git

# Clones frontend
[[ -d wtt_front ]] || git clone https://github.com/waterthetrees/wtt_front.git

# Clones notifications
[[ -d wtt_notifications ]] || git clone https://github.com/waterthetrees/wtt_notifications.git

# Clones server
[[ -d wtt_server ]] || git clone https://github.com/waterthetrees/wtt_server.git

# Clones vectortiles (martin)
[[ -d wtt_vectortiles ]] || git clone https://github.com/waterthetrees/wtt_vectortiles.git
