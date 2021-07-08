# Frequently Asked Questions

We list and answer the most frequently asked questions by our community:

> To participate in the Tainacan community [register here](https://tainacan.discourse.group ":ignore")!

Skip to an specific section:

- [About Tainacan](#about-tainacan)
- [Support](#errors-and-support)
- [Installation and Hosting](#installation-and-hosting)
- [Menus, Pages and Blocks](#menus-pages-and-blocks)

---

## About Tainacan

### What does Tainacan mean?

The name _Tainacan_ alludes to the Brazilian indigenous legend of the god of constellations, bringing the perception of the dimension of space and its multiple possibilities of connections.

Tainacan as free software is developed from results of scientific research and experience with implementation in partner institutions, being a flexible and powerful tool for WordPress, which allows the management and publication of digital collections with the same ease of publishing posts in blogs, but maintaining all the requirements of a professional platform for repositories.

### Who develops Tainacan?

We are a network of researchers and developers that unites scientific knowledge and the implementation of technological solutions in cultural institutions.

Currently, our network gathers researchers from the University of Brasilia (UnB), Federal University of Goiás (UFG) and Brazilian Institute of Information in Science and Technology (IBICT) and also our developers and users from our Tainacan community [(register here)](https://tainacan.discourse.group).

### Why is Tainacan free software?

Its main goal is to help cultural institutions to organize, publish and spread their collections. It can also be used to build individual or collective repositories, for any purpose, and operates in an integrated way with the WordPress platform.

---

## Errors and Support

### I think I found an error. How should I proceed?

We are always available at [Tainacan's forum](https://tainacan.discourse.group ":ignore"), where conversations can be started and at [the project's github](https://github.com/tainacan/tainacan ":ignore"), where more technical _issues_ can be reported. If you start a conversation on the list, we recommend that you always give as much detail as possible so that you can help identify what is happening. Some suggestions are:

- Describe step by step what is being done, what occurs and what was expected;
- Check and if possible send us the information from [System Diagnosis Page](/optimization#system-check);
- If you have access to the server, send us the Logs - [See how here](#how-do-i-find-the-error-logs-of-my-server);
- Send us network and console information in the browser - [See how here](#how-do-i-see-network-or-browser-console-errors);
- If you have links for testing, even better!

#### How do I find the error logs of my server?

Some errors generated in the database or server-side operations can be identified by accessing your logs. If you have access to the server, sending these logs to the developers can be of help. Their location varies from each installation. On _apache_ servers, it is common to find logs in these paths:

- `/var/log/apache2/error.log`;
- `/var/log/apache/error.log`;

#### How do I see network or browser console errors?

Some errors may be reported in the browser instead of the server. This happens in situations where the screen gets stuck in some infinite loading state, for example. In this situation, it can be useful for developers to know information from their browser's `network` or `console` panel, which are part of the developer panel.

- In Firefox, access the Networks panel with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>E</kbd> and the Console with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>K</kbd>. Another option is to right click on the page, go to the "Inspect" option and from there look for the Network and Console tabs;
- In Google Chrome, access the developer panel with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>I</kbd> or by right clicking on the page and going to "Inspect". From there look for the Network and Console tabs.

In the **console** tabs, errors in general are listed highlighted, in red. In the **network** tab, there will always be a list of several requests. Those that can have problems in general are presented in red or with codes `404`, `401`, `500`, right from the start. Sometimes it may be necessary to click on a request from this list to find out more information, such as its response. Knowing this information can help developers to identify the problem. If possible, take a screenshot showing the content of these screens, including information hidden by scroll. If it is an error that occurs when entering the page or clicking on a button, try repeating the action with this screen open, to make sure it was registered there.

### I'm getting 404 errors or blank pages when accessing my collection on the site...

In some particular situations like when doing a site migration, starting a new installation or updating a plugin, it may arise the need to update the _permalinks_ structure of WordPress. The _permalinks_ are the addresses as specific names that are passed in the URL of your WordPress site to access the content. If when trying to access a collection that already existed, or if some of the [requests made by your site](#how-do-i-see-network-or-browser-console-errors) are returning 404 even with an Internet connection, it's possible that your site needs to rebuild its _permalinks_ list. This error is difficult to detect (so we can't report it well in [System Diagnostics](/optimization#system-check)) but fortunately it's very simple to fix!

Just do the following: Access the WordPress administrative panel and go to the side menu under **"Settings" -> "Permalinks "**. There, make sure that the option selected is **Post Name** or at least **Custom Structure** that has a _/%postname%/_ value. Once you have checked this, click on **Save Changes** (it is important to click even if the settings have not been changed). Reload the site and see if you can access the content in question.

### I'm not able to upload files. What do I do?

Check on the [System Diagnostics Page](/optimization#system-check) if your server's `uploads` folder has write permissions. If not, you must correct this by assigning read and write permissions to the server access user (usually the `www-data`).

If it still doesn't work, contact us on the list for analysis. Can you upload files to WordPress but not to Tainacan? What type of file format are you trying to upload? These are some information that can help us get started.

Other questions can be found [here](/optimization#blindando-o-wordpress).

### Some error occurred in the process of importing or exporting items. What to do?

In general, process errors such as importers and exporters are saved in a log file that can be accessed through Tainacan's own administrative interface. In the Processes list, open the process that gave error and download the log file. Send it to be analyzed by anyone who can help.

### I feel that my installation is taking too long to load the items... can you improve it?

If your collection is small and simple, then it's quite capable that there is some problem occurring and it can be discussed in the mailing list. If your base has thousands of items, with dozens of metadata, then the reasons for slowdowns may have to do with the server or with the current search settings. We suggest a detailed reading [of this page](/optimization) that will guide you through some options regarding performance.

---

## Installation and Hosting

### What is the difference between wp.com and wp.org?

wp.com or [wordpress.com](https://wordpress.com ":ignore") is a hosting platform, among the many existing ones that offer installations and servers ready with WordPress. wp.org, or [wordpress.org](https://wordpress.org ":ignore") is the official free WordPress software site, from where you can find installation information, documentation, community links, events... and among these things also hosting options. But its main purpose is to provide the tool that can be used by anyone to build websites in any hosting service.

### Can I use Tainacan on my wordpress.com blog?

Yes! But unfortunately the [free plan](https://wordpress.com/pricing/ ":ignore") of _wordpress.com_ will not allow you to install plugins. For that you need to use a paid plan that they offer. Remember that this is not the only way or option to host WordPress sites!

### Can I install Tainacan on my own computer?

Yes. But it's good to make it clear, **Tainacan is a plugin for a website platform**. Its function is not really that of a program that you open and close! _Local_ installations - as we call it when you set it up on your own computer - are useful for developers who want to contribute or just for those who want to do some testing before sending it to a server, where in fact the site will be hosted on the web and online 24 hours a day. To set up a WordPress installation ready for Tainacan, take a look at [our installation tutorials](/install)!

### So, what options do I have to host my repository?

Good question! We discuss this in more details in our [Hosting](/hosting) page.

---

## Menus, Pages and Blocks

### Can Tainacan items be inserted in WordPress posts?

Yes, it is possible! To add Tainacan items to a WordPress post (from version 5.0 on) insert a [Tainacan Gutenberg block](/gutenberg-blocks) by on the text editor. When inserting a block, you can search for Tainacan and you will be able to see which types of Tainacan blocks exist.

### How do I see the list of collections in the theme?

The list of collections is one of [Special Pages](/tainacan-pages) that Tainacan inserts. Just add `/collections` or `collections` to your website URL.

### How do I put the list of collections on the menu of my site?

Just go to the top bar in **Customize** > **Menus** > Select the Main Menu > **Add Items**. From here, in addition to other custom links, you can choose **"Collection Repository "** to show your list of collections or select any other collection or taxonomy term.

### How can I make the home page of my site the list of collections?

By default, your website homepage will be the list of posts to your blog. To set up a custom home page, go to the top menu at **Customize** > **Static page settings** and choose the page. However, because it is a [special page](/tainacan-pages) created by the plugin, the default page from the list of collections is not listed as an option. The solution is to create a page and list your collections on it, using one of the [Collection Blocks](/blocks-collections.md).

### What if I want other people to collaborate with my collection?

As your site administrator, you can register new users with different [roles and permissions](/users-roles) to edit your collection. If, however, you want items to be submited without new users being registered in the system, you can create a public [Item Submission Form](/item-submission), to receive direct external contributions in your repository.

> To join the Tainacan community [sign up here](https://tainacan.discourse.group)!
