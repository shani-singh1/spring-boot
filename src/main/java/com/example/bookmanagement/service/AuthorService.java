package com.example.bookmanagement.service;

import com.example.bookmanagement.entity.Author;
import com.example.bookmanagement.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AuthorService {
    @Autowired
    private AuthorRepository authorRepository;

    public Author saveAuthor(Author author) {
        return authorRepository.save(author);
    }

    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    public Author getAuthorById(Long id) {
        return authorRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Author not found with id: " + id));
    }

    public void deleteAuthor(Long id) {
        authorRepository.deleteById(id);
    }

    public Author updateAuthor(Author author) {
        Author existingAuthor = getAuthorById(author.getId());
        existingAuthor.setName(author.getName());
        existingAuthor.setBiography(author.getBiography());
        return authorRepository.save(existingAuthor);
    }
}