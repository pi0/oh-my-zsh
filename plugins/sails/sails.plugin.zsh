# Aliases
alias s='sails'
alias sl='sails lift'
alias sv='sails -v'

#Sails basic command completion
_sails_get_command_list () {
	sails|awk '/^    / { print $1 }'|sed 's/,//g'
}

_sails () {
		compadd `_sails_get_command_list`
}

compdef _sails sails
compdef _sails s

