---
sidebar_position: 5
title: User Management
---

# User Management

Growfund includes a comprehensive user management system with multiple user roles, each with specific capabilities and dedicated dashboards. This guide explains how to manage users, roles, and permissions in your fundraising platform.

## Overview

Growfund supports four primary user roles:
- **Administrator**: Full access to all platform features
- **Fundraiser**: Creates and manages campaigns (Pro feature)
- **Donor**: Makes donations in Donation Mode
- **Backer**: Makes pledges in Campaign Mode

Each user role has access to a dedicated dashboard with features specific to their role.

## User Roles

### Administrator

Administrators have full control over the fundraising platform.

#### Capabilities

- Manage all campaigns and donations
- Review and approve/decline campaigns
- Manage all users and roles
- Configure plugin settings
- View analytics and reports
- Manage transactions and payments
- Configure payment gateways
- Manage funds (Pro feature)
- Manage fundraisers (Pro feature)
- Access all platform features

#### Dashboard Features

- Overview of all campaigns and donations
- Analytics and reporting
- Transaction management
- User management
- Settings configuration
- Campaign approval/rejection
- Fund management (Pro feature)
- Fundraiser management (Pro feature)


### Fundraiser (Pro)

Fundraisers can create and manage their own campaigns. This role is available in the Pro version.

#### Capabilities

- Create campaigns
- Edit own campaigns
- Manage own campaign rewards (in Campaign Mode)
- View own campaign analytics
- Manage own pledges (in Campaign Mode)
- Post campaign updates (Pro feature)
- Add campaign collaborators (Pro feature)
- View campaign performance metrics

#### Dashboard Features

- My Campaigns list
- Create new campaign
- Campaign analytics
- Pledges management (Campaign Mode)
- Backers list (Campaign Mode)
- Campaign updates (Pro feature)
- Profile management


### Donor

Donors make donations to campaigns in Donation Mode.

#### Capabilities

- Make donations
- View donation history
- View donation receipts
- Update profile information
- Bookmark favorite campaigns (Pro feature)
- View donation overview (Pro feature)

#### Dashboard Features

- Donation history
- Receipts and records
- Profile settings
- Favorite campaigns (Pro feature)
- Donation overview (Pro feature)


### Backer

Backers make pledges to campaigns in Campaign Mode.

#### Capabilities

- Make pledges
- View pledge history
- View pledge receipts
- Update profile information
- Bookmark favorite campaigns (Pro feature)
- Track reward fulfillment

#### Dashboard Features

- Pledge history
- Receipts and records
- Profile settings
- Favorite campaigns (Pro feature)
- Reward tracking


## User Registration

### Registration Settings

Configure user registration in **Growfund** > **Settings** > **User Permissions**:

1. **Enable Registration**
   - Toggle user registration on/off
   - When enabled, users can register accounts from the frontend
   - When disabled, only admins can create accounts

2. **Email Verification** (Pro)
   - Enable email verification for new registrations
   - Users must verify their email before accessing their dashboard
   - Reduces spam and improves security

3. **Default Role**
   - Set the default role for new registrations
   - Options: Donor (Donation Mode) or Backer (Campaign Mode)
   - Fundraiser role must be assigned manually by admins

4. **Registration Requirements**
   - Configure required fields for registration
   - Set password requirements
   - Configure terms and conditions acceptance

### Registration Process

1. **User Registration**
   - User visits the registration page
   - User fills out registration form
   - User submits registration

2. **Email Verification** (If enabled)
   - User receives verification email
   - User clicks verification link
   - Account is activated

3. **Account Activation**
   - User can now log in
   - User is assigned default role
   - User can access their dashboard


## User Management (Administrator)

### Viewing Users

1. **Navigate to Users**
   - Go to **Growfund** > **Users** (if available)
   - Or use WordPress **Users** > **All Users**
   - Filter users by role if needed

2. **User List**
   - View all registered users
   - See user roles and status
   - View user activity and registration date


### Creating Users

1. **Navigate to Add New User**
   - Go to **WordPress** > **Users** > **Add New**
   - Or click **Add New** from the user list

2. **Fill User Details**
   - Enter username (required)
   - Enter email address (required)
   - Set password (or let WordPress generate one)
   - Select user role (Administrator, Fundraiser, Donor, Backer)
   - Fill optional profile information

3. **Create User**
   - Click **Add New User**
   - User receives welcome email (if configured)
   - User can now log in with their credentials

### Editing Users

1. **Select User**
   - Go to **WordPress** > **Users** > **All Users**
   - Click on the user you want to edit

2. **Edit User Information**
   - Update email, password, or profile information
   - Change user role if needed
   - Update profile picture or biographical information

3. **Save Changes**
   - Click **Update User**
   - Changes are saved immediately

