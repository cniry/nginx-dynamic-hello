FROM nginx:alpine


ENV NGINX_MESSAGE="HELLO DEFAULT"

RUN cp /docker-entrypoint.sh /docker-entrypoint.sh.bak \
	&& echo '#!/bin/sh' > /docker-entrypoint.sh \
        && echo "" >> /docker-entrypoint.sh \
	&& echo 'echo "$NGINX_MESSAGE" > /usr/share/nginx/html/index.html' >> /docker-entrypoint.sh \
        && echo "" >> /docker-entrypoint.sh \
        && cat /docker-entrypoint.sh.bak >> /docker-entrypoint.sh \
	&& rm /docker-entrypoint.sh.bak
