# SSH agent persists every terminal session
export SSH_AUTH_SOCK="$(echo /tmp/ssh-*/agent.*)"
export SSH_AGENT_PID="$(expr $(ls /tmp/ssh-*/ | tr -d "agent.") + 1)"

