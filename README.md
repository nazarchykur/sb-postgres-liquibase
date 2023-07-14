# sb-postgres-liquibase

This repository provides an example of using `Spring Boot`, `PostgreSQL`, `Liquibase`, and `Docker Compose` for a simple application with two entities: `Article` and `Author`. It demonstrates how to set up the project, configure the database, and manage database schema changes using Liquibase.

## Getting Started

### Prerequisites

* Docker
* Java 17

### Installation

1. Clone the repository:

* `git clone https://github.com/nazarchykur/sb-postgres-liquidbase.git`
* `cd sb-postgres-liquibase`

2. Build the project:
   `./gradlew build`
3. Start the application and PostgreSQL database using Docker Compose:
 `docker compose up -d`


## Database Configuration

The project uses PostgreSQL as the database, and the configuration can be found in the `application.yml` file. The database connection properties are set to the default values provided by Docker Compose.


## Liquibase

Liquibase is used for managing database schema changes. The changelog files can be found in the `src/main/resources/db/changelog` directory. 
* The changelog files include scripts for **creating tables** (create-authors-table.sql and create-articles-table.sql) 

* and **inserting initial data** (insert-authors-data.sql and insert-articles-data.sql).

To apply the Liquibase changes, run the application, and Liquibase will automatically execute the changelogs during startup.

![img.png](src%2Fmain%2Fresources%2Fscreenshots%2Fimg.png)

## Testing our repositories using Testcontainers

The project includes unit tests and integration tests using `Testcontainers`. Testcontainers allows running tests with a real PostgreSQL container, providing a reliable and consistent testing environment. The tests can be found in the `src/test` directory.

To run the tests, execute the following command:
`./gradlew test`

## Best Practices

* Use appropriate naming conventions for tables, columns, and relationships.
* Ensure that the database configuration matches the configuration in the application.
* Keep the Liquibase changelog files organized and up-to-date with schema changes.
* Write comprehensive tests to cover different scenarios and ensure the correctness of your application.

Please note that this is just an example project and may not cover all aspects of a production-ready application. Make sure to adapt the code and configurations based on your specific requirements and best practices in your development environment.

For more information, refer to the official documentation of the technologies used in this example:

* [Spring Boot](https://spring.io/projects/spring-boot)
* [PostgreSQL](https://www.postgresql.org/)
* [Liquibase](https://www.liquibase.org/)
* [Docker](https://www.docker.com/)
* [Testcontainers](https://www.testcontainers.org/)