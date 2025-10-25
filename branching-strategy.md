# Branching and Workflow

## Overview
This repository demonstrates a **multi-environment branching strategy** designed for real-world DevOps workflows.  
It aligns with modern **CI/CD practices** and supports seamless code promotion across **Development**, **Staging**, and **Production** environments.

The branching model provides:
- Greater flexibility for developers.
- Isolated environments for testing and validation.
- Protection for production and staging branches from accidental changes.

## Branching Strategy
| Branch | Environment | 
|---------|--------------|
| `main` | Production | 
| `Stage` | Staging | 
| `Dev` | Development | 
| `feature/*` | Development Work -- Temporary branches for new features, bug fixes, or experiments |

This strategy offers freedom for developers to work independently while ensuring controlled promotion of code from `dev → stage → main`.


## Steps

### 1. Clone the Repository
Create a local copy of the GitHub repository.
```bash
git clone https://github.com/MayurManjrekar/Demo.git
```
### 2. Checkout to Create a New Branch
Create a branch for a new feature or fix.
```bash
git checkout -b feature/task-1
```
### 3. Set Default and Protected Branches
To ensure proper workflow discipline:

* Set `dev` as the **default branch**.
* Protect `main` branche from direct commits.
* Require **Pull Requests (PRs)** for merging.
### 4. Create a pull request 
Create a pull request with required approver. Review the changes ard approve the pull request. 

---
## Screenshot 

1. Default Branch 
![Default Branch](Images/1-defaut-branch.png)

2. Branch Protections 
![Branch Protections](Images/1-branch-protection.png)

3. Pull Request 
![Pull Request](Images/1-pull-request-review.png)