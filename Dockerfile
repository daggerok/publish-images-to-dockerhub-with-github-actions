FROM nginx:1.20.1-alpine
HEALTHCHECK --retries=111 \
            --timeout=5s \
            --interval=1s \
            --start-period=1s \
            CMD ( curl --silent --fail 127.0.0.1:80 ) || exit 1
