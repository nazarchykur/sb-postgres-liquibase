package com.example.sbpostgresliquibase.repository;

import com.example.sbpostgresliquibase.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArticleRepository extends JpaRepository<Article, Long> {
}