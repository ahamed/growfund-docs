import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

/**
 * Creating a sidebar enables you to:
 - create an ordered group of docs
 - render a sidebar for each doc of that group
 - provide next/previous navigation

 The sidebars can be generated from the filesystem, or explicitly defined here.

 Create as many sidebars as you want.
 */
const sidebars: SidebarsConfig = {
  tutorialSidebar: [
    {
      type: 'category',
      label: 'Getting Started',
      items: [
        'README',
        'installation',
        'getting-started',
      ],
    },
    {
      type: 'category',
      label: 'Core Features',
      items: [
        'core-platform-modes',
        'user-management',
        'campaign-management',
      ],
    },
    {
      type: 'category',
      label: 'Fundraising Features',
      items: [
        'rewards-pledges',
        'donations',
        'payment-system',
      ],
    },
    {
      type: 'category',
      label: 'Advanced Features',
      items: [
        'analytics-reporting',
        'email-notifications',
        'customization-branding',
        'fundraisers',
        'funds',
      ],
    },
    {
      type: 'category',
      label: 'Configuration',
      items: [
        'settings',
        'security-privacy',
      ],
    },
    {
      type: 'category',
      label: 'Support',
      items: [
        'troubleshooting',
      ],
    },
  ],
};

export default sidebars;
