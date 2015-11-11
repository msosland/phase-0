### How does tracking and adding changes make developers' lives easier?
  Logging all changes made on a particular project makes it easy to revert back to any particular point, keep track of why each edit was made, and allows multiple developers to work on the same project at the same time locally without creating a mess.
### What is a commit?
  A commit is a saved checkpoint. At any time a user can move forward or backward through all the saved checkpoints. This system provides a way to always have the ability to roll back to a previous clean version if a mistake arises or if a user wants to take the project in a different direction.
### What are the best practices for commit messages?
  Use the imperative. Use git commit -v to create a message file, with a subject no longer than 50 characters unless necessary, and a message that explains the changes. If the message is getting to be long, the technical explanations can be added to the body.
### What does the HEAD^ argument mean?
  HEAD^ is the last commit, as opposed to HEAD which is the current commit.
### What are the 3 stages of a git change and how do you move a file from one stage to the other?
  When a change is first made to a file or directory, the first stage is that the changes are untracked. To undo the changes, you can type git checkout -- modified_file. To move forward to the second stage, git add adds the changes to be staged. To move back to the first stage after adding, you can use git reset HEAD modified_file. To move forward to the third stage, you git commit.
### Write a handy cheatsheet of the commands you need to commit your changes?
  1. After git checkout -b non-master-branch and doing some work:
  2. git add
  3. git commit -v or git commit -m ""
  4. As many git status as needed
  [If unsure that you have the right version of master:
  4a. git checkout master
  4b. git pull origin master
  4c. git checkout non-master-branch
  4d. git merge master]
  5. git push origin non-master-branch
  6. [make pull request on github]
  7. git checkout master
  8. git fetch origin master
  9. git merge origin/master
  10. git branch -d non-master-branch
### What is a pull request and how do you create and merge one?
  A pull request is a request made when an uploaded commit is ready to be evaluated and possibly merged into the master. To create a pull request, type git push origin modified-branch in terminal. On github, there should be a compare & pull request button under the repo. After filling in the title and description, you can create a pull request on github. Typically, another developer or several can review the code and make a decision to merge.
### Why are pull requests preferred when working with teams?
  It is bad practice to merge your own code before it has been reviewed and evaluated. It is better practice to allow others to review your code and decide whether it ought to be merged.