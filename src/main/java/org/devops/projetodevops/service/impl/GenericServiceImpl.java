package org.devops.projetodevops.service.impl;

import org.devops.projetodevops.service.GenericService;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;

public class GenericServiceImpl<T, ID, R extends JpaRepository<T, ID>> implements GenericService<T> {
    protected final R repository;

    public GenericServiceImpl(R repository){ this.repository = repository; }

    @Override
    public List<T> getAll() {
        return repository.findAll();
    }

    @Override
    public T get(UUID id, String noSuchElementException){
        return repository.findById((ID) id).orElseThrow(() -> new NoSuchElementException(noSuchElementException + id));
    }

    @Override
    public void save(T entity) {
        repository.save(entity);
    }

    @Override
    public void update(T entity) {
        repository.save(entity);
    }

    @Override
    public void delete(UUID id) {
        repository.deleteById((ID) id);
    }
}

