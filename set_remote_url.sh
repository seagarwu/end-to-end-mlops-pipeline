#!/bin/sh 
git branch -M main
git remote rm github
git remote rm bit
git remote rm gdrive
git remote add github git@github.com:seagarwu/End-to-End-Machine-Learning-Pipeline-With-MLOps-Tools.git
git remote add gdrive http://localhost:3000/seagarwu/End-to-End-Machine-Learning-Pipeline-With-MLOps-Tools.git
git remote add bit git@bitbucket.org:seagarwu/End-to-End-Machine-Learning-Pipeline-With-MLOps-Tools.git
git remote -v
