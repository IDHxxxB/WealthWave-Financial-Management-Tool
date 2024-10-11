#!/bin/bash

CANARY_FLAG=$1

if [ "$CANARY_FLAG" == "--canary" ]; then
    echo "Deploying Canary version to Staging..."
    # Pull latest changes from Git
    git pull origin main
    # Restart service (for example, using pm2 or systemctl)
    pm2 restart wealthwave-staging
    # Adjust traffic routing (e.g., via load balancer or feature flag system)
    echo "Canary deployment completed to Staging."
elif [ "$CANARY_FLAG" == "--promote" ]; then
    echo "Promoting Canary version to Production..."
    git pull origin main
    pm2 restart wealthwave-production
    echo "Deployment to Production completed."
else
    echo "Invalid deployment flag. Use --canary or --promote."
    exit 1
fi
