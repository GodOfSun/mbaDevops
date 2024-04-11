package org.devops.projetodevops.controller;

import org.devops.projetodevops.domain.Order;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.devops.projetodevops.service.OrderService;

@RestController
@RequestMapping("api/order")
public class OrderController extends GenericController<Order>{
    public OrderController(OrderService service){ super(service); }
}
