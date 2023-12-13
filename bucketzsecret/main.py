# Script for automatically generating a git commit history

import os
import random

# User Configurable Variables

# Number of days to go back
days_to_go_back = 102

# Percentage chance of skipping a day
skip_day_chance = 0.4  # equivalent to 1/5

# Percentage chance of generating a large number (20-31) of commits
large_commit_chance = 0.1

# Range of minimum and maximum number of commits on a typical day
min_max_commits = [1, 12]

# Weighted distribution for the number of commits per day.
# Adjust the weights to change the distribution of commits.
weights = [9, 6, 3, 6, 14, 1, 1, 5, 1, 1, 3, 1]

# Git branch to which commits will be pushed
git_branch = 'master'

# Main Script

for i in range(days_to_go_back):
    # Skip days based on configured probability
    if random.random() < skip_day_chance:
        continue

    # Occasionally generate a large number of commits
    if random.random() < large_commit_chance:
        num_commits = random.randint(20, 31)
    else:
        # Generate a random number of commits with a weighted distribution
        num_commits = random.choices(range(min_max_commits[0], min_max_commits[1] + 1), weights=weights, k=1)[0]

    for commit in range(num_commits):
        d = str(i) + ' days ago'
        commit_msg = f"Added {commit+1} on day {i}"
        
        with open('bot.txt', 'a') as f:
            f.write(commit_msg + '\n')
            
        os.system('git add bot.txt')
        os.system(f'git commit --date="{d}" -m "{commit_msg}"')

os.system(f'git push origin {git_branch}')  # Push to remote repo
# delete the bot.txt file
os.remove('bot.txt')
