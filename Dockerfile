FROM nginx:1.23.1

ADD default.conf.template /etc/nginx/conf.d/default.conf.template
RUN export DOLLAR="$"
RUN envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf