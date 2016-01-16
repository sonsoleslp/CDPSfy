FROM node

# Privado: RUN git clone https://github.com/sonsoleslp/CDPSfy.git
COPY API /API

WORKDIR API
RUN ["npm" ,"update"]
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
