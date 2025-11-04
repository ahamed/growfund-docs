---
sidebar_position: 11
title: Email Notifications
---

# Email Notifications

This guide explains how to configure and manage email notifications in Growfund. The plugin includes 40+ email notification types to keep users informed at every step of the fundraising process.

## Overview

Growfund includes a comprehensive email notification system that automatically sends emails to users based on various events and actions. These notifications keep administrators, fundraisers, donors, and backers informed about campaign activities, donations, pledges, and other important events.

### Email Types

Growfund includes 40+ email notification types covering:

- **Admin Notifications**: Campaign submissions, updates, and important events
- **Fundraiser Notifications**: Campaign approvals, updates, and performance metrics
- **Donor Notifications**: Donation confirmations, receipts, and campaign updates
- **Backer Notifications**: Pledge confirmations, receipts, and campaign updates

## Email Configuration

### Prerequisites

Before configuring email notifications:

1. **SMTP Setup** (Recommended)
   - Configure SMTP for reliable email delivery
   - Use custom SMTP server or service
   - Test email delivery

2. **Email Settings**
   - Configure sender name and email
   - Set up email templates
   - Configure notification preferences

### Basic Email Settings

1. **Navigate to Email Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Configure basic email settings

2. **Configure Sender Information**
   - Set sender name
   - Set sender email address
   - Configure reply-to email

3. **Email Delivery**
   - Use WordPress default email (PHP mail)
   - Or configure SMTP for better delivery
   - Test email delivery


### SMTP Configuration

For reliable email delivery, configure SMTP:

1. **Navigate to SMTP Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find SMTP configuration section

2. **Configure SMTP**
   - Enable SMTP
   - Enter SMTP server address
   - Enter SMTP port (usually 587 or 465)
   - Enter SMTP username
   - Enter SMTP password
   - Enable SSL/TLS if required

3. **Test SMTP**
   - Send test email
   - Verify email delivery
   - Check email inbox


## Email Templates

### Available Email Templates

Growfund includes email templates for various events:

#### Admin Notifications

- **Campaign Submitted**: When campaign is submitted for review
- **Campaign Post Update**: When fundraiser posts campaign update (Pro)
- **Campaign Half Milestone**: When campaign reaches 50% of goal (Pro)
- **Campaign Fully Funded**: When campaign reaches funding goal
- **Donation Received**: When new donation is received
- **Pledge Received**: When new pledge is received

#### Fundraiser Notifications (Pro)

- **Campaign Approved**: When campaign is approved by admin
- **Campaign Declined**: When campaign is declined by admin
- **Campaign Post Update**: When campaign update is posted
- **Campaign Half Milestone**: When campaign reaches 50% of goal
- **Campaign Fully Funded**: When campaign reaches funding goal
- **Pledge Received**: When new pledge is received
- **All Fundraiser Emails**: Configure all fundraiser emails

#### Donor Notifications

- **Donation Confirmation**: When donation is processed
- **Donation Receipt**: When donation receipt is generated
- **Campaign Post Update**: When campaign update is posted (Pro)
- **Campaign Half Milestone**: When campaign reaches 50% of goal (Pro)
- **Tribute Mail**: When tribute donation is made (Pro)
- **Annual Receipt**: When annual receipt is generated (Pro)

#### Backer Notifications

- **Pledge Confirmation**: When pledge is processed
- **Pledge Receipt**: When pledge receipt is generated
- **Campaign Post Update**: When campaign update is posted (Pro)
- **Campaign Half Funded**: When campaign reaches 50% of goal (Pro)
- **Reward Fulfillment**: When reward is delivered

### Customizing Email Templates

1. **Navigate to Email Templates**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Click on email template you want to customize

2. **Edit Template**
   - Edit email subject
   - Edit email content
   - Add custom variables
   - Preview email template

3. **Save Template**
   - Click **Save Changes**
   - Template is updated


### Email Template Variables

Email templates support variables for dynamic content:

- **`{campaign_title}`**: Campaign title
- **`{donor_name}`**: Donor name
- **`{donation_amount}`**: Donation amount
- **`{pledge_amount}`**: Pledge amount
- **`{campaign_url}`**: Campaign URL
- **`{receipt_url}`**: Receipt URL
- **`{site_name}`**: Site name
- **`{admin_email}`**: Admin email


## Email Template Customization (Pro)

### Template Colors (Pro)

Pro version allows you to customize email template colors:

1. **Navigate to Template Colors**
   - Go to **Growfund** > **Settings** > **Email & Notifications** > **Template Colors**
   - Configure email template colors

2. **Customize Colors**
   - Set primary color
   - Set secondary color
   - Set background color
   - Set text color

