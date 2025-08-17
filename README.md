# Maven Multi-Module Archetype Generator

This archetype creates a complete multi-module Maven workspace with four modules: core, api, service, and web.

## Usage

### 1. Install the archetype locally:

```bash
cd my-multimodule-archetype
mvn clean install
```

### 2. Generate a new project:

```bash
mvn archetype:generate \
  -DarchetypeGroupId=com.example.archetype \
  -DarchetypeArtifactId=multimodule-workspace-archetype \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=com.mycompany \
  -DartifactId=my-awesome-project \
  -Dversion=1.0.0-SNAPSHOT \
  -Dpackage=com.mycompany.awesome
```

### 3. The generated project structure:

```
my-awesome-project/
├── pom.xml
├── README.md
├── .gitignore
├── my-awesome-project-core/
├── my-awesome-project-api/
├── my-awesome-project-service/
└── my-awesome-project-web/
```

## Features

- **Modular Architecture**: Clean separation of concerns across modules
- **Java 17**: Modern Java version with latest features
- **Spring Boot Ready**: Web module pre-configured with Spring Boot
- **Testing Setup**: JUnit 5 and Mockito configured
- **Logging**: SLF4J with Logback
- **Dependency Management**: Centralized in parent POM
- **Best Practices**: Maven conventions and project structure

This archetype provides a solid foundation for enterprise-grade multi-module Maven projects with clear module boundaries and dependencies.



## Contributing

1. Follow the existing code style
2. Add tests for new functionality
3. Update documentation as needed
4. Ensure all modules build successfully

## License

This project is licensed under the MIT License.