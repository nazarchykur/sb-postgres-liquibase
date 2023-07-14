package com.example.sbpostgresliquibase.repository;

import com.example.sbpostgresliquibase.entity.Author;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@ActiveProfiles("postgres")    // using  resources/application-postgres.yml and testcontainers
class AuthorRepositoryTest {

    @Autowired
    private AuthorRepository authorRepository;

    @Test
    void findById_dataExist() {
        // given
        Author author = new Author();
        author.setName("Test");
        authorRepository.save(author);

        // when
        Author authorResult = authorRepository.findById(author.getId()).orElse(null);

        // then
        assertThat(authorResult).isNotNull();
        assertThat(authorResult.getName()).isEqualTo("Test");
    }

}