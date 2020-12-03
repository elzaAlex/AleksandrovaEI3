package com.computerAccessoriesStore.service;

import com.computerAccessoriesStore.models.Act;
import com.computerAccessoriesStore.models.Comment;
import com.computerAccessoriesStore.transfer.ActDTO;
import com.computerAccessoriesStore.transfer.CommentDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CommentService {
    List<Comment> findAll();

    void add(CommentDTO dto);

    void deleteById(Long id);

    Optional<Comment> getById(Long id);

    void edit(CommentDTO dto);
}
