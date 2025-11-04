---
sidebar_position: 9
title: Payment System
---

# Payment System

This guide explains how to configure and manage payment gateways, process transactions, and handle financial management in Growfund.

## Overview

Growfund supports multiple payment gateways to accept donations and pledges. The plugin supports both native payment processing and WooCommerce integration, giving you flexibility in how you accept payments.

### Supported Payment Gateways

- **Stripe**: Credit and debit card payments
- **PayPal**: PayPal account and credit card payments
- **Offline Payments**: Manual payments (bank transfers, checks)
- **WooCommerce**: Integration with WooCommerce payment gateways

## Payment Gateway Configuration

### Prerequisites

Before configuring payment gateways:

1. **HTTPS Required**
   - Your site must use HTTPS
   - SSL certificate must be valid
   - Required for secure payment processing

2. **Gateway Accounts**
   - Create accounts with payment gateways
   - Obtain API keys and credentials
   - Verify account status

### Stripe Configuration

Stripe is a popular payment gateway that accepts credit and debit cards.

#### Setting Up Stripe

1. **Navigate to Payment Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - Click on **Stripe** settings

2. **Get Stripe API Keys**
   - Log in to your Stripe account
   - Navigate to **Developers** > **API Keys**
   - Copy your Publishable Key and Secret Key

3. **Configure Stripe**
   - Enter Publishable Key
   - Enter Secret Key
   - Select payment mode:
     - **Test Mode**: For testing payments
     - **Live Mode**: For production payments
   - Save configuration

4. **Test Stripe**
   - Use test mode to verify configuration
   - Make test donation or pledge
   - Verify payment processing


#### Stripe Features

- **Credit Cards**: Accept all major credit cards
- **Debit Cards**: Accept debit card payments
- **Multiple Currencies**: Support for various currencies
- **Recurring Payments**: Support for recurring donations (if configured)
- **3D Secure**: Enhanced security for card payments

### PayPal Configuration

PayPal is a widely used payment gateway that accepts PayPal account and credit card payments.

#### Setting Up PayPal

1. **Navigate to Payment Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - Click on **PayPal** settings

2. **Get PayPal Credentials**
   - Log in to your PayPal account
   - Navigate to **Account Settings** > **API Credentials**
   - Generate API credentials if needed

3. **Configure PayPal**
   - Enter PayPal API credentials
   - Select payment mode:
     - **Sandbox**: For testing payments
     - **Live**: For production payments
   - Save configuration

4. **Test PayPal**
   - Use sandbox mode to verify configuration
   - Make test donation or pledge
   - Verify payment processing


#### PayPal Features

- **PayPal Account**: Accept payments from PayPal accounts
- **Credit Cards**: Accept credit card payments without PayPal account
- **Multiple Currencies**: Support for various currencies
- **Buyer Protection**: PayPal buyer protection included

### Offline Payment Configuration

Offline payments allow you to accept manual payments such as bank transfers or checks.

#### Setting Up Offline Payments

1. **Navigate to Payment Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - Click on **Offline Payments** settings

2. **Enable Offline Payments**
   - Toggle offline payments on
   - Configure payment instructions
   - Set up payment methods

3. **Configure Instructions**
   - Add bank transfer instructions
   - Add check payment instructions
   - Configure payment confirmation process

4. **Save Settings**
   - Click **Save Changes**
   - Offline payments are now available


#### Offline Payment Process

1. **Donor Selection**
   - Donor selects offline payment option
   - Views payment instructions
   - Makes payment via bank transfer or check

2. **Payment Confirmation**
   - Donor notifies admin of payment
   - Admin confirms payment manually
   - Transaction is marked as completed

3. **Receipt Generation**
   - Receipt generated after confirmation
   - Sent to donor via email
   - Transaction recorded in system

### WooCommerce Integration

If you prefer to use WooCommerce for payment processing, you can integrate Growfund with WooCommerce.

#### Setting Up WooCommerce Integration

1. **Install WooCommerce**
   - Install and activate WooCommerce plugin
   - Configure WooCommerce settings

2. **Configure Integration**
   - Go to **Growfund** > **Settings** > **Payment**
   - Enable WooCommerce integration
   - Configure integration settings

3. **Use WooCommerce Gateways**
   - Configure payment gateways in WooCommerce
   - Available gateways will work with Growfund
   - Test payment processing


## Transaction Management

### Viewing Transactions

1. **Navigate to Transactions**
   - Go to **Growfund** > **Transactions** (if available)
   - View all transactions across campaigns
   - Filter by campaign, status, or date

2. **Campaign Transactions**
   - Go to campaign details
   - Click **Transactions** tab
   - View transactions for that campaign


### Transaction Status

Transactions can have different statuses:

- **Pending**: Payment initiated but not yet processed
- **Processing**: Payment is being processed
- **Completed**: Payment successfully processed
- **Failed**: Payment processing failed
- **Refunded**: Payment refunded to donor/backer
- **Cancelled**: Transaction cancelled

### Processing Transactions

1. **View Pending Transactions**
   - Go to **Growfund** > **Transactions**
   - Filter by "Pending" status
   - Review pending transactions

