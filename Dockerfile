FROM node:latest

RUN npm install embedme -g

# Copy run script.
COPY entrypoint.sh entrypoint.sh

# Allow the execution of the run script.
ENTRYPOINT ["entrypoint.sh"]
