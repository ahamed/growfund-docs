---
sidebar_position: 17
title: Troubleshooting
---

# Troubleshooting

This guide helps you troubleshoot common issues you may encounter while using Growfund. These solutions address the most frequent problems and help you resolve them quickly.

## Common Issues

### Installation Issues

#### Plugin Won't Activate

**Symptoms**: Plugin activation fails with error message.

**Solutions**:
1. **Check PHP Version**
   - Ensure PHP 7.4 or higher is installed
   - Check PHP version in hosting control panel
   - Update PHP if needed

2. **Check WordPress Version**
   - Ensure WordPress 5.9 or higher is installed
   - Update WordPress if needed

3. **Check File Permissions**
   - Ensure plugin directory is writable
   - Set correct file permissions (typically 755)
   - Check WordPress file permissions

4. **Check Error Logs**
   - Check WordPress error logs
   - Check PHP error logs
   - Review error messages for specific issues

#### Database Tables Not Created

**Symptoms**: Plugin activates but database tables are missing.

**Solutions**:
1. **Check Database Permissions**
   - Ensure database user has CREATE TABLE permissions
   - Check database connection in wp-config.php
   - Verify database credentials

2. **Manual Table Creation**
   - Deactivate and reactivate plugin
   - Check database for tables
   - Contact support if tables still missing

3. **Database Connection**
   - Verify database connection settings
   - Test database connection
   - Update database credentials if needed

### Payment Issues

#### Payment Gateway Not Working

**Symptoms**: Payments fail or payment gateway doesn't process.

**Solutions**:
1. **Check HTTPS**
   - Ensure site uses HTTPS
   - Verify SSL certificate is valid
   - Enable HTTPS if not enabled

2. **Check API Keys**
   - Verify payment gateway API keys are correct
   - Check API keys are for correct mode (test/live)
   - Update API keys if needed

3. **Check Gateway Configuration**
   - Verify payment gateway is configured correctly
   - Test payment gateway connection
   - Review gateway error messages

4. **Check Payment Gateway Status**
   - Verify payment gateway account is active
   - Check payment gateway service status
   - Contact payment gateway support if needed

#### Payments Not Processing

**Symptoms**: Donations or pledges don't process.

**Solutions**:
1. **Check Payment Gateway**
   - Verify payment gateway is configured
   - Test payment gateway connection
   - Check gateway error logs

2. **Check Transaction Logs**
   - Review transaction logs
   - Check for error messages
   - Verify transaction status

3. **Test Payment**
   - Make test payment
   - Verify payment processing
   - Check payment confirmation

### Email Issues

#### Emails Not Sending

**Symptoms**: Email notifications not being sent.

**Solutions**:
1. **Check SMTP Configuration**
   - Verify SMTP settings are correct
   - Test SMTP connection
   - Check SMTP credentials

2. **Check WordPress Email**
   - Test WordPress default email
   - Check email delivery
   - Review email logs

3. **Check Email Settings**
   - Verify email settings are configured
   - Check sender email address
   - Review email templates

4. **Check Spam Filters**
   - Check spam folder for emails
   - Verify email delivery
   - Configure SPF/DKIM records if needed

#### Email Templates Not Working

**Symptoms**: Email templates not displaying correctly.

**Solutions**:
1. **Check Template Settings**
   - Verify email template settings
   - Review template configuration
   - Test email templates

2. **Check Template Variables**
   - Verify template variables are correct
   - Check variable syntax
   - Test template variables

3. **Clear Cache**
   - Clear WordPress cache
   - Clear plugin cache
   - Test email templates again

### Campaign Issues

#### Campaigns Not Displaying

**Symptoms**: Campaigns not showing on frontend.

**Solutions**:
1. **Check Campaign Status**
   - Verify campaigns are published
   - Check campaign visibility settings
   - Review campaign status

2. **Check Permalinks**
   - Flush permalinks
   - Update permalink structure
   - Test campaign URLs

3. **Check Theme Compatibility**
   - Verify theme compatibility
   - Check theme settings
   - Test with default theme

#### Campaign Creation Issues

