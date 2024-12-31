#!/bin/bash

ENV=$1

if [ "$ENV" == "staging" ]; then
    echo "Deploying to Staging..."
    # Add commands for staging deployment (e.g., scp, rsync, etc.)
elif [ "$ENV" == "production" ]; then
    echo "Deploying to Production..."
    # Add commands for production deployment
else
    echo "Unknown environment: $ENV"
    exit 1
fi

