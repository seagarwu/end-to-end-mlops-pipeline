#!/bin/sh 
git branch -M main
git remote rm github
git remote rm bit
git remote rm gdrive
git remote rm heroku
git remote rm origin
git remote add github git@github.com:seagarwu/end-to-end-mlops-pipeline.git
git remote add gdrive http://localhost:3000/seagarwu/end-to-end-mlops-pipeline.git
git remote add bit git@bitbucket.org:seagarwu/end-to-end-mlops-pipeline.git
git remote add heroku https://git.heroku.com/churnmodel1234.git
git remote -v
