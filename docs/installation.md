---
sidebar_position: 2
title: Installation Guide
---

# Installation Guide

This guide will help you install and activate the Growfund plugin on your WordPress site. Follow these steps to get started with your fundraising platform.

## Prerequisites

Before installing Growfund, ensure your WordPress site meets the following requirements:

### System Requirements

- **WordPress**: Version 5.9 or higher
- **PHP**: Version 7.4 or higher (PHP 8.0+ recommended)
- **MySQL**: Version 5.7 or higher, or MariaDB 10.3 or higher
- **Memory Limit**: 256MB minimum (512MB recommended)
- **Upload Limit**: 64MB minimum for file uploads

### Server Requirements

- **HTTPS**: Required for payment gateway integration (Stripe, PayPal)
- **SSL Certificate**: Recommended for secure transactions
- **cURL**: Required for API communication with payment gateways
- **OpenSSL**: Required for secure payment processing

## Installation Methods

Growfund can be installed using one of the following methods:

### Method 1: WordPress Admin Dashboard (Recommended)

This is the easiest method for most users:

1. **Log in to WordPress Admin**
   - Navigate to your WordPress admin dashboard
   - Use administrator credentials to log in

2. **Navigate to Plugins**
   - In the left sidebar, click on **Plugins**
   - Click **Add New**

3. **Upload the Plugin**
   - Click **Upload Plugin** button at the top of the page
   - Click **Choose File** and select the `growfund.zip` file
   - Click **Install Now**

4. **Activate the Plugin**
   - After installation, click **Activate Plugin**
   - The plugin is now active on your site

### Method 2: FTP Upload

If you prefer to upload the plugin manually via FTP:

1. **Extract the Plugin**
   - Extract the `growfund.zip` file on your computer
   - You should see a folder named `growfund`

2. **Connect via FTP**
   - Connect to your WordPress site using an FTP client (FileZilla, Cyberduck, etc.)
   - Navigate to `/wp-content/plugins/` directory

3. **Upload the Plugin**
   - Upload the entire `growfund` folder to `/wp-content/plugins/`
   - Ensure folder permissions are set correctly (typically 755)

4. **Activate the Plugin**
   - Log in to your WordPress admin dashboard
   - Go to **Plugins** > **Installed Plugins**
   - Find **Growfund** in the list
   - Click **Activate**

### Method 3: WordPress CLI

For advanced users with WordPress CLI access:

```bash
wp plugin install growfund.zip --activate
```

## Post-Installation Steps

After successfully installing and activating Growfund, follow these steps:

### 1. Verify Installation

- Check that the **Growfund** menu appears in your WordPress admin sidebar
- Verify that no error messages appear in the WordPress admin dashboard
- Check the plugin status on the **Plugins** page

### 2. Run Initial Setup

- Navigate to **Growfund** > **Settings** in the admin menu
- Complete the initial setup wizard (if available)
- Configure basic settings as described in the [Getting Started Guide](getting-started)

### 3. Check System Status

- Visit **Growfund** > **Settings** > **System Status** (if available)
- Verify that all system requirements are met
- Check for any warnings or recommendations

### 4. Database Setup

Growfund automatically creates necessary database tables upon activation. The plugin will:

- Create custom database tables for campaigns, donations, pledges, and transactions
- Set up default settings and configurations
- Initialize user roles and capabilities

**Note**: No manual database setup is required. The plugin handles this automatically.

## Installing Growfund Pro

If you have purchased Growfund Pro, follow these steps to install it:

1. **Install the Core Plugin First**
   - Ensure the free Growfund plugin is installed and activated
   - Do not deactivate the core plugin

2. **Install Growfund Pro**
   - Follow the same installation methods described above
   - Upload and activate the `growfund-pro.zip` file

3. **Activate License**
   - Navigate to **Growfund** > **Settings** > **License**
   - Enter your license key
   - Click **Activate License**

4. **Verify Pro Features**
   - Check that Pro features are now available
   - Look for Pro-specific menu items and options

**Important**: Growfund Pro requires the core Growfund plugin to be active. Do not deactivate the core plugin while using Pro features.

## Troubleshooting Installation

### Common Issues

**Issue: Plugin won't activate**
- **Solution**: Check PHP version compatibility (requires PHP 7.4+)
- **Solution**: Verify WordPress version (requires 5.9+)
- **Solution**: Check file permissions (ensure plugin directory is writable)

**Issue: "Fatal error" during activation**
- **Solution**: Check PHP error logs for specific error messages
- **Solution**: Verify all server requirements are met
- **Solution**: Contact your hosting provider if issues persist

**Issue: Database tables not created**
- **Solution**: Ensure database user has CREATE TABLE permissions
- **Solution**: Check database connection settings in wp-config.php
- **Solution**: Manually refresh by deactivating and reactivating the plugin

**Issue: Payment gateways not working**
- **Solution**: Verify HTTPS is enabled on your site
- **Solution**: Check that cURL is enabled on your server
- **Solution**: Verify SSL certificate is valid

### Getting Help

If you encounter issues during installation:

1. Check the [Troubleshooting Guide](troubleshooting) for common solutions
2. Verify all system requirements are met
3. Check WordPress error logs and PHP error logs
4. Contact your hosting provider for server-related issues
5. Reach out to Growfund support for plugin-specific issues

## Next Steps

After successful installation:

1. Read the [Getting Started Guide](getting-started) for initial configuration
2. Learn about [Core Platform Modes](core-platform-modes) to choose your operational mode
3. Configure [Payment System](payment-system) to accept donations
4. Set up [User Management](user-management) for your team

## Uninstallation

If you need to uninstall Growfund:

1. **Deactivate the Plugin**
   - Go to **Plugins** > **Installed Plugins**
   - Click **Deactivate** under Growfund

2. **Delete Plugin Data (Optional)**
   - Navigate to **Growfund** > **Settings** > **Advanced**
   - Check the option to delete all data on uninstall (if available)
   - This will remove all campaigns, donations, and settings

3. **Delete the Plugin**
   - Click **Delete** under the deactivated plugin
   - Confirm deletion

**Warning**: Deleting plugin data is permanent and cannot be undone. Ensure you have backups before proceeding.

---

**Note**: Always backup your WordPress site before installing or updating plugins.

