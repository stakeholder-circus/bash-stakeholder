FROM alpine:3.20
LABEL org.opencontainers.image.title="bash-stakeholder"
LABEL org.opencontainers.image.description="Scaffold-only placeholder container for bash-stakeholder"
CMD ["sh", "-lc", "echo 'bash-stakeholder scaffold-only baseline';"]
