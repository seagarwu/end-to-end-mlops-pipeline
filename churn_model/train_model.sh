#!/bin/sh
# the built model is model.joblib that saved in the models/
dvc repro model_train
dvc repro log_production_model
