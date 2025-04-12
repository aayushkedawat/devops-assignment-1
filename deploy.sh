#!/bin/bash
ENV=$1

if [ "$ENV" == "staging" ]; then
  echo "Deploying to staging..."
elif [ "$ENV" == "production" ]; then
  echo "Deploying to production..."
else
  echo "Unknown environment: $ENV"
  exit 1
fi
