FROM nginx

RUN apt-get update -qq
RUN apt-get upgrade -y
RUN apt-get install -y python-pip

RUN pip install mkdocs mkdocs-material
RUN pip install pymdown-extensions

RUN cd /usr/share/nginx && mkdocs new broid

COPY mkdocs.yml /usr/share/nginx/broid
RUN mkdir -p /usr/share/nginx/broid/docs
ADD docs/ /usr/share/nginx/broid/docs
ADD theme/ /usr/share/nginx/broid/theme

WORKDIR /usr/share/nginx/broid
RUN mkdocs build

RUN rm -f /etc/nginx/conf.d/*
COPY mkdocs.conf /etc/nginx/conf.d

ENV PORT 80
ENV HOST 0.0.0.0
EXPOSE 80

RUN sed -i "s|#gzip  on;|gzip  on; etag  off; server_tokens off; gzip_types *;|" /etc/nginx/nginx.conf
