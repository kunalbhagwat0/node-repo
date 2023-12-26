FROM public.ecr.aws/amazonlinux/amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd git

# Clone the Hello World repository from GitHub
RUN git clone https://github.com/kunalbhagwat0/Helloworld /tmp/helloworld

# Copy the index.html from the cloned repository to the Apache document root
RUN cp /tmp/helloworld/index.html /var/www/html/

# Configure apache
RUN echo 'mkdir -p /var/run/httpd' >> /root/run_apache.sh && \
    echo 'mkdir -p /var/lock/httpd' >> /root/run_apache.sh && \
    echo '/usr/sbin/httpd -D FOREGROUND' >> /root/run_apache.sh && \
    chmod 755 /root/run_apache.sh

EXPOSE 80

CMD /root/run_apache.sh
