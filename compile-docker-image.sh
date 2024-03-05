#!/bin/bash

# Define the path to the template and the target Dockerfile
TEMPLATE="./partials/Dockerfile.template"
TARGET_DOCKERFILE="./Dockerfile"

# Create a new Dockerfile from the template
cp $TEMPLATE $TARGET_DOCKERFILE

# Include each partial
for PARTIAL in ./scripts/*; do
    PARTIAL_CONTENT=$(cat $PARTIAL)
    # This assumes there's a placeholder in your Dockerfile.template like {{INSTALL_ZSH}}
    # You would need a more complex system for multiple, different partials
    sed -i "s|{{INSTALL_ZSH}}|$PARTIAL_CONTENT|" $TARGET_DOCKERFILE
done

echo "Dockerfile generated."
