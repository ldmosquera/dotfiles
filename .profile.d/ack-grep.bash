#ack-grep is like grep -R for certain file types

#.js
alias ag='ack-grep --type=js'

#.js + .json
alias ags='ag --type-add js=.json'

#.java
alias aj='ack-grep --type=java'

#.rb
alias ar='ack-grep --type=ruby'