**Symptoms**: Cannot create campaigns or campaigns fail to save.

**Solutions**:
1. **Check Permissions**
   - Verify user has permission to create campaigns
   - Check user role permissions
   - Review campaign settings

2. **Check Required Fields**
   - Verify all required fields are filled
   - Check field validation
   - Review form errors

3. **Check Database**
   - Verify database connection
   - Check database tables
   - Review database errors

### User Management Issues

#### User Registration Not Working

**Symptoms**: Users cannot register accounts.

**Solutions**:
1. **Check Registration Settings**
   - Verify registration is enabled
   - Check registration settings
   - Review user permissions

2. **Check Email Verification**
   - Verify email verification settings
   - Check email delivery
   - Review verification process

3. **Check Forms**
   - Verify registration form is working
   - Check form fields
   - Review form errors

#### User Roles Not Working

**Symptoms**: User roles not functioning correctly.

**Solutions**:
1. **Check Role Permissions**
   - Verify role permissions are set
   - Check user role assignments
   - Review permission settings

2. **Check User Settings**
   - Verify user settings are correct
   - Check user role configuration
   - Review user permissions

3. **Check Plugin Conflicts**
   - Check for plugin conflicts
   - Disable other plugins
   - Test user roles

### Performance Issues

#### Slow Page Load Times

**Symptoms**: Pages load slowly.

**Solutions**:
1. **Check Server Resources**
   - Verify server resources
   - Check PHP memory limit
   - Review server performance

2. **Check Database**
   - Optimize database
   - Check database performance
   - Review database queries

3. **Check Caching**
   - Enable caching
   - Configure caching settings
   - Clear cache regularly

#### Plugin Conflicts

**Symptoms**: Plugin conflicts with other plugins.

**Solutions**:
1. **Identify Conflicts**
   - Deactivate other plugins
   - Test plugin functionality
   - Identify conflicting plugin

2. **Update Plugins**
   - Update conflicting plugin
   - Update Growfund plugin
   - Test compatibility

3. **Contact Support**
   - Report plugin conflict
   - Provide conflict details
   - Request compatibility fix

## Getting Help

### Documentation

1. **Review Documentation**
   - Check relevant documentation sections
   - Review troubleshooting guides
   - Search documentation

2. **Check FAQ**
   - Review frequently asked questions
   - Check common issues
   - Review solutions

### Support Resources

1. **Community Forum**
   - Search forum for similar issues
   - Post questions in forum
   - Get help from community

2. **Support Team**
   - Contact support team
   - Provide detailed issue description
   - Include error messages and logs

3. **Error Logs**
   - Check WordPress error logs
   - Check PHP error logs
   - Review plugin error logs

### Reporting Issues

When reporting issues:

1. **Provide Details**
   - Describe the issue clearly
   - Include steps to reproduce
   - Provide error messages

2. **Include Information**
   - WordPress version
   - PHP version
   - Plugin version
   - Error logs

3. **Test Before Reporting**
   - Test with default theme
   - Test with other plugins disabled
   - Verify issue persists

## Prevention

### Regular Maintenance

1. **Regular Updates**
   - Keep WordPress updated
   - Keep Growfund updated
   - Keep plugins updated

2. **Regular Backups**
   - Backup site regularly
   - Backup database regularly
   - Test backup restoration

3. **Regular Monitoring**
   - Monitor site performance
   - Monitor error logs
   - Review security settings

### Best Practices

1. **Security**
   - Use strong passwords
   - Enable HTTPS
   - Regular security updates

2. **Performance**
   - Optimize database
   - Enable caching
   - Monitor performance

3. **Compatibility**
   - Test plugin updates
   - Test theme compatibility
   - Review plugin conflicts

## Related Documentation

- [Installation Guide](installation) - Installation troubleshooting
- [Getting Started](getting-started) - Initial setup issues
- [Payment System](payment-system) - Payment troubleshooting
- [Email Notifications](email-notifications) - Email troubleshooting

---

**Note**: If you cannot resolve an issue using this guide, please contact Growfund support for assistance. Include detailed information about the issue for faster resolution.

