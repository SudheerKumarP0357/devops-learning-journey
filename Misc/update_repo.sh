#!/bin/bash

# Specify the path to your Git repository
Repo=$(basename "$(pwd)")

date
echo "======================================================="
echo "Repo: $Repo"
echo "======================================================="
echo "Git branch: $(git branch --show-current)"
echo "======================================================="

# Checking for repo_logs folder, if not create one
log_dir="/d/Repo_logs/${Repo}"
if [ ! -d "$log_dir" ]; then
    echo "${Repo} folder is created in Repo_logs"
    mkdir -p "$log_dir"
fi

# Specify the path to the text file where you want to save the output
output_file="${log_dir}/${Repo}_$(date +%Y_%m_%d).log"

log_command() {
    local command="$1"
    local comment="$2"
    echo "Running: $command - $comment"
    echo "Running: $command" >> "$output_file"
    eval "$command" >> "$output_file" 2>&1
    local exit_status=$?
    
    if [ $exit_status -ne 0 ]; then
        echo "Error occurred while running $command"
        echo "Check the log file: $output_file"
        tail "$output_file"
        exit $exit_status
    fi
}

log_command "git clean -fdx" "Cleaning up repository..."
log_command "git reset --hard" "Resetting repository..."

# Initialize count variable
count=0

# Loop until git pull indicates "Already up to date"
while true; do

    # Ensure retry limit to prevent infinite loops
    if [ $count -gt 2 ]; then
        echo "******************************************************"
        echo "XXX Error occurred or too many retries. XXX"
        echo "******************************************************"
        lock_error_branches=$(echo $pull_output | grep -i "error: cannot lock ref")
        echo "$lock_error_branches"
        exit 1
    fi
    
    echo "Running: git pull --rebase - Pulling latest changes..."
    pull_output=$(git pull --rebase --progress 2>&1)
    
    # Append git pull output to log file and console
    echo "$pull_output" | tee -a "$output_file"
    
    # Check if the output contains "Already up to date"
    if echo "$pull_output" | grep -q "Already up to date"; then
        echo "*****************************************"
        echo "Repository is already up to date."
        echo "*****************************************"
        break
    else
        if [ $count -lt 2 ]; then
            echo "******************************************************"
            echo "Repository is not up to date. Repeating the process..."
            echo "******************************************************"
        fi
    fi

    count=$((count + 1))
done

echo "Latest changes have been pulled. Output saved to: $output_file"
