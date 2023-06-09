#!/bin/bash

# Go into the "contract" directory
cd contract || exit 1

# Set execute permissions for deploy.sh and build.sh
chmod +x deploy.sh
chmod +x build.sh

# Run deploy.sh
./deploy.sh

# Exit the "contract" directory
cd .. || exit 1

# Go into the "frontend" directory
cd frontend || exit 1

# Run npm install
npm install

# Set execute permissions for start.sh
chmod +x start.sh

# Run npm start
npm start
