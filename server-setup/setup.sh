#!/bin/bash

set -e

echo "Setting up DigitalOcean server for Docusaurus deployment..."

DEPLOY_USER="${DEPLOY_USER:-$USER}"
DEPLOY_PATH="${DEPLOY_PATH:-/var/www/growfund-docs}"
NGINX_CONFIG_PATH="/etc/nginx/sites-available/growfund-docs"
NGINX_ENABLED_PATH="/etc/nginx/sites-enabled/growfund-docs"

echo "Creating deployment directory..."
sudo mkdir -p $DEPLOY_PATH
sudo chown -R $DEPLOY_USER:$DEPLOY_USER $DEPLOY_PATH

echo "Creating nginx configuration..."
sudo cp nginx.conf $NGINX_CONFIG_PATH

echo "Enabling nginx site..."
sudo ln -sf $NGINX_CONFIG_PATH $NGINX_ENABLED_PATH

echo "Testing nginx configuration..."
sudo nginx -t

echo "Reloading nginx..."
sudo systemctl reload nginx

echo "Setup complete!"
echo "Deploy path: $DEPLOY_PATH"
echo "Nginx config: $NGINX_CONFIG_PATH"
echo ""
echo "Next steps:"
echo "1. Configure DNS to point to this server"
echo "2. Set up SSL certificate with Let's Encrypt:"
echo "   sudo certbot --nginx -d docs.growfund.com"
echo "3. Add GitHub Secrets:"
echo "   - DO_SSH_PRIVATE_KEY"
echo "   - DO_HOST (server IP or domain)"
echo "   - DO_USER ($DEPLOY_USER)"
echo "   - DO_DEPLOY_PATH ($DEPLOY_PATH)"

