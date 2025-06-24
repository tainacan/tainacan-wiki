# Hosting

?> This page is dedicated to listing production-ready hosting options for WordPress installations tested with Tainacan. Community users are encouraged to share their experiences here.

To use Tainacan, you need a _live_ WordPress installation. If you have knowledge in _Information Technology_, it's possible to set up WordPress on your own computer, as [described in this section](xampp.md). However, ideally your site will be hosted on a server — a machine that stays on and permanently connected to the internet. There are several services available for **online hosting**, many of which are even optimized for WordPress.

On this page, we will list:
- [Features and characteristics to expect from a hosting service suitable for using Tainacan](#what-to-expect-from-hosting-for-tainacan)
- [Well-known services tested by the community](#third-party-hosting-services-tested)

## What to expect from hosting for Tainacan?

### WordPress Installed

As a fundamental requirement, your setup must include a [WordPress](https://br.wordpress.org/ ":ignore") installation, or at least allow you to install one, with full access to the admin dashboard. Although Tainacan works with any version from WordPress 4.8 onwards, we recommend using the [latest version](https://br.wordpress.org/download/releases/ ":ignore"), preferably version 5.0 or higher, to take advantage of all features, such as the [Gutenberg blocks](/pt-br/gutenberg-blocks.md). You will need permissions to install plugins in order to activate Tainacan (which, [as mentioned here](/pt-br/faq.md#qual-a-diferença-entre-wpcom-e-wporg), rules out some free hosting plans such as those offered by [WordPress.com](https://br.wordpress.com/ ":ignore")).

#### Some Server Requirements

It's very likely that if your hosting plan includes WordPress installed, these requirements are already met, but if you're going to install one yourself, make sure you have:

  - `Apache` or `Nginx` running  
  - Minimum `PHP` version 5.6  
  - Required `PHP` modules:
    - `curl`
    - `exif`
    - `imagick`
    - `gd`
    - `zlib`


After activating the Tainacan plugin, you can check the [“System Diagnostics” page](/pt-br/optimization#diagnóstico-do-sistema) to see if these requirements are met. If not, you can contact your hosting provider for help with your configuration.


### SSL Enabled

### Registered Domain

In short, registering a domain means having a reserved address on the internet, which browsers will use to direct people to your site when they enter your URL or link (for example, `myonlinecollection.com.br`). This is a separate service from the actual hosting of your content, and it can be done through specific providers (such as [registro.br](https://registro.br/ ":ignore") and [br.godaddy.com](https://br.godaddy.com/ ":ignore")), or offered by your hosting provider.

## Third party hostin services tested

Below are links to some hosting services that are popular with members of our community. It is important to note that there may be many others and that we do not necessarily endorse one option more than another.

| Service   | Link  | Comments |
| --------- | -------------- | ---------- |
| Hostinger | https://www.hostinger.com.br/hospedagem-wordpress | Simple setup. Includes all necessary PHP modules, SSL and offers a free domain for a certain period of time. |
