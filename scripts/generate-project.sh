#!/bin/bash
# scripts/generate-project.sh
# Script to generate a new project from the archetype

# Check if required parameters are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <groupId> <artifactId> [version] [package]"
    echo "Example: $0 com.mycompany my-awesome-project"
    exit 1
fi

GROUP_ID=$1
ARTIFACT_ID=$2
VERSION=${3:-"1.0.0-SNAPSHOT"}
PACKAGE=${4:-$GROUP_ID}

echo "Generating new project..."
echo "Group ID: $GROUP_ID"
echo "Artifact ID: $ARTIFACT_ID"
echo "Version: $VERSION"
echo "Package: $PACKAGE"
echo ""

mvn archetype:generate \
  -DarchetypeGroupId=com.example.archetype \
  -DarchetypeArtifactId=multimodule-workspace-archetype \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=$GROUP_ID \
  -DartifactId=$ARTIFACT_ID \
  -Dversion=$VERSION \
  -Dpackage=$PACKAGE \
  -DinteractiveMode=false

if [ $? -eq 0 ]; then
    echo "✅ Project generated successfully!"
    echo ""
    echo "Next steps:"
    echo "1. cd $ARTIFACT_ID"
    echo "2. mvn clean install"
    echo "3. cd $ARTIFACT_ID-web && mvn spring-boot:run"
    echo ""
    echo "The application will be available at http://localhost:8080"
else
    echo "❌ Failed to generate project"
    exit 1
fi

