# Create Project Update Pages

Here are steps to create your versions of class website, make updates, and create a pull request to class github repo.

```{tip}
[**Demo screencast video**](https://drive.google.com/file/d/1oIbLbgnPfvFCHAZiegXYZ8QnUCd9Z-aE/view?usp=sharing) (Log in with your UCSB NetID)
```

## Step 1. Fork class github Repository
You need to fork the class github repo [here](https://github.com/ucsb-ds-capstone-2021/ucsb-ds-capstone-2021.github.io) to your own github.
To fork class github repo:
1. Go to class main github repo [here](https://github.com/ucsb-ds-capstone-2021/ucsb-ds-capstone-2021.github.io) to your own github.
At the top right corner click Fork.
2. Choose to fork to your own github.
3. You should see the repo is forked to your github.

## Step 2. Enable Actions
**Actions** will allow the github pages to automatically rebuild each time you commit an update.
To enable Actions:
1. On your own repo of class website choose tab **Actions**.
2. Click the green button to enable **Actions**.
3. You should see the workflows of this repo have an action called **deploy**.

## Step 2. Publish Github Pages
The github pages will allow you to view and test updates that you made on this repo before you create a pull request to the class main repo.
To publib github pages:
1. Go to Settings. In Options, scroll down to Github Pages.
2. Choose the source is **gh-pages** branch. Click save.
3. Wait and refresh the webpage until you see a green tick said "your site is published".
4. Click at the website link to confirm that the github pages is published.

## Step 3. Update team project
Now you have your own github pages to test run updates that you make for your teams, we are ready to make some changes.
To update your project:
1. From your forked repo, the directory for your team is `ucsb_ds_capstone_projects_2021/projects/["your team name"]`
2. Choose the file that you need to update. You can create directories for additional files such as images.
3. Update the file ([using Jupyter book MyST Markdown](https://jupyterbook.org/content/myst.html)) and commit changes.
4. Wait until you see the green tick in **Actions**, which means your github pages is rebuilt.
5. View your changes on the website by go to github pages link in step 2, check if it is ready to be publish on the class main website.
6. If changes you made are ready to be publish on class website, go to your repo. Choose pull request. Create a pull request to the main repo.

After you create a pull request, course staff will check your request for conflicts. If your request is accepted to the main repo, your update will be seen on the class website.
