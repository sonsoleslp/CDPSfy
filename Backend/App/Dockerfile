FROM node

# Privado: RUN git clone https://github.com/sonsoleslp/CDPSfy.git
COPY Frontend /Frontend

WORKDIR Frontend
RUN ["npm", "update"]
EXPOSE 8080

ENTRYPOINT ["npm", "start"]
