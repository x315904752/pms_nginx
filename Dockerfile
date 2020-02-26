FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD envsubst '$PC_IP $PC_PORT $MOBILE_IP $MOBILE_PORT $PMS_BACKSTAGE_IP $JMS_BACKSTAGE_PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
