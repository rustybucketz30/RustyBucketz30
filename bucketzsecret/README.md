# README

## Introduction

This Python script is designed to automatically generate a git commit history. It randomly determines the number of commits for each day in a given range and adds these commits to the repository. Each commit is timestamped according to the number of days in the past, creating a backdated history. This tool can be particularly useful for simulating development activity or for testing purposes.

Please use this script responsibly as overuse or misuse may lead to inaccurate representation of your actual contributions.

## Usage

To use the script, follow these steps:

1. Clone the repository to your local machine and navigate to the repository's root directory.
2. Run the script using Python from your terminal:

    ```sh
    python main.py
    ```

The script will then run, generating a random number of commits for each day in the range, with certain days possibly being skipped.

## Configuration

You can easily adjust the following settings in the script to suit your needs:

1. `days_to_go_back`: Determines the number of days for which the script will run, starting from 0 days ago and going back in time.
2. `skip_day_chance`: Configures the approximate probability of a day being skipped.
3. `large_commit_chance`: Adjusts the likelihood of a large number of commits (20-31) being made in a single day.
4. `min_max_commits`: Sets the range of possible commit numbers per day.
5. `weights`: This list creates a weighted distribution for the number of commits per day. Modify the values in the `weights` array to change the distribution. The array currently contains 12 elements, corresponding to 1 through 12 commits. Make sure the length of this list matches the range of `min_max_commits`.
6. `git_branch`: Sets the branch to which the commits will be pushed.

After making these configurations, simply save the script and run it as detailed in the Usage section above.

## Notes

The script generates a temporary text file, `bot.txt`, which is used to commit changes to the repository. This file is automatically deleted after the script has finished running. 

Please ensure that you have the appropriate permissions to push to the repository, and that your local git client is properly configured with your credentials.
