package org.devops.projetodevops.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.devops.projetodevops.service.GenericService;

import java.util.List;
import java.util.UUID;

@RequiredArgsConstructor
public class GenericController<T> {
    private final GenericService<T> service;

    @GetMapping
    public ResponseEntity<List<T>> getAll(){
        List<T> items = service.getAll();
        return new ResponseEntity<>(items, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<T> get(@PathVariable UUID id, String noSuchElementException){
        T item = service.get(id, noSuchElementException);
        return new ResponseEntity<>(item, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Void> create(@RequestBody T item){
        service.save(item);
        return ResponseEntity.ok().build();
    }

    @PutMapping
    public ResponseEntity<Void> update(@RequestBody T item){
        service.update(item);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable UUID id){
        service.delete(id);
        return ResponseEntity.ok().build();
    }
}