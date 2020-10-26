FROM jojomi/hugo

COPY website /src
WORKDIR /src
EXPOSE 1313
CMD hugo server --bind 0.0.0.0 --baseURL "http://lpelegrin.com"