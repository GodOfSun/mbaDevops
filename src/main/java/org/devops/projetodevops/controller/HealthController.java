package org.devops.projetodevops.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("health")
public class HealthController {

    @GetMapping("/liveness")
    public ResponseEntity<Void> health() {
        // Lógica para verificar se o aplicativo está em execução
        return ResponseEntity.ok().build();
    }

    @GetMapping("/readiness")
    public ResponseEntity<Void> readiness() {
        // Lógica para verificar se o aplicativo está pronto para receber tráfego
        return ResponseEntity.ok().build();
    }

}
