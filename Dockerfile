FROM centos
COPY make/app /service/app
CMD ["/service/app"]
