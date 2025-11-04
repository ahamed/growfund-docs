---
sidebar_position: 3
title: Getting Started
---

# Getting Started

This guide will help you complete the initial setup and configuration of Growfund after installation. Follow these steps to get your fundraising platform up and running.

## Initial Configuration

After installing and activating Growfund, you'll need to complete the initial setup. This involves configuring basic settings, choosing your operational mode, and setting up payment gateways.

### Step 1: Access Growfund Settings

1. **Navigate to Growfund Settings**
   - In your WordPress admin dashboard, locate the **Growfund** menu in the left sidebar
   - Click on **Settings** to access the configuration page
   - You'll see various setting categories in the sidebar

2. **Review Available Settings**
   - Familiarize yourself with the different setting sections
   - Each section contains specific configuration options
   - See screenshot: Growfund Settings Page

### Step 2: Choose Your Platform Mode

The first important decision is choosing between Campaign Mode and Donation Mode:

1. **Navigate to General Settings**
   - Go to **Growfund** > **Settings** > **General**
   - Find the **Platform Mode** option

2. **Select Your Mode**
   - **Campaign Mode**: For reward-based crowdfunding with pledges and rewards
   - **Donation Mode**: For direct donations without rewards

3. **Save Your Selection**
   - Click **Save Changes** to apply your choice
   - The interface will update based on your selected mode

**Note**: You can switch modes later, but this may affect existing campaigns or donations. See [Core Platform Modes](core-platform-modes) for detailed information about each mode.

### Step 3: Configure Basic Settings

Complete the basic configuration in the General Settings section:

1. **Currency Settings**
   - Select your default currency from the dropdown
   - This will be used for all campaigns and donations
   - Common currencies include USD, EUR, GBP, etc.

2. **Date Format**
   - Choose your preferred date format
   - This affects how dates are displayed throughout the platform

3. **Time Zone**
   - Set your site's time zone
   - Ensures accurate timestamps for transactions and campaigns

4. **Save Settings**
   - Click **Save Changes** after configuring each section

### Step 4: Set Up Payment Gateways

To accept donations or pledges, you need to configure at least one payment gateway:

1. **Navigate to Payment Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - You'll see available payment gateways

2. **Configure Stripe** (Recommended)
   - Click on **Stripe** settings
   - Enter your Stripe API keys (Publishable Key and Secret Key)
   - Enable test mode for testing (if needed)
   - Save the configuration

3. **Configure PayPal** (Optional)
   - Click on **PayPal** settings
   - Enter your PayPal credentials
   - Configure payment mode (Sandbox for testing, Live for production)
   - Save the configuration

4. **Set Up Offline Payments** (Optional)
   - Enable offline/manual payment methods
   - Configure instructions for bank transfers or checks
   - Save the configuration

**Important**: Ensure your site uses HTTPS for secure payment processing. See [Payment System](payment-system) for detailed payment gateway setup.

### Step 5: Configure Email Notifications

Set up email notifications to keep users informed:

1. **Navigate to Email Settings**
   - Go to **Growfund** > **Settings** > **Email & Notifications**
   - Configure email settings

2. **Set Up SMTP** (Recommended)
   - Configure SMTP settings for reliable email delivery
   - Enter your SMTP server details
   - Test email delivery

3. **Configure Email Templates**
   - Review available email templates
   - Customize email content as needed
   - Enable/disable specific email notifications

See [Email Notifications](email-notifications) for detailed email configuration.

### Step 6: Configure User Roles (Optional)

Set up user permissions and roles:

1. **Navigate to User Permissions**
   - Go to **Growfund** > **Settings** > **User Permissions**
   - Review available user roles: Administrator, Fundraiser, Donor, Backer

2. **Configure Registration**
   - Enable/disable user registration
   - Set registration requirements
   - Configure email verification (Pro feature)

3. **Set Permissions**
   - Configure what each user role can do
   - Set campaign submission requirements
   - Configure moderation settings

See [User Management](user-management) for detailed user role configuration.

### Step 7: Configure Campaign Settings (Optional)

If using Campaign Mode, configure campaign-specific settings:

1. **Navigate to Campaign Settings**
   - Go to **Growfund** > **Settings** > **Campaign**
   - Configure campaign defaults

2. **Set Campaign Defaults**
   - Default campaign duration
   - Default funding goal format
   - Campaign approval requirements

3. **Configure Reward Settings**
   - Set default reward limits (free version: 3 rewards, 5 items per reward)
   - Configure shipping options
   - Set reward delivery settings

See [Campaign Management](campaign-management) for detailed campaign configuration.

### Step 8: Configure Donation Settings (Optional)

If using Donation Mode, configure donation-specific settings:

1. **Navigate to Donation Settings**
   - Go to **Growfund** > **Settings** > **Campaign** > **Donation Form**
   - Configure donation form options

2. **Set Donation Defaults**
   - Default donation amounts
   - Suggested donation amounts (Pro feature)
   - Allow custom donation amounts (Pro feature)

3. **Configure Tribute Options** (Pro)
   - Enable tribute donations (in honor/memory of someone)
   - Configure tribute form fields
   - Set up tribute notifications

See [Donations](donations) for detailed donation configuration.

## Creating Your First Campaign

After completing the initial setup, create your first campaign:

### For Campaign Mode

1. **Navigate to Campaigns**
   - Go to **Growfund** > **Campaigns**
   - Click **Create Campaign**

2. **Complete Campaign Details**
   - Enter campaign title and description
   - Upload featured image
   - Set funding goal and deadline
   - Add rewards (if applicable)

3. **Submit for Review**
   - Save as draft or submit for approval
   - Wait for admin approval (if required)

See [Campaign Management](campaign-management) for detailed campaign creation steps.

### For Donation Mode

1. **Navigate to Donations**
   - Go to **Growfund** > **Donations**
   - Click **Create Donation Campaign**

2. **Complete Donation Campaign Details**
   - Enter campaign title and description
   - Upload featured image
   - Set target amount (optional)
   - Configure donation form options

3. **Publish the Campaign**
   - Save and publish the donation campaign
   - Share the campaign link with donors

See [Donations](donations) for detailed donation campaign creation.

## Testing Your Setup

Before going live, test your configuration:

1. **Test Payment Processing**
   - Create a test campaign or donation
   - Make a test donation using test mode in payment gateways
   - Verify payment is processed correctly

2. **Test Email Notifications**
   - Make a test donation
   - Verify email notifications are sent
   - Check email formatting and content

3. **Test User Registration**
   - Create a test user account
   - Verify registration process works
   - Test email verification (if enabled)

4. **Test Campaign Creation**
   - Create a test campaign
   - Verify all fields save correctly
   - Test campaign approval process (if enabled)

## Next Steps

After completing the initial setup:

1. **Learn About Features**
   - Read [Core Platform Modes](core-platform-modes) to understand the differences
   - Explore [Campaign Management](campaign-management) for campaign creation
   - Review [Payment System](payment-system) for payment configuration

2. **Customize Your Platform**
   - Configure [Customization & Branding](customization-branding) (Pro feature)
   - Set up [Email Notifications](email-notifications)
   - Configure [Settings](settings) according to your needs

3. **Set Up Advanced Features** (Pro)
   - Configure [Fundraisers](fundraisers) management
   - Set up [Funds](funds) for organizing campaigns
   - Enable [Analytics & Reporting](analytics-reporting)

4. **Go Live**
   - Switch payment gateways to live mode
   - Create your first public campaign
   - Share your fundraising platform with supporters

## Common Setup Questions

**Q: Can I change the platform mode after setup?**
A: Yes, but switching modes may affect existing campaigns. It's recommended to choose your mode before creating campaigns.

**Q: Do I need to configure all payment gateways?**
A: No, you only need to configure at least one payment gateway. However, offering multiple payment options can increase donations.

**Q: What if I need help during setup?**
A: Refer to the [Troubleshooting Guide](troubleshooting) for common issues, or contact Growfund support for assistance.

**Q: Can I customize the look and feel?**
A: Yes, Pro users can customize branding, colors, and email templates. See [Customization & Branding](customization-branding) for details.

---

**Note**: Take your time during the initial setup. Proper configuration ensures a smooth experience for you and your donors.