2. **Process Payment**
   - Click on transaction to view details
   - Verify payment information
   - Process payment through payment gateway

3. **Confirm Transaction**
   - Mark transaction as completed
   - Send confirmation email
   - Generate receipt


### Refunding Transactions

1. **Navigate to Transaction**
   - Go to transaction details
   - Click **Refund** button

2. **Process Refund**
   - Enter refund amount
   - Select refund reason
   - Process refund through payment gateway

3. **Confirm Refund**
   - Refund is processed
   - Transaction status updated
   - Donor/backer receives notification

## Financial Management

### Processing Fees

1. **Configure Processing Fees**
   - Go to **Growfund** > **Settings** > **Payment**
   - Find "Processing Fees" section
   - Configure fee settings

2. **Fee Options**
   - Set processing fee percentage
   - Configure fee recovery method
   - Set fee display options

3. **Fee Recovery**
   - Fees can be passed to donor/backer
   - Or absorbed by organization
   - Configure fee recovery method

### Admin Commission (Pro)

Pro version allows you to set admin commission on transactions:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - Find "Admin Commission" section

2. **Configure Commission**
   - Set commission percentage
   - Configure commission type
   - Set commission calculation method

3. **Save Settings**
   - Click **Save Changes**
   - Commission is applied to transactions


### Wallet Functionality

Growfund includes wallet functionality for users:

1. **User Wallets**
   - Users can have wallet balances
   - Funds can be added to wallet
   - Wallet can be used for donations/pledges

2. **Wallet Management**
   - View wallet balance
   - Add funds to wallet
   - Use wallet for payments

3. **Wallet Transactions**
   - Track wallet transactions
   - View wallet history
   - Manage wallet settings

### Fundraiser Payouts (Pro)

Pro version includes fundraiser payout management:

1. **Navigate to Fundraisers**
   - Go to **Growfund** > **Fundraisers**
   - Select fundraiser
   - Click **Payouts** tab

2. **Configure Payouts**
   - Set payout schedule
   - Configure payout method
   - Set payout thresholds

3. **Process Payouts**
   - Review pending payouts
   - Process payouts to fundraisers
   - Track payout history


## Guest Checkout (Pro)

Pro version allows guest checkout without requiring user registration:

1. **Navigate to Settings**
   - Go to **Growfund** > **Settings** > **Payment**
   - Find "Guest Checkout" option

2. **Enable Guest Checkout**
   - Toggle guest checkout on
   - Configure guest checkout settings
   - Save settings

3. **Guest Experience**
   - Donors/backers can checkout without account
   - Payment processed without registration
   - Receipt sent to email address


## Payment Security

### Security Best Practices

1. **HTTPS Required**
   - Always use HTTPS for payment processing
   - Ensure SSL certificate is valid
   - Regular SSL certificate renewal

2. **API Key Security**
   - Keep API keys secure
   - Never share API keys publicly
   - Regularly rotate API keys

3. **Payment Data**
   - Never store full payment card numbers
   - Use secure payment gateways
   - Follow PCI compliance guidelines

### PCI Compliance

Growfund uses payment gateways that handle PCI compliance:

- **Stripe**: PCI Level 1 compliant
- **PayPal**: PCI Level 1 compliant
- **WooCommerce**: Depends on gateway used

Payment data is processed securely through gateways, not stored on your server.

## Payment Testing

### Test Mode

Before going live, test payment processing:

1. **Enable Test Mode**
   - Configure payment gateways in test mode
   - Use test credentials
   - Make test donations/pledges

2. **Test Scenarios**
   - Test successful payments
   - Test failed payments
   - Test refunds
   - Test recurring payments (if applicable)

3. **Verify Processing**
   - Check transaction records
   - Verify email notifications
   - Confirm receipt generation

### Going Live

When ready to go live:

1. **Switch to Live Mode**
   - Update payment gateway settings
   - Switch to live API keys
   - Disable test mode

2. **Final Testing**
   - Make test live transaction
   - Verify processing
   - Confirm notifications

3. **Monitor Transactions**
   - Monitor transaction processing
   - Check for errors
   - Verify payment processing

## Best Practices

### Payment Gateway Configuration

- **Multiple Gateways**: Offer multiple payment options
- **Test Thoroughly**: Test all payment gateways before going live
- **Monitor Regularly**: Monitor payment processing regularly
- **Update Settings**: Keep payment gateway settings updated

### Transaction Management

- **Quick Processing**: Process transactions promptly
- **Clear Communication**: Keep donors/backers informed
- **Accurate Records**: Maintain accurate transaction records
- **Secure Handling**: Handle payment data securely

### Financial Management

- **Track Fees**: Monitor processing fees
- **Regular Reconciliation**: Reconcile transactions regularly
- **Accurate Reporting**: Generate accurate financial reports
- **Compliance**: Ensure compliance with financial regulations

## Related Documentation

- [Installation Guide](installation) - Initial setup and configuration
- [Getting Started](getting-started) - Payment gateway setup
- [Campaign Management](campaign-management) - Campaign payment processing
- [Donations](donations) - Donation payment processing

---

**Note**: Payment processing is critical for your fundraising platform. Proper configuration and security ensure smooth transactions and donor confidence.

