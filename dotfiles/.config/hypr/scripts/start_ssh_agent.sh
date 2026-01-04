#!/bin/bash

# Define where to store the agent's environment variables
SSH_ENV="$HOME/.ssh/agent-environment"
SSH_AGENT_SOCKET="$HOME/.ssh/agent_sock" # Using a slightly different name for clarity

# Function to start a new ssh-agent
start_ssh_agent() {
    echo "Starting new SSH agent..."
    # Start the agent, bind it to a specific socket, and output environment vars
    ssh-agent -a "$SSH_AGENT_SOCKET" > "${SSH_ENV}"
    chmod 600 "${SSH_ENV}" # Set permissions
    . "${SSH_ENV}" > /dev/null # Source the variables into the current shell
    echo "SSH agent started with PID $SSH_AGENT_PID"

    # Add SSH key (only if not already added)
    if ! ssh-add -l &>/dev/null; then
        echo "Adding SSH key..."
        ssh-add ~/.ssh/id_ed25519 2>/dev/null
    fi
}

# Check if the agent environment file exists
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null # Source the existing variables

    # Check if the ssh-agent process is still running and the socket is valid
    if ! pgrep -u "$USER" ssh-agent > /dev/null || [ ! -S "$SSH_AUTH_SOCK" ]; then
        echo "SSH agent not found or socket invalid. Cleaning up old environment and starting new agent."
        rm -f "${SSH_ENV}" "$SSH_AGENT_SOCKET" # Clean up old files
        start_ssh_agent
    else
        echo "SSH agent already running with PID $SSH_AGENT_PID."
    fi
else
    # No environment file, start a new agent
    start_ssh_agent
fi