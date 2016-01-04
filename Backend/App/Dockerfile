FROM node

# Privado: RUN git clone https://github.com/AntonioAlfrz/CDPSfy.git
COPY Frontend /CDPSfy

WORKDIR CDPSfy
RUN npm update
EXPOSE 8080

CMD ["npm", "start"]
