#FROM quay.io/keycloak/keycloak:latest
FROM quay.io/keycloak/keycloak:26.0.7

# Set default environment variables for Keycloak
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV PORT=8080

# Expose the port dynamically
EXPOSE 8080

# Start Keycloak with dynamic port binding
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=8080"]
