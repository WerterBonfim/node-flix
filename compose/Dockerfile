FROM mongo
WORKDIR /seed

EXPOSE 27017

RUN apt-get update \
    && apt-get install -y wget xz-utils \
    && wget -c https://github.com/WerterBonfim/databases/raw/main/movies.tar.xz -O movies.tar.xz \
    && tar xf movies.tar.xz \
    && rm movies.tar.xz \
    && mv movies movies.json \
    && apt-get remove -y wget xz-utils

COPY carga.sh /docker-entrypoint-initdb.d/carga.sh
RUN [ "chmod", "+x", "/docker-entrypoint-initdb.d/carga.sh" ]
    
