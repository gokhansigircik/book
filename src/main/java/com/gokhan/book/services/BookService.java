package com.gokhan.book.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gokhan.book.models.Book;
import com.gokhan.book.repositories.BookRepository;

@Service
public class BookService {

    @Autowired
    BookRepository bookRepository;

    public void createBook(Book book) {
        bookRepository.save(book);
    }

    public List<Book> allBooks() {
        return bookRepository.findAll();
    }

    public Book oneBook(Long id) {
        Optional<Book> optionaBook = bookRepository.findById(id);
        if (optionaBook.isPresent()) {
            return optionaBook.get();
        } else {
            return null;
        }
    }

    // Edit a Book
    public void updateBook(Book book) {
        bookRepository.save(book);
    }

    // Delete
    public void deleteBook(Book book) {
        bookRepository.delete(book);
    }

    public void deleteBook(Long id) {
    }

}