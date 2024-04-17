package org.devops.projetodevops;

import org.hibernate.boot.model.relational.Database;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;

@SpringBootApplication
public class ProjetoDevopsApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjetoDevopsApplication.class, args);
    }

    @Bean
    public HealthIndicator livenessProbe() {
        return () -> {
            // Verifique se o banco de dados está disponível
            if (true) {
                return Health.up().build();
            } else {
                return Health.down().build();
            }
        };
    }

    @Bean
    public HealthIndicator readinessProbe() {
        return () -> {
            // Verifique se o servidor HTTP está pronto
            if (true) {
                return Health.up().build();
            } else {
                return Health.down().build();
            }
        };
    }
}
