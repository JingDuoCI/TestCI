FROM alpine
COPY make/app /service/app
CMD ["/service/app"]
