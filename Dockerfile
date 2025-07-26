# Use a Node.js base image
FROM node:20-slim

RUN apt-get update && apt-get install -y git python3 make g++ curl

WORKDIR /app

RUN git clone https://github.com/cruzyjapan/Gemini-CLI-UI.git .

RUN npm install
RUN npm install -g @google/gemini-cli


# RUN npm run build

# Expose the application ports
EXPOSE 4008
EXPOSE 4009

# Command to run the application
ENTRYPOINT ["npm", "run", "dev"]