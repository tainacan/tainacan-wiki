# Metadata Sections

Starting from version 0.19, Tainacan includes the **Metadata Sections** feature. They provide a way to organize long lists of metadata into visual and structural groupings, giving more power to cataloging the data of an item. In the administrative panel, metadata sections are displayed as _collapsible_ panels, but on the public page of an item, they can be displayed in different ways depending on the theme settings. For example, they can be shown as tabs or prioritized for displaying one with more visual prominence than another.

In this article, we describe:

- The [general characteristics](#características-das-seções-de-metadados) of a metadata section;
- How to [create and edit](#criando-e-editando-seções) a metadata section;
- How to [remove a section](#removendo-seções) of metadata;
- How to [view the metadata section](#visualizando-seções-na-página-do-item) on the public page of the item;

Here, it is assumed that you are already familiar with the concept and the metadata editing flow. Otherwise, [consult Metadata](/pt-br/metadata.md).

## Characteristics of Metadata Sections

- Every section has a **Name and Description**, which will be displayed on the item filling page if configured;
- Every collection already has a section as soon as it is created, called the **_Default Section_**, whose initial name is "Metadata".
- The **_default section_ cannot be removed**, and its privacy is always tied to the privacy of the collection;
- Other **sections can be public or private**, which means their privacy implies the privacy of the metadata within them;
- Sections can be disabled, meaning their metadata will not be shown when displaying or filling items, even though the data still exists;
- Sections can contain an indefinite number of metadata within them, and these can be moved from one section to another at any time;
- Sections **can only be removed when they do not contain metadata** within them;
- The order of sections can also be changed;
- **There are no sections in repository-level metadata settings**. When inherited in collections, repository metadata will appear in the _default section_. From there, they can be ordered into other sections if necessary.

## Creating and Editing Sections

As mentioned earlier, unlike metadata, sections only exist at the collection level. There is also the so-called default section, which already exists in every collection. To create a new section, therefore, you must:

1. Access the metadata configuration page of a collection;
2. Below the list of "available metadata types," there will be a button labeled "Create new metadata section." It can be clicked or dragged and dropped into regions between sections.
3. Upon clicking, the section editing form will appear, where you must fill in at least the Name of the section. The other fields are optional;
4. Once the section is created, a new area that can receive metadata will be available below its title. New metadata (by dragging metadata types into it) or existing metadata from the default section or other already created sections can be moved into this area.
5. The order between sections can also be changed by dragging and dropping or using the arrows next to the drag icon.

## Removing Sections

Sections can only be removed if they are not the default section and do not contain any metadata within them.

1. First, remove or delete the existing metadata in the desired section;
2. Click the trash button on the right corner of the section;

## Viewing Sections on the Item Page

In the Tainacan administrative panel, sections are seen as higher hierarchy dividers in the metadata list on the item page. On the item editing page, these dividers can even be collapsed, hiding all their metadata. On the public page of the item, however, there are various ways through which a section can be displayed. It is up to [theme developers](/dev/creating-compatible-themes) to implement these sections using the [functions that load the sections](https://github.com/tainacan/tainacan/blob/develop/src/classes/theme-helper/template-tags.php ":ignore"). If this care is not taken, the metadata will be displayed without separation of functions, although still respecting the order in which they are in the sections. Fortunately, both for the [Tainacan Interface](/pt-br/theme.md#tainacan-interface) and for [Blocksy](/pt-br/theme.md#tainacan-interface), some example visualizations have already been implemented. The demonstrations below use the Tainacan Interface theme, but it is important to know that sections are not limited to them:

1. With the Tainacan Interface theme activated, access your collection settings.
2. In the configuration form, there will be a gray area with the theme settings. Choose there which layout you want to use to display the sections. The options are:
   1. Default - A simple division with indentation and a line separating the sections;
   2. Tabs - Each section is contained in a tab;
   3. _Collapses_ - Each section is in a collapsible panel, similar to the editor's behavior. Multiple panels can be opened at once, but only the first is initially open;
   4. Accordion - Similar to _collapses_, but only one can be open at a time;
3. Save the configuration and access the public page of an item on your site with the theme activated.
