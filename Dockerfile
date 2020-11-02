FROM jojomi/hugo:0.76.5

COPY website /src
WORKDIR /src
EXPOSE 1313
CMD hugo server --bind 0.0.0.0 --baseURL "https://lucaspelegrin.com" --appendPort=false