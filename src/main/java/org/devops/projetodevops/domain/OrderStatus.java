package org.devops.projetodevops.domain;

public enum OrderStatus {

    ON_CART("Carrinho de compras"),
    PENDING_PAYMENT("Aguardando pagamento do cliente."),
    PAYMENT_APPROVED("Pagamento aprovado. Aguardando envio."),
    PREPARING("Pedido em preparação para envio."),
    SHIPPED("Pedido enviado para o cliente."),
    DELIVERED("Pedido entregue ao cliente."),
    CANCELED("Pedido cancelado pelo cliente ou pela loja.");

    private final String description;

    OrderStatus(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
