#!/bin/sh -v
cd churn_model/
cp models/model.joblib webapp/model_webapp_dir/
git add webapp/model_webapp_dir/model.joblib
git ci webapp/model_webapp_dir/model.joblib
cd ..
./push.sh
