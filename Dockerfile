FROM centos
RUN yum update -y \
	yum clean all
COPY make/app /service/app
CMD ["/service/app"]
