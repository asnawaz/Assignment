FROM perl:latest
RUN yum update
RUN yum install -y perl-CPAN
RUN sudo wget -O - http://cpanmin.us | sudo perl - Dancer2
RUN git clone git@github.com:sreknar/Assignment.git
EXPOSE 9090
WORKDIR Dancer/CMAdmin
CMD plackup --port 9090 bin/app.psgi
