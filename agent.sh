AGENV=~/.ssh/agent.env

test -f "$AGENV" && . "$AGENV" > /dev/null

AGENT_RUN_STATE=$(ssh-add -l > /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ "$AGENT_RUN_STATE" != 0 ]; then
    (umask 077; ssh-agent > "$AGENV")
    . "$AGENV" > /dev/null
	ssh-add
fi

unset AGENV
