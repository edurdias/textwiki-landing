FROM node:latest

RUN npm cache clear -f \
	&& npm install -g n \
	&& npm install -g npm \
	&& npm cache clear -f \
	&& npm install -g yo bower grunt-cli gulp \
    && npm cache clear -f

ADD . /app
WORKDIR /app

RUN npm install \
	&& bower install --allow-root
	
EXPOSE 3000

CMD ["grunt", "serve:dist"]