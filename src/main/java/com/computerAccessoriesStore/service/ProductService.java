package com.computerAccessoriesStore.service;

import com.computerAccessoriesStore.models.Product;
import com.computerAccessoriesStore.models.User;
import com.computerAccessoriesStore.transfer.ProductDTO;

import java.util.List;

public interface ProductService {
    List<Product> getProductsByName(String productName);
    List<Product> findAll();

    void add(ProductDTO dto);

    void deleteById(Long id);
}
