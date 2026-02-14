#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  Portfolio Website Deployment Script  ${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# Update system packages
echo -e "${GREEN}[1/6] Updating system packages...${NC}"
sudo apt-get update -y

# Install Docker
echo -e "${GREEN}[2/6] Installing Docker...${NC}"
sudo apt-get install -y docker.io

# Start and enable Docker
echo -e "${GREEN}[3/6] Starting Docker service...${NC}"
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group
echo -e "${GREEN}[4/6] Adding user to docker group...${NC}"
sudo usermod -aG docker $USER

# Install Docker Compose
echo -e "${GREEN}[5/6] Installing Docker Compose...${NC}"
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Build and run the container
echo -e "${GREEN}[6/6] Building and starting the website...${NC}"
sudo docker-compose up -d --build

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Deployment Complete! ✅${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "Your website is now running at:"
echo -e "${BLUE}http://$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4):8080${NC}"
echo ""
echo "Useful commands:"
echo "  sudo docker-compose logs -f    # View logs"
echo "  sudo docker-compose down       # Stop containers"
echo "  sudo docker-compose restart    # Restart containers"
echo ""
