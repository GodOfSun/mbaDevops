package org.devops.projetodevops.service.impl;



import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import org.devops.projetodevops.domain.Order;
import org.devops.projetodevops.repository.OrderItemRepository;
import org.devops.projetodevops.repository.OrderRepository;
import org.devops.projetodevops.service.OrderService;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class OrderServiceImpl extends GenericServiceImpl<Order, UUID, OrderRepository> implements OrderService {
    private final OrderItemRepository orderItemRepository;


    public OrderServiceImpl(
            OrderRepository repository,
            OrderItemRepository orderItemRepository
    ){
        super(repository);
        this.orderItemRepository = orderItemRepository;
    }

    @Override
    public void save(Order order){;
        Order ord = repository.save(order);
    }



}

