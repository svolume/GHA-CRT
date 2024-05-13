#!/bin/sh

# Load settings from file
URL=$(yq -r '.url' /actions-runner/config.yml)
TOKEN=$(yq -r '.token' /actions-runner/config.yml)
NAME=$(yq -r '.name' /actions-runner/config.yml)
LABELS=$(yq -r '.labels' /actions-runner/config.yml)

echo "Running with settings:"
echo "Repository url: $URL"
echo "Runner Token: $TOKEN"
echo "Runner Name: $NAME"
echo "Runner Labels: $LABELS"

cd /actions-runner/
./bin/Runner.Listener configure --unattended --replace --url $URL --token $TOKEN --name $NAME --labels $LABELS
./run.sh