3. **Save Colors**
   - Click **Save Changes**
   - Colors are applied to email templates


### Email Branding (Pro)

Pro version allows you to brand emails:

- **Logo**: Add logo to email templates
- **Colors**: Customize email colors
- **Fonts**: Customize email fonts
- **Layout**: Customize email layout

## Notification Settings

### User Notification Preferences

Users can control which notifications they receive:

1. **Navigate to Profile**
   - Go to user profile
   - Click **Notifications** tab

2. **Configure Preferences**
   - Enable/disable email notifications
   - Select notification types
   - Set notification frequency

3. **Save Preferences**
   - Click **Save Changes**
   - Preferences are saved


### Notification Types

Users can configure:

- **Campaign Updates**: Receive campaign update notifications
- **Donation Receipts**: Receive donation receipt emails
- **Pledge Receipts**: Receive pledge receipt emails
- **Campaign Milestones**: Receive milestone notifications
- **Campaign Updates**: Receive campaign update emails

## Admin Notifications

### Campaign Submitted for Review

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Admin Campaign Submitted" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set notification recipients

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured


### Campaign Post Update (Pro)

Pro version includes admin notification for campaign updates:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Admin Campaign Post Update" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set notification preferences

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

## Fundraiser Notifications (Pro)

### Campaign Approval

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Fundraiser Campaign Approved" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set notification preferences

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Campaign Declined

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Fundraiser Campaign Declined" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Include decline reason

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### All Fundraiser Emails (Pro)

Pro version allows you to configure all fundraiser emails:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "All Fundraiser Emails" section

2. **Configure Emails**
   - Enable/disable all fundraiser emails
   - Configure email preferences
   - Customize email templates

3. **Save Settings**
   - Click **Save Changes**
   - Emails are configured

## Donor Notifications

### Donation Confirmation

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Donor Donation Confirmation" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Include receipt link

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Donation Receipt

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Donor Donation Receipt" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Attach PDF receipt

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Campaign Post Update (Pro)

Pro version includes donor notification for campaign updates:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Donor Campaign Post Update" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set notification preferences

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Campaign Half Milestone (Pro)

Pro version includes donor notification for milestones:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Donor Campaign Half Milestone" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set milestone threshold

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Tribute Mail (Pro)

Pro version includes tribute donation notifications:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Donor Tribute Mail" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Configure tribute notification

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

## Backer Notifications

### Pledge Confirmation

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Backer Pledge Confirmation" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Include receipt link

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Pledge Receipt

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Backer Pledge Receipt" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Attach PDF receipt

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Campaign Post Update (Pro)

Pro version includes backer notification for campaign updates:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Backer Campaign Post Update" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set notification preferences

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

### Campaign Half Funded (Pro)

Pro version includes backer notification for milestones:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Backer Campaign Half Funded" notification

2. **Configure Notification**
   - Enable/disable notification
   - Customize email template
   - Set milestone threshold

3. **Save Settings**
   - Click **Save Changes**
   - Notification is configured

## Testing Email Notifications

### Send Test Email

1. **Navigate to Email Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Find "Send Test Email" option

2. **Configure Test**
   - Enter recipient email
   - Select email template to test
   - Click **Send Test Email**

3. **Verify Delivery**
   - Check recipient inbox
   - Verify email content
   - Check email formatting


### Email Delivery Testing

- **Test SMTP**: Test SMTP configuration
- **Test Templates**: Test email templates
- **Test Variables**: Test email variables
- **Test Delivery**: Test email delivery

## Best Practices

### Email Configuration

- **SMTP Setup**: Use SMTP for reliable delivery
- **Sender Information**: Use recognizable sender name
- **Email Testing**: Test all email templates
- **Regular Review**: Review email templates regularly

### Notification Management

- **User Preferences**: Allow users to control notifications
- **Relevant Notifications**: Send only relevant notifications
- **Clear Content**: Keep email content clear and concise
- **Professional Tone**: Use professional email tone

### Template Customization

- **Brand Consistency**: Maintain brand consistency
- **Clear Messaging**: Keep messages clear and concise
- **Call to Action**: Include clear call to action
- **Mobile Friendly**: Ensure emails are mobile-friendly

## Related Documentation

- [Settings](settings) - Email notification configuration
- [Campaign Management](campaign-management) - Campaign update notifications
- [Donations](donations) - Donation notification settings
- [Customization & Branding](customization-branding) - Email template customization (Pro feature)

---

**Note**: Email notifications are essential for keeping users informed. Proper configuration ensures users receive timely and relevant notifications about their fundraising activities.

