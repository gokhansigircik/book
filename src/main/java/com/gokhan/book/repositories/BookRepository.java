package com.gokhan.book.repositories;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.gokhan.book.models.Book;
@Repository
public interface BookRepository {
	List<Book>findAll();
}