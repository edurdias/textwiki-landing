FROM silarsis/yeoman
ADD . /app
RUN cd /app 
RUN npm install
EXPOSE 9000
USER yeoman
CMD ["grunt", "serve"]
