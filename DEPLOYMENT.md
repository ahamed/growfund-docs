# Deployment Guide

This document explains how the automatic deployment works and how content writers can update the documentation.

## Automatic Deployment

The site is automatically deployed to a DigitalOcean server using GitHub Actions whenever changes are pushed to the `main` branch.

### How It Works

1. **Content writer makes changes**: Edits documentation files in the `docs/` folder
2. **Changes are committed**: Commit and push to the `main` branch
3. **Automatic build and deploy**: GitHub Actions automatically:
   - Builds the Docusaurus site
   - Deploys to DigitalOcean server via SSH/rsync
   - Updates the live site

### Workflow File

The deployment configuration is located at `.github/workflows/deploy.yml`.

## Initial Server Setup (One-time)

### 1. Set Up DigitalOcean Droplet

1. Create a new Ubuntu droplet on DigitalOcean
2. Configure basic security (firewall, SSH keys)
3. Install nginx:
   ```bash
   sudo apt update
   sudo apt install nginx -y
   ```

### 2. Run Server Setup Script

1. Clone this repository on your server
2. Navigate to the `server-setup/` directory
3. Make the setup script executable:
   ```bash
   chmod +x setup.sh
   ```
4. Run the setup script:
   ```bash
   ./setup.sh
   ```

Alternatively, you can set custom paths:
```bash
DEPLOY_USER=your-user DEPLOY_PATH=/var/www/growfund-docs ./setup.sh
```

### 3. Configure SSL (Recommended)

Install certbot and set up SSL certificate:
```bash
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d docs.growfund.com
```

### 4. Set Up SSH Key for GitHub Actions

1. Generate an SSH key pair (or use an existing one):
   ```bash
   ssh-keygen -t ed25519 -C "github-actions" -f ~/.ssh/github_actions_deploy
   ```

2. Add the public key to the server's authorized_keys:
   ```bash
   ssh-copy-id -i ~/.ssh/github_actions_deploy.pub user@your-server-ip
   ```
   
   Or manually:
   ```bash
   cat ~/.ssh/github_actions_deploy.pub >> ~/.ssh/authorized_keys
   ```

3. Copy the private key content:
   ```bash
   cat ~/.ssh/github_actions_deploy
   ```

### 5. Configure GitHub Secrets

Go to your GitHub repository → Settings → Secrets and variables → Actions, and add:

- **DO_SSH_PRIVATE_KEY**: The private key content (from step 4)
- **DO_HOST**: Your server IP address or domain (e.g., `123.456.789.0` or `docs.growfund.com`)
- **DO_USER**: SSH username (e.g., `root` or `ubuntu`)
- **DO_DEPLOY_PATH**: Deployment path (e.g., `/var/www/growfund-docs`)

### 6. Configure DNS

Point your domain to the DigitalOcean server:
- Add an A record: `docs.growfund.com` → Your server IP

## For Content Writers

### Editing Existing Documentation

1. Navigate to the documentation file in `docs/` folder
2. Click the "Edit this page" link at the bottom of any documentation page (enabled in config)
3. Or directly edit the `.md` files in the `docs/` folder
4. Commit and push changes
5. The site will automatically rebuild and deploy (usually takes 2-3 minutes)

### Adding New Documentation

1. Create a new `.md` file in the `docs/` folder
2. Add frontmatter to the top of the file:
   ```markdown
   ---
   title: Your Document Title
   sidebar_position: 5
   ---
   ```
3. Update `sidebars.ts` to include the new document in the sidebar
4. Commit and push changes
5. The site will automatically rebuild and deploy

### Example: Adding a New Doc

1. Create `docs/new-feature.md`:
   ```markdown
   ---
   title: New Feature Guide
   sidebar_position: 10
   ---
   
   # New Feature Guide
   
   Content goes here...
   ```

2. Update `sidebars.ts` to add it to a category:
   ```typescript
   {
     type: 'category',
     label: 'Features',
     items: [
       'existing-doc',
       'new-feature',  // Add this
     ],
   },
   ```

3. Commit and push

## Manual Deployment

If you need to manually trigger a deployment:

1. Go to the **Actions** tab in your GitHub repository
2. Select the **Deploy Docusaurus to DigitalOcean** workflow
3. Click **Run workflow**
4. Select the branch (usually `main`)
5. Click **Run workflow**

## Server Management

### Viewing Deployment Logs

SSH into your server and check the deployment directory:
```bash
ssh user@your-server-ip
ls -la /var/www/growfund-docs
```

### Manual Server Deployment

If you need to deploy manually from your local machine:

1. Build the site:
   ```bash
   npm run build
   ```

2. Deploy using rsync:
   ```bash
   rsync -avz --delete ./build/ user@your-server-ip:/var/www/growfund-docs/
   ```

3. Reload nginx:
   ```bash
   ssh user@your-server-ip "sudo systemctl reload nginx"
   ```

### Checking Nginx Status

```bash
sudo systemctl status nginx
sudo nginx -t
```

### Viewing Nginx Logs

```bash
sudo tail -f /var/log/nginx/error.log
sudo tail -f /var/log/nginx/access.log
```

## Troubleshooting

### Deployment Fails

- Check the **Actions** tab in GitHub for error messages
- Verify SSH connection works: `ssh -i ~/.ssh/private_key user@your-server-ip`
- Verify all GitHub Secrets are correctly set
- Check server disk space: `df -h`
- Verify deployment path exists and has correct permissions

### SSH Connection Issues

- Verify the SSH private key is correctly added to GitHub Secrets
- Check that the public key is in `~/.ssh/authorized_keys` on the server
- Verify firewall allows SSH (port 22)
- Test SSH connection manually

### Site Not Updating

- Wait a few minutes (deployment can take 2-5 minutes)
- Clear your browser cache
- Check the GitHub Actions tab to verify the deployment succeeded
- Verify files were transferred: `ls -la /var/www/growfund-docs` on server
- Check nginx is running: `sudo systemctl status nginx`

### Nginx Issues

- Test nginx configuration: `sudo nginx -t`
- Check nginx error logs: `sudo tail -f /var/log/nginx/error.log`
- Verify nginx is serving from correct directory
- Restart nginx: `sudo systemctl restart nginx`

### Permission Issues

If rsync fails due to permissions:
```bash
sudo chown -R $USER:$USER /var/www/growfund-docs
sudo chmod -R 755 /var/www/growfund-docs
```

### Broken Links

The build will fail if there are broken links. To fix:
- Update the broken link to point to the correct file
- Or change `onBrokenLinks` in `docusaurus.config.ts` from `'throw'` to `'warn'` (not recommended)

## Security Considerations

- Keep your SSH private key secure (never commit it to the repository)
- Use SSH key authentication instead of passwords
- Keep your server updated: `sudo apt update && sudo apt upgrade`
- Configure firewall (UFW): `sudo ufw allow 22 && sudo ufw allow 80 && sudo ufw allow 443 && sudo ufw enable`
- Regularly update SSL certificates: `sudo certbot renew --dry-run`

## Monitoring Deployments

- View deployment status in the **Actions** tab in GitHub
- Each deployment shows build logs and deployment status
- Failed deployments will show error details
- Monitor server resources: `htop` or `df -h`

## Rollback

If you need to rollback to a previous version:

1. Checkout the previous commit:
   ```bash
   git checkout <previous-commit-hash>
   ```

2. Build and deploy manually:
   ```bash
   npm run build
   rsync -avz --delete ./build/ user@your-server-ip:/var/www/growfund-docs/
   ```

Or simply revert the commit and push, which will trigger automatic deployment.
