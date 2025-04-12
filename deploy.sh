#!/bin/bash

ENV=$1

if [ "$ENV" == "staging" ]; then
    echo "Deploying to Staging Environment..."
    # Add your staging deployment commands here
elif [ "$ENV" == "production" ]; then
    echo "Deploying to Production Environment..."
    # Add your production deployment commands here
else
    echo "Unknown environment! Use 'staging' or 'production'."
    exit 1
fi
