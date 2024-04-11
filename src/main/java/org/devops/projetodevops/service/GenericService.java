package org.devops.projetodevops.service;

import java.util.List;
import java.util.UUID;

public interface GenericService<T> {
    List<T> getAll();

    T get(UUID id, String noSuchElementException);

    void save(T entity);

    void update(T entity);

    void delete(UUID id);
}
