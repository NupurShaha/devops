FROM ubuntu:18.04
MAINTAINER shahns079@gmail.com
RUN apt-get update -y && apt-get install -y apache2 openssh-server openssh-client zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/biznews.zip /var/www/html
WORKDIR /var/www/html
RUN unzip biznews.zip
RUN cp -rvf free-news-website-template/* .
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
