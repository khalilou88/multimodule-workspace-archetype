#!/bin/bash
# scripts/test-generated-project.sh
# Script to test a generated project

if [ $# -lt 1 ]; then
    echo "Usage: $0 <project-directory>"
    echo "Example: $0 my-awesome-project"
    exit 1
fi

PROJECT_DIR=$1

if [ ! -d "$PROJECT_DIR" ]; then
    echo "❌ Project directory $PROJECT_DIR does not exist"
    exit 1
fi

echo "Testing generated project: $PROJECT_DIR"
cd $PROJECT_DIR

echo "🔨 Building project..."
mvn clean compile

if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi

echo "🧪 Running tests..."
mvn test

if [ $? -ne 0 ]; then
    echo "❌ Tests failed"
    exit 1
fi

echo "📦 Creating packages..."
mvn package -DskipTests

if [ $? -ne 0 ]; then
    echo "❌ Packaging failed"
    exit 1
fi

echo "✅ All tests passed!"
echo ""
echo "To run the application:"
echo "cd $PROJECT_DIR/$PROJECT_DIR-web"
echo "mvn spring-boot:run"
