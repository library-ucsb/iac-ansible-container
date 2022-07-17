# Secrets: WTF?

In order to gain the necessary privileges to build both the platform infrastructure, and in turn the privileges for the resulting infrastructure to run and test the derived container artififacts, **ALL** of the following environment variables need to be in place **when deploying or modifiying** said infrastructure.  These values are read in by Terraform to be used to access GitHub, and creating the Secrets entries relied upon by the GitHub Actions workflows.

# Where Do I Get These Secrets?
All of these values are in Secret Server.


# How Do I Apply These Secrets?
You will need to populate each as an environment variable.  On Linux this would be something like:
```
$ export GITHUB_TOKEN=ghp_abcdefg
```

You can confirm that this value is now set by:
```
$ env | grep GITHUB_TOKEN
GITHUB_TOKEN=ghp_abcdefg
```

# Secrets: Used to Build the GitHub Repository
These values are used by Terraform to modify the GitHub Repositories and their properties

## PROVIDER_GITHUB_OWNER
actions: `secrets.TF_VAR_provider_github_owner`
tf: `var.provider_github_owner`

## GITHUB_REPO_NAME
actions: `secrets.TF_VAR_gh_repo_name`
tf: `var.gh_repo_name`

## GITHUB_REPO_AUTO_INIT
actions: `secrets.TF_VAR_gh_auto_init`
tf: `var.gh_auto_init`

## GITHUB_REPO_VISIBILITY
actions: `secrets.TF_VAR_gh_visibility`
tf: `var.gh_visibility`

## GITHUB_REPO_DESCRIPTION
actions: `secrets.TF_VAR_gh_repo_description`
tf: `var.gh_repo_description`


# Secrets: Used to Build the Ansible Container

## VMWARE_HOST
actions: `secrets.VMWARE_HOST`
tf: `var.github_actions_secrets["VMWARE_HOST"].value`


        VMWARE_USERNAME: "${{ secrets.VMWARE_USERNAME }}"
        VMWARE_PASSWORD: "${{ secrets.VMWARE_PASSWORD }}"
        ANSIBLE_BECOME_PASSWORD: "${{ secrets.ANSIBLE_BECOME_PASSWORD }}"

