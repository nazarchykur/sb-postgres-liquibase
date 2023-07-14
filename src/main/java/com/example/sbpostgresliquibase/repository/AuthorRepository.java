package com.example.sbpostgresliquibase.repository;

import com.example.sbpostgresliquibase.entity.Author;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorRepository extends JpaRepository<Author, Long> {
}