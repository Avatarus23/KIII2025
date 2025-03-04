FROM ubuntu:18.04
LABEL maintainer="bobi.galic@yahoo.com"
RUN apt-get update; apt-get install -y nginx
RUN echo 'Zdravo brat, kako si ti denes?' \
>/var/www/html/index.html
EXPOSE 80

#CMD [ "/bin/bash" ] - we dont need to specify /bin/bash when starting a container with "docker run -it "galic/test_ct"
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["-h"]

#FROM fedora:21
#LABEL maintainer="bobi.galic@yahoo.com"
#ENV REFRESHED_AT 2025-03-04
#RUN yum -q makecache
