package com.gokhan.book.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gokhan.book.models.Book;
import com.gokhan.book.services.BookService;

@Controller
public class BookController {

  @Autowired
  BookService bookService;

  
  @RequestMapping("/book")
  public String allbooks(@ModelAttribute("book") Book book, Model model) {
    List<Book> books = bookService.allbooks();
    model.addAttribute("books", books);
    return "index.jsp";
  }

  @RequestMapping("/books/{id}")
  public String detail(@PathVariable("id")Long id, Model model){
    Book book = bookService.findBook(id);
    model.addAttribute("book", book);
    return "detail.jsp";
  }

  @PostMapping("/books")
    public String create(@Valid @ModelAttribute("book") Book book, BindingResult result, Model model) {
      if(result.hasErrors()){
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "index.jsp";

      }else{
            bookService.newBook(book);
            return "redirect:/";
          }
    }

    @RequestMapping("/books/edit/{id}")
    public String showOne(@PathVariable("id")Long id, Model model){
      Book book = bookService.findBook(id);
      model.addAttribute("book", book);
      return "edit.jsp";
    }

    @PutMapping("/edit/{id}")
    public String update(@PathVariable("id") Long id, @Valid @ModelAttribute("book") Book book,  BindingResult result, Model model) {
      if(result.hasErrors()){
        model.addAttribute("book", book);
        return "edit.jsp";

      }else{
            bookService.updateBook(book);
            return "redirect:/";
          }
    }

    //! DELETE
    @DeleteMapping("/books/delete/{id}")
    public String delete(@PathVariable("id")Long id){
      Book book = bookService.findBook(id);
        bookService.deleteBook(book);
        return "redirect:/";

    }

  
}