### Assigning Roles

1. **Select User**
   - Go to **WordPress** > **Users** > **All Users**
   - Click on the user

2. **Change Role**
   - Find the **Role** dropdown
   - Select new role (Administrator, Fundraiser, Donor, Backer)
   - Click **Update User**

**Note**: Changing a user's role affects their access and capabilities. Be careful when changing roles.

### Deleting Users

1. **Select User**
   - Go to **WordPress** > **Users** > **All Users**
   - Click on the user you want to delete

2. **Delete User**
   - Click **Delete** at the bottom of the page
   - Choose what to do with user's content:
     - **Delete all content**: Removes all campaigns, donations, and data
     - **Attribute all content to**: Reassigns content to another user
   - Click **Confirm Deletion**

**Warning**: Deleting users is permanent. Ensure you have backups before deleting users with significant activity.

## Fundraiser Management (Pro)

If you're using Growfund Pro, you can manage fundraisers separately.

### Creating Fundraisers

1. **Navigate to Fundraisers**
   - Go to **Growfund** > **Fundraisers**
   - Click **Add New Fundraiser**

2. **Select User**
   - Choose an existing user to promote to fundraiser
   - Or create a new user and assign fundraiser role

3. **Configure Fundraiser**
   - Set fundraiser profile information
   - Assign to specific funds (if using funds)
   - Set fundraiser permissions

4. **Save Fundraiser**
   - Click **Save Fundraiser**
   - Fundraiser can now create campaigns

See [Fundraisers](fundraisers) for detailed fundraiser management.

## User Permissions

### Permission Settings

Configure user permissions in **Growfund** > **Settings** > **User Permissions**:

1. **Campaign Submission**
   - Require admin approval for campaigns
   - Allow fundraisers to publish directly
   - Set campaign moderation requirements

2. **Anonymous Contributions** (Pro)
   - Allow anonymous donations or pledges
   - Configure anonymous contribution settings
   - Set privacy requirements

3. **Contributor Comments** (Pro)
   - Allow donors/backers to comment on campaigns
   - Configure comment moderation
   - Set comment requirements

4. **Fundraiser Settings** (Pro)
   - Configure fundraiser permissions
   - Set fundraiser capabilities
   - Configure fundraiser management

### Permission Configuration

1. **Navigate to User Permissions**
   - Go to **Growfund** > **Settings** > **User Permissions**

2. **Configure Permissions**
   - Enable/disable features for each role
   - Set campaign submission requirements
   - Configure moderation settings

3. **Save Settings**
   - Click **Save Changes**
   - Permissions are applied immediately

## User Dashboards

Each user role has access to a dedicated dashboard with role-specific features.

### Accessing Dashboards

1. **User Login**
   - User logs in to WordPress
   - User is redirected to their role-specific dashboard

2. **Dashboard Navigation**
   - Dashboard sidebar shows role-specific menu items
   - User can access features relevant to their role
   - User can update profile and settings

### Dashboard Features by Role

- **Administrator**: Full access to all features
- **Fundraiser**: Campaign management, analytics, pledges
- **Donor**: Donation history, receipts, profile
- **Backer**: Pledge history, receipts, profile

## User Profiles

### Profile Management

Users can manage their profiles from their dashboards:

1. **Access Profile**
   - Navigate to **Profile** in the dashboard sidebar
   - Or click profile icon in the top navigation

2. **Edit Profile**
   - Update name, email, and biographical information
   - Upload profile picture
   - Change password
   - Update notification preferences

3. **Save Changes**
   - Click **Save Profile**
   - Changes are saved immediately

### Profile Settings

- **Personal Information**: Name, email, bio
- **Profile Picture**: Upload and manage avatar
- **Password**: Change login password
- **Notifications**: Email notification preferences
- **Privacy**: Privacy and visibility settings

## Best Practices

### User Management

- **Regular Review**: Periodically review user accounts and activity
- **Role Assignment**: Assign appropriate roles based on user needs
- **Security**: Enable email verification to reduce spam accounts
- **Permissions**: Set appropriate permissions for each role
- **Documentation**: Keep records of role assignments and changes

### Fundraiser Management (Pro)

- **Approval Process**: Review fundraiser applications before approval
- **Training**: Provide training on campaign creation for fundraisers
- **Monitoring**: Monitor fundraiser activity and campaign quality
- **Support**: Provide support for fundraisers when needed

## Related Documentation

- [Settings](settings) - Configure user permissions and registration
- [Campaign Management](campaign-management) - Campaign creation and management
- [Fundraisers](fundraisers) - Fundraiser management (Pro feature)
- [Security & Privacy](security-privacy) - Security and privacy settings

---

**Note**: User management is a critical aspect of your fundraising platform. Proper role assignment and permissions ensure smooth operations and security.

