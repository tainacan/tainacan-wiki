# Gutenberg Blocks

---

## What is this "Gutenberg" thing?

In late 2018, WordPress 5.0 introduced its new Post and Page editor to the world, nicknamed Gutenberg:

<div style="text-align: center; font-size: 1.5rem;">

[https://br.wordpress.org/gutenberg/](https://br.wordpress.org/gutenberg/ ":ignore").

</div>

It's focused on providing a dynamic and visual way to edit content. In this editor, all elements of a page, from the simplest paragraphs to the most complex image gallery, are called "**Blocks**". With it, it becomes easy to build a collection launch post, using images with different alignments, columns, text grids, maps, titles, or more eye-catching buttons. In addition, [there are various existing plugins](https://br.wordpress.org/plugins/browse/blocks/ ":ignore") for WordPress that offer you new rich and attractive blocks.

![List of Tainacan Gutenberg Blocks](pt-br/_assets/images/gutenberg-blocks-list.jpg ':size=450 :class=alignright')

## Tainacan Blocks

Tainacan couldn't be left out and uses this tool to provide blocks dedicated to content generated in your repository.

> By combining Gutenberg blocks with your Tainacan content, it becomes simple to create narratives, tell stories, and present your digital collection in an accessible way to the world.

To use any of the blocks, simply edit a post or page and look for one of our blocks in the list of available blocks. They are:

- [Items List](/blocks-items#lista-de-itens) _(static)_;
- [Collections List](/blocks-collections#lista-de-coleções) _(static)_;
- [Terms List](/blocks-terms#lista-de-termos) _(static)_;
- [Collection Items List](/blocks-items#lista-de-itens-da-coleção);
- [Item Media Gallery](/pt-br/blocks-item#galeria-de-midias-do-item);
- [Item Submission Form](/blocks-item#formulário-de-submissão-de-itens);
- [Tainacan Search Bar](/blocks-items#barra-de-busca-tainacan);
- [Faceted Search](/blocks-items#busca-facetada) - _(The Complete Items List)_;
- [Facets List](/blocks-facets#lista-de-facetas);
- [Items Carousel](/blocks-items#carrossel-de-itens);
- [Collections Carousel](/blocks-collections#carrossel-de-coleções);
- [Terms Carousel](/blocks-terms#carrossel-de-termos);

---

## Some Important Concepts

Before you start exploring Tainacan blocks, however, it might be useful to understand some general concepts. The figure below shows the sessions related to your block when inserted in the editor:

![Sessions related to the block in the editor](/pt-br/_assets/images/gutenberg-blocks-sections.jpg)

1. This is the top bar of your block. It usually contains settings such as the display mode, block alignment, as well as options to delete, insert blocks before or after, and create a block group;
2. This is the content area of the block itself. When active — that is, clicked, in focus — Tainacan blocks generally have a gray area with the main configuration to be made (usually choosing a data source, such as a collection). This area does not appear in the final version of the post, which can be observed by moving the focus away from the block;
3. This is the editor's sidebar where, in addition to document settings, the options for the currently active block are located. It contains various types of block-related options. All blocks have an advanced setting at the end of this session that allows assigning classes to blocks, which can be used for advanced CSS customizations.

![List of Possible Block Alignments](pt-br/_assets/images/gutenberg-blocks-alignments.png ':size=250 :class=alignright')

### Block Alignments

Among the settings mentioned above, it's worth commenting on **block alignments**. Some blocks (not just Tainacan's) offer one or more of the alignments shown in the figure on the side.

In general, a block starts with the "Center" setting by default. When you select "Align left" or "Align right", the editor will push the block to that side, using CSS `float` options. This can work well if there is text flowing next to the block, **but it can also leaveyour block with little space**, it's worth testing and previewing the document to make sure it's suitable!

The "Wide width" and "Full width" options are useful for themes that offer templates with wide margins that can be extended. The following figure demonstrates this:

![List of Possible Block Alignments](/pt-br/_assets/images/gutenberg-wide-alignment.jpg)

The theme (Tainacan Interface) has a side margin that limits the post width to 1400px. In addition, within the post itself there is an internal margin that further reduces the width of the text body. Using "Wide width" in the [Items Carousel Block](#carrossel-de-itens) above, we extend the text body margin a bit, to give it prominence. But we can go further. Using "Full width", we make the [Collection Items Block](#lista-de-itens-da-coleção) just below, occupy the entire available width, overflowing the post margins. This feature is widely used to present visual highlights on your page, or to compose custom headers.

### Page Templates

Some themes offer a WordPress feature called **"Page Templates"**. These are ways to offer different page layouts to a user. For example, you might prefer a page with a sidebar next to it, or with no margins at all. This setting can be made in the **Editor Sidebar**, on the **Document Tab**, usually among the last options.

The _Tainacan Interface_ currently offers 3 templates:

- `Default`;
- `Landing`;
- `Landing with Breadcrumb`;

If you have already created a page with it, then you already know the `Default` template. This is the model used for pages and posts and always has, in the following order:

1. The site menu;
2. The auxiliary navigation bar (also known as breadcrumb);
3. The header banner, with the repository name;
4. The Page header section, which includes the title and share buttons;
5. The internal content of the page - This is the part created via the Block Editor, Gutenberg;
6. The site footer;

These elements may be undesirable in some situations. Suppose you want to create a customized version of your repository's homepage. In this case, you can use the `Landing` template, which from the list above displays only items **1**, **5**, and **6**. The `Landing with Breadcrumb` template adds item **2** to this list:

![Examples of template uses](pt-br/_assets/gifs/gutenberg_page_templates.gif)

### WYSIWYG or the Differences Between Editor and Page

Ideally, the editing experience should be, as we call it in computing, "**WYSIWYG**" which stands for "What You See Is What You Get". In other words, what is seen in the block editor should be equivalent to what will be on the published page. This is true for 99% of cases, but it's worth highlighting some exceptions.

Firstly, this symmetry between editor and page depends a lot on how good the Theme's support for this was. In some themes, even the font seen in the editor will be different from the one seen on the page. In _Tainacan Interface_ we try to apply as much styling as possible, but not everything turns out perfect. An example of this are **alignments and margins**. In the editor, there are extra margins between elements, which are part of the blocks. These margins are important to allow block handling, but when we view the page, they will not be there. When using "Wide width" and "Full width" alignments, we might think that X items fit on a single line of the page, but when we view it, we see that there is more space, because in the editor, we have **the Editor Sidebar and the WordPress Admin Panel itself that take up screen space**. To eliminate this effect a bit, you can use the editor in Full Screen. Finally, **the colors observed in elements like Titles, Lines, and Links, will always be the theme's default** in the editor (the "Turquoise Blue"), but when viewed on the site, these will have been replaced by the color that was customized for the Theme.

### New Blocks

Don't be afraid to look for [other blocks](https://br.wordpress.org/plugins/browse/blocks/ ":ignore") to install and test in your publications.

> It is important to say, however, that with each new block, you create a dependency for your site. If one day you uninstall this block, those posts that used them will have their content lost or at least disfigured. So use sparingly!

Here are examples of extra blocks we like:

- [Grids - Layout Builder for WordPress](https://wordpress.org/plugins/grids/ ":ignore")

Another important observation is that, when changing themes, your blocks may look quite different. Gutenberg's arrival is still very recent and not all themes offer good support for its features (such as "Wide width" alignment, for example). Our blocks should work well in themes in general, but there may be differences in spacing, font, and alignments depending on the page styles.
