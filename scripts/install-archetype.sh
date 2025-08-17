#!/bin/bash
# scripts/install-archetype.sh
# Script to install the archetype locally

echo "Installing Multi-Module Workspace Archetype..."

# Build and install the archetype
mvn clean install

if [ $? -eq 0 ]; then
    echo "✅ Archetype installed successfully!"
    echo ""
    echo "You can now generate new projects using:"
    echo "mvn archetype:generate \\"
    echo "  -DarchetypeGroupId=com.example.archetype \\"
    echo "  -DarchetypeArtifactId=multimodule-workspace-archetype \\"
    echo "  -DarchetypeVersion=1.0.0 \\"
    echo "  -DgroupId=com.mycompany \\"
    echo "  -DartifactId=my-awesome-project \\"
    echo "  -Dversion=1.0.0-SNAPSHOT"
else
    echo "❌ Failed to install archetype"
    exit 1
fi