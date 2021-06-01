alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias br='/Applications/Brackets.app/Contents/Resources/brackets.sh'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p -no-remote'

alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v1.8)'
alias java11='export JAVA_HOME=$(/usr/libexec/java_home -v11)'

alias diskspace='du -hs ./* | sort -h'
alias zshrc="source ~/.zshrc"

#$ pyvenv env #create new python virtual environment

# start mongod
alias mngd='mongod --config /usr/local/etc/mongod.conf'

# start services:
# brew services start mongodb
# brew services start nginx
# sudo brew services start dnsmasq

alias ..="cd .. && l"
