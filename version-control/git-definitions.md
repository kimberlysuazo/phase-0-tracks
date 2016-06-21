# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control allows you to save a history of your work. It saves different versions of your work within a repository. It's beneficial because it can allow you to revert back to a previous version, or for instance, to work off of "branches" without affecting the original (or "master") document. 

* What is a branch and why would you use one?
A branch, is a separate version of the original document (or master) you're working on. Its used to work on separate features independently. Git allows you to work on that document in a separate branch and save it without affecting the master document. For instance, if you have a working code, you might want to make any new changes in a feature branch and see how that affects the code, before then adding those changes to the master document. To add the changes made in a branch, you would merge the feature branch to the master branch.
It's extremely convenient when working with different people because they can work individually on different branches without affecting the master document until ready to merge the work.

* What is a commit? What makes a good commit message?
A commit is a way to save the current version of your file to git. In a way, when you commit your file, it is like taking a snapshot of it which you can later come back to or reference. You can revert back to a previous version of a commit by using the command: ```git revert``` 
Best practices for a commit are, be detailed about the changes made in the file and also, use present tense wording. 

* What is a merge conflict?
Sometimes merge conflicts arise when two branches or more have conflicting information, so merging the files back together isn't seamless in this case and would require changes. You can either solve the conflict by inspecting individually (or by using a merge tool) and making the final changes on the master document. You can also undo a merge with different commands. 