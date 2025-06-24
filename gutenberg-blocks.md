# Gutenberg Blocks

## What is this “Gutenberg” thing?

At the end of 2018, WordPress 5.0 introduced its new editor for Posts and Pages, nicknamed **Gutenberg**:

<div style="text-align: center; font-size: 1.5rem;">
[https://wordpress.org/gutenberg/](https://wordpress.org/gutenberg/ ":ignore")
</div>

Focused on providing a dynamic and visual way to edit content, this editor treats every element of a page — from the simplest paragraphs to the most complex image galleries — as a **“Block”**. 

With it, you can easily build a post for a new collection launch, using images with different alignments, columns, text grids, maps, titles, or bold call-to-action buttons. Plus, [there are countless plugins available](https://wordpress.org/plugins/browse/blocks/ ":ignore") that add new rich and attractive blocks to WordPress.

<div style="float: right; margin-left: 32px;">
![List of Tainacan Gutenberg Blocks](/_assets/images/gutenberg-blocks-list.jpg ":size=450")
</div>

## Tainacan Blocks

Tainacan wouldn’t miss out, and it embraces this tool by providing dedicated blocks for the content generated within your repository.

> By combining Gutenberg blocks with your Tainacan content, it’s simple to create narratives, tell stories, and present your digital collections in an accessible, visually rich way.

To use any of these blocks, just edit a post or page and browse the available block list. Here are the blocks you can use:

- [Collections List](/en/blocks-collections#collections-list) _(Static)_;
- [Terms List](/en/blocks-terms#terms-list) _(Static)_;
- [Collection Items List](/en/blocks-items#collection-items-list);
- [Item Media Gallery](/en/blocks-item#item-media-gallery);
- [Item Submission Form](/en/blocks-item#item-submission-form);
- [Search Bar](/en/blocks-items#search-bar) _(Tainacan)_;
- [Faceted Search](/en/blocks-items#faceted-search) _(Full Item List)_;
- [Facets List](/en/blocks-facets#facets-list);
- [Items Carousel](/en/blocks-items#items-carousel);
- [Collections Carousel](/en/blocks-collections#collections-carousel);
- [Terms Carousel](/en/blocks-terms#terms-carousel);

## Important Concepts

Before exploring the available Tainacan blocks, it’s worth understanding some general concepts about how blocks work. The figure below illustrates the sections related to a block when inserted in the editor:

![Editor block sections](/_assets/images/gutenberg-blocks-sections.jpg)

1. The **Block Toolbar**. Here you’ll find settings like view mode, block alignment, and options to delete the block, insert new blocks before or after, or create a block group.
2. The **Block Content Area**. When active (clicked or in focus), Tainacan blocks display a grey area with their main settings — usually a data source selector (such as a specific collection). This area doesn’t appear in the published post.
3. The **Editor Sidebar**. In this area, besides general page settings, you can configure settings for the selected block. All blocks have an **Advanced** settings option where you can assign custom classes, making it ideal for advanced customizations via CSS.

<div style="float: right; margin-left: 32px;">
![Block Alignment Options](/_assets/images/gutenberg-blocks-alignments.png ":size=250")
</div>

### Block Alignments

Among the settings mentioned above, one worth highlighting is **Block Alignment**. Some blocks (both Tainacan and others) support one or more alignment options, as shown in the figure:

Initially, blocks are aligned as **centered** by default. You can select **Left Align** or **Right Align**, which applies a `float` style. This works well when combined with text but can cause layout constraints if space becomes too tight — **always test and preview**!

The options **Wide Width** and **Full Width** are ideal for themes that offer templates with larger margins, allowing certain sections to break out of the page’s main column. The figure below demonstrates this:

![Example of Wide and Full Width Alignments](/_assets/images/gutenberg-wide-alignment.jpg)

The **Tainacan Interface** theme has a side margin that limits the post area to roughly 1,400px. Within this area, text and other elements have further internal padding. 

Applying **Wide Width** to the [Items Carousel Block](#items-carousel) allows it to extend slightly beyond the text area for greater emphasis. Meanwhile, using **Full Width** allows the [Collection Items Block](#collection-items-list) to stretch across the screen, breaking free of the post’s margins — ideal for creating visually striking layouts, such as custom headers.

### Page Templates

Some themes provide a **“Page Templates”** feature — a way to offer different page layouts. For example, you might want a page with a sidebar, or one with no side padding at all. 

In the **Editor Sidebar**, under the **Page** tab (usually located toward the bottom), you can select a page template. The **Tainacan Interface** theme currently offers three templates:

- `Default`
- `Landing`
- `Landing with Breadcrumb`

If you’ve created pages with this theme before, you’re already familiar with the `Default` template. It always includes, in this order:

1. The site menu;
2. The breadcrumbs (or “breadcrumb trail”);
3. The site header/banner;
4. The page header area (title and sharing buttons);
5. The page content (built with the block editor);
6. The site footer.

These elements aren’t always ideal for every page. For example, when creating a custom homepage for your repository, you can use the `Landing` template, which displays only:

1. The site menu
2. The page content
3. The site footer

And if you want to add breadcrumbs, you can use the `Landing with Breadcrumb` template:

![Examples of Page Templates](/_assets/gifs/gutenberg_page_templates.gif)

### WYSIWYG, or the Differences Between Editor and Page

Ideally, the editing experience would be **“WYSIWYG”** — what you see is what you get. In other words, what you see in the block editor would match precisely what appears on the published page. This is true in roughly 99% of cases, but a few exceptions deserve attention:

First, this depends greatly on how well the theme supports block styles. In some themes, even the font used in the editor might be different from the one rendered on the page. In the **Tainacan Interface** theme, we’ve tried to match styles as closely as possible, but some discrepancies are inevitable — especially for **alignment and margin settings**. In the editor, blocks have internal margins for better drag-and-drop editing, which disappear when the page is rendered.

Also, when using **Wide** and **Full Width** settings, the editor can be misleading. The sidebar and admin panel reduce the available space in the editor, making it seem like certain elements only fit a certain way, when in fact the published page has more space available.

Finally, **colors** (e.g., titles, lines, links) will always be shown in the editor as the theme’s internal “Turquoise Blue” color. When rendered on the site, these elements adopt the theme’s actual configured colors.

### New Blocks

Don’t be afraid to explore [other available blocks](https://wordpress.org/plugins/browse/blocks/ ":ignore") to use in your posts and pages.

!> ⚠️ **Important:** Every new block added creates a dependency for your site. If one day you remove that block or plugin, any post or page relying on it may lose its formatting, or even its content. Choose wisely!

Here’s an example of a block we like:
- [Grids - Layout Builder for WordPress](https://wordpress.org/plugins/grids/ ":ignore")

Another important consideration is that when you switch themes, block appearances can also change drastically. The Gutenberg editor is still relatively new, and not all themes fully support its advanced layout options (like **Wide Width**). Tainacan blocks should work well across most themes, but expect differences in spacing, font, and alignment due to theme styles.