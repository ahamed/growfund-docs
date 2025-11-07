# Quick Start: DigitalOcean Deployment Setup

## One-Time Server Setup

### 1. On DigitalOcean Server

```bash
# Install nginx
sudo apt update && sudo apt install nginx -y

# Clone repo or copy server-setup files
cd /path/to/repo/server-setup

# Run setup script
chmod +x setup.sh
./setup.sh

# Setup SSL (recommended)
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d docs.growfund.com
```

### 2. Generate SSH Key for GitHub Actions

```bash
# On your local machine or server
ssh-keygen -t ed25519 -C "github-actions" -f ~/.ssh/github_actions_deploy

# Add public key to server
ssh-copy-id -i ~/.ssh/github_actions_deploy.pub user@your-server-ip

# Copy private key content (you'll need this for GitHub Secrets)
cat ~/.ssh/github_actions_deploy
```

### 3. Configure GitHub Secrets

Go to: Repository → Settings → Secrets and variables → Actions

Add these secrets:

| Secret Name | Value | Example |
|------------|-------|---------|
| `DO_SSH_PRIVATE_KEY` | Private key content | `-----BEGIN OPENSSH PRIVATE KEY-----...` |
| `DO_HOST` | Server IP or domain | `123.456.789.0` or `docs.growfund.com` |
| `DO_USER` | SSH username | `root` or `ubuntu` |
| `DO_DEPLOY_PATH` | Deployment directory | `/var/www/growfund-docs` |

### 4. Configure DNS

Add A record pointing to your server IP:
```
docs.growfund.com → YOUR_SERVER_IP
```

## That's It!

Now whenever you push to `main` branch, the site will automatically:
1. Build
2. Deploy to DigitalOcean
3. Reload nginx

## Testing Deployment

1. Make a small change to any `.md` file in `docs/`
2. Commit and push:
   ```bash
   git add docs/
   git commit -m "Test deployment"
   git push origin main
   ```
3. Check GitHub Actions tab for deployment status
4. Visit your site to see the changes (usually 2-3 minutes)

## Need Help?

See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed documentation.

