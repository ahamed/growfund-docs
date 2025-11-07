# Server Setup Files

This directory contains files for setting up the DigitalOcean server to host the Docusaurus documentation site.

## Files

- **nginx.conf**: Nginx configuration file for serving the static Docusaurus site
- **setup.sh**: Automated setup script to configure the server
- **README.md**: This file

## Quick Setup

1. **On your DigitalOcean server**, clone the repository or copy these files

2. **Install nginx** (if not already installed):
   ```bash
   sudo apt update
   sudo apt install nginx -y
   ```

3. **Run the setup script**:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

4. **Configure SSL** (recommended):
   ```bash
   sudo apt install certbot python3-certbot-nginx -y
   sudo certbot --nginx -d docs.growfund.com
   ```

## Manual Setup

If you prefer to set up manually:

1. Create the deployment directory:
   ```bash
   sudo mkdir -p /var/www/growfund-docs
   sudo chown -R $USER:$USER /var/www/growfund-docs
   ```

2. Copy nginx configuration:
   ```bash
   sudo cp nginx.conf /etc/nginx/sites-available/growfund-docs
   sudo ln -s /etc/nginx/sites-available/growfund-docs /etc/nginx/sites-enabled/
   ```

3. Test and reload nginx:
   ```bash
   sudo nginx -t
   sudo systemctl reload nginx
   ```

## Configuration

### Nginx Configuration

The `nginx.conf` file is configured for:
- Serving static files from `/var/www/growfund-docs`
- Handling client-side routing (SPA support)
- Gzip compression for better performance
- Long-term caching for static assets

### Customization

You can customize the setup by setting environment variables before running `setup.sh`:

```bash
DEPLOY_USER=your-user DEPLOY_PATH=/custom/path ./setup.sh
```

## Troubleshooting

### Nginx Test Fails

Check the configuration syntax:
```bash
sudo nginx -t
```

### Permission Denied

Ensure the deployment directory has correct permissions:
```bash
sudo chown -R $USER:$USER /var/www/growfund-docs
sudo chmod -R 755 /var/www/growfund-docs
```

### Site Not Loading

1. Check nginx is running: `sudo systemctl status nginx`
2. Check nginx logs: `sudo tail -f /var/log/nginx/error.log`
3. Verify files exist: `ls -la /var/www/growfund-docs`

## SSL/HTTPS Setup

After setting up nginx, configure SSL:

1. Install certbot:
   ```bash
   sudo apt install certbot python3-certbot-nginx -y
   ```

2. Get certificate:
   ```bash
   sudo certbot --nginx -d docs.growfund.com
   ```

3. Auto-renewal is configured automatically, but test it:
   ```bash
   sudo certbot renew --dry-run
   ```

## Firewall Configuration

Recommended firewall rules:

```bash
sudo ufw allow 22/tcp    # SSH
sudo ufw allow 80/tcp    # HTTP
sudo ufw allow 443/tcp   # HTTPS
sudo ufw enable
```

