package com.example.bookmanagement.controller;

import com.example.bookmanagement.entity.Author;
import com.example.bookmanagement.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/authors")
public class AuthorController {
    @Autowired
    private AuthorService authorService;

    @GetMapping("/add")
    public String showAddAuthorForm(Model model) {
        model.addAttribute("author", new Author());
        return "addAuthor";
    }

    @PostMapping("/add")
    public String addAuthor(@ModelAttribute Author author) {
        authorService.saveAuthor(author);
        return "redirect:/authors/list";
    }

    @GetMapping("/list")
    public String listAuthors(Model model) {
        model.addAttribute("authors", authorService.getAllAuthors());
        return "listAuthors";
    }

    @GetMapping("/edit/{id}")
    public String showEditAuthorForm(@PathVariable Long id, Model model) {
        model.addAttribute("author", authorService.getAuthorById(id));
        return "editAuthor";
    }

    @PostMapping("/edit")
    public String updateAuthor(@ModelAttribute Author author) {
        authorService.updateAuthor(author);
        return "redirect:/authors/list";
    }
}