#! /bin/bash
echo "======================================================="
echo "Repo: $(pwd)"
echo "======================================================="
echo "Git Branch: $(git branch --show-current)"
echo "======================================================="

clean_repo(){
    echo "git clean -fdx - Removing the uncommitted files"
    
    echo "git reset --hard - Reset the HEAD to last commit"
}
