FROM quay.io/keycloak/keycloak:latest

# Set default environment variables for Keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV PORT=8080

# Expose the port dynamically
EXPOSE 8080

# Start Keycloak with dynamic port binding
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-port=8080", "--optimized"]
