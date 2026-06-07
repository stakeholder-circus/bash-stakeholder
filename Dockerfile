FROM alpine:3.23
RUN apk add --no-cache bash shellcheck
WORKDIR /app
LABEL org.opencontainers.image.title="bash-stakeholder"
LABEL org.opencontainers.image.description="Deterministic-first Bash stakeholder CLI"
COPY bin ./bin
COPY tests ./tests
RUN shellcheck bin/stakeholder tests/test_cli.sh && tests/test_cli.sh bin/stakeholder
ENTRYPOINT ["/app/bin/stakeholder"]
CMD ["--list-values"]
