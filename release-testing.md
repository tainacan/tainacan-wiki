# Testing Guide

This section describes the guide for integrity testing in the installation or update of the Tainacan Plugin for WordPress:

## Flow for RC version release _(Release Candidate)_

These are the procedures for new versions of the Tainacan plugin to be previously validated by the community, avoiding sending the plugin with bugs to the WordPress repository:

1. Disseminate the RC in the [Tainacan community](https://tainacan.discourse.group) so that usage tests can be performed;
2. Perform tests following this [Plugin Testing Guide](#plugin-testing-guide) below;
3. Resolve any problems found and release a new RC version _(Release Candidate)_ until the tests don't point to problems.
4. From there, follow the steps to [release a new version](/dev/release.md) for WordPress.

## Plugin Testing Guide

This guide is intended for performing tests that verify the proper functioning of functions and the execution of processes by the Tainacan Plugin.

?> Problems found can be reported as [issue on GitHub](https://github.com/tainacan/tainacan/issues ":ignore") or to the [community forum](https://tainacan.discourse.group ":ignore") of Tainacan. Some common errors such as pages not loading can be better described using [suggestions from the FAQ page](/pt-br/faq#acho-que-encontrei-um-erro-como-devo-proceder).

There are several types of tests that can be done to cover as many functionalities as possible. All start with the following basic steps:

<div style="float: right; margin-left: 32px;">

![Tainacan Admin Menu](/_assets/images/release-testing-1.png)

</div>

1. Access the **WordPress control panel** where your test version of the Tainacan plugin is installed and activated (usually, your site address + `/wp-admin`);
2. In the left sidebar, click on **Installation Diagnosis** in the Tainacan section:
3. Check if the installation has the recommended requirements for the _Tainacan Plugin_ to function.
4. Download the log file from the `Download Log` button to **attach this information** to the Test Report.
5. In the left sidebar, click on Tainacan:

- [x] Observe the loading time of the initial screen;
- [x] Observe if all page elements were displayed correctly;
- [x] Observe these aspects again when completing the following processes to report any substantial changes in screen loading time or incorrect display of elements.

Once this is done, choose a topic you want to test more thoroughly:

<div style="column-count: 2; column-width: 250px;">

- [Collections](/pt-br/testing-collections.md)
- [Taxonomies](/pt-br/testing-taxonomies.md)
- [Metadata](/pt-br/testing-metadata.md)
- [Filters](/pt-br/testing-filters.md)
- [Items](/pt-br/testing-items.md)
- [Faceted Search](/pt-br/testing-search.md)
- [Importers](/pt-br/testing-importers.md)
- [Exporters](/pt-br/testing-exporters.md)
- [Permissions](/pt-br/testing-capabilities.md)
- [Gutenberg Blocks](/pt-br/testing-gutenberg-blocks.md)
- [Item Submission](/pt-br/testing-item-submission.md)

</div>
