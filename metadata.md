<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Metadata Icon" 
		src="/_assets/images/icon_metadata.png"
		width="42"
		height="42">
</div>

# Metadata

In Tainacan, _“items”_ are organized through _“collections”_, and each _“collection”_ can have specific _“metadata”_ or share _“metadata”_ among themselves. _“Metadata”_ are used to describe _“items”_, aiming at their retrieval.

> _“Metadata”_ define the characteristics, parameters, and specificities of the information that will be inserted along with the digital document during the submission of _“items”_ to the _“collections”_. It is similar, for example, to the configuration of fields that will be part of a “_form”_, or the fields of a “_museum record”_.

Each _“metadata”_ has a set of possible configurations: Is it _“mandatory metadata”_? Are its _“values”_ _unique_ for each _“item”_ (registration number, for example)? Does it accept _“multiple values”_ (multiple authors, for example)?

In this article, we describe:

- The [general characteristics of metadata](#características-gerais-de-metadados), present in all types;
- How to create metadata, either at the [repository level](#criar-metadados) or [collection level](#criar-metadados-à-nível-de-coleções);
- The [types of metadata](#tipos-de-metadados) and their particularities;
- How to [edit existing metadata](#editar-metadados);
- How to [delete metadata](#excluir-metadados);

In other articles, you can also find relevant information such as:

- How to organize long lists of metadata with the [Metadata Sections](/pt-br/metadata-sections.md) feature;
- How to edit multiple metadata at once with [Bulk Actions](/pt-br/bulk-actions.md);
- It is also possible to import and export _“predefined metadata”_. [Consulte Importadores](/pt-br/importers.md);

---

## General characteristics of metadata

- By default, all _“collections”_ have the _“Title”_ and _“Description”_ _“metadata”_, which cannot be deleted but can be _“edited”_ or _“disabled”_. These _“metadata”_ are used in some listings within Tainacan to represent the _“item”_;
- _“Inherited metadata”_ can be “_enabled”_ or “_disabled”_, which implies their existence for completion during the submission of a new _“item”_ and also their absence (with their respective data) during the visualization of _“collections”_ and _“items”_;
- **_“Repository-level metadata”_ are inherited by all _“collections”_** in the repository, marked with “_inherited_” next to the name;
- It is not possible to change the _“Metadata Type”_. For example, changing _“metadata”_ from type “_Text”_ to “_Long Text”_, or “_Numeric”_ to “_Date”_, after its creation;
- _“Metadata”_ that were not inherited from the repository can be deleted and display a _“trash icon”_ next to them. See [Delete metadata](#excluir-metadados) to learn more.

Tainacan does not have a _“standard metadata model”_, but rather different _“types of metadata”_ that can be chosen to meet the user's needs when building their digital collection. Choosing the correct _“metadata type”_ will help when filling in the information and, consequently, in the more precise retrieval of _“items”_.

_“Metadata”_ can be created automatically during bulk data import or manually during the creation of the _“collection”_ via the _“administrative panel”_.

## Create Metadata

_“Metadata”_ can be created manually at the _“repository”_ or _“collection”_ level. _“Metadata”_ created at the _“repository”_ level are inherited by all _“collections”_.

_“Repository-level metadata”_ should be designed to allow the insertion of global information, that is, common to at least a large part of the repository. For example: _“Registration Number”, “File Type”, “Item Registration Date”, “Conservation Status”_, etc.

New _“collections”_ can also be created with a model of “_predefined metadata_” or imported from external sources. _“Collections”_ created with _“predefined metadata”_ have a set of _“pre-established metadata”_ during their creation and can be managed in the same way as other _“collections”_.

Since version 0.6 of the plugin, there is an option to create _“collections”_ with a set of _“metadata”_ based on the _“Dublin Core”_ model.

New sets of _“metadata”_ can be developed according to the individual needs of each installation and/or added to Tainacan. See [Desenvolvimento do Plugin](/dev/) to learn more about Tainacan development.

1. Log in to WordPress with your _“username”_ and _“password”_;

   ![Access the control panel](_assets\images\050.png)

2. In the _“administrative panel”_, click on _“Tainacan”_;

   ![Access the control panel](_assets\images\051.png)

3. Click on _“Repository Metadata”_;

   ![Access the control panel](_assets\images\070.png)

4. To “_create new metadata”_, simply click on the _“metadata”_, and it will appear last in the listing on the left side. You can also use the drag-and-drop feature, which allows _“metadata ordering”_ during its creation.

## Create Metadata at the Collection Level

- Metadata at the collection level is applied only to the items created in that collection. The metadata is also applied to child collections of that collection;
- Create or choose the collection where you want to create new metadata. See Create collection to learn more;

1. Log in to WordPress with your _“username”_ and _“password”_;

   ![Access the control panel](_assets\images\050.png)

2. In the _“administrative panel”_ click on _“Tainacan”;_

   ![Access the control panel](_assets\images\051.png)

3. Create a _“collection”_ as presented in the "_Create Collections_" topic;

4. Access the created _“collection”_ and click on _“Metadata”;_

   ![Access the control panel](_assets\images\064.png)

5. To _“create new metadata”_, simply click on the _“metadata”_, and it will appear last in the listing on the left side. You can also use the drag-and-drop feature, which allows _“metadata ordering”_ during its creation. See[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados)[Types of metadata](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados) to find out the most suitable _“metadata”_ for each type of information;

6. Each _“metadata”_ created has a set of individual configuration and function options. Below, we describe the general functions that can be configured in practically all _“metadata”_. See the metadata area to learn how to use specific settings (linkar);

   ![Access the control panel](_assets\images\071.png)

   **“Name”**: Name of the _“Metadata”_, For example: _“Item Material”_, _“Conservation Status”_, etc.;

   **“Description”**: Brief description, useful to describe or explain how the _“metadata”_ should be filled. The description can be viewed by hovering the cursor over the question mark icon, which is next to the _“metadata”_, during filling;

   ![Access the control panel](_assets\images\descricao_metadado.png)

   **“Placeholder (reserved space)”**: Field used by _metadata_ with text field to give a short filling instruction. For example: _"Type the full name here..."_.

   **“Status”**: Determines the privacy level of the _“metadata”_, that is, for sensitive information that should not be available to visitors or for a specific role. See[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/users)[User Permissions](https://tainacan.github.io/tainacan-wiki/#/pt-br/users) for more details;

   ​ ■ “Visible to all”: Are displayed together with the “item”, depending on the privacy level of this “item” and the “collection” to which it belongs;

   ​ ■ “Visible only to editors”: Are displayed only to administrators, editors, and moderators of the _“collection”_. See[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/users)[User Permissions](https://tainacan.github.io/tainacan-wiki/#/pt-br/users) for more details.

   **“Display in Listing”**: Determines whether the _“metadata”_ is presented by default in the item visualization:

   ​ ■ “Display by default”: The “metadata” is displayed by default on the “collection” visualization page (depending on the type of visualization), and in the preview of the “item”;

   ​ ■ “Do not display by default”: The “metadata” is not displayed by default in the “collection” visualization, but can be selected for display by the user (depending on the type of visualization), and displayed in the preview of the “item”;

   ​ ■ “Never display”: The “metadata” is not displayed in the “collection” visualization and is also not available as an option for selection on the “collection” visualization page. The _“metadata”_ remains visible in the _“item”_ visualization, change the _“metadata status”_ to change its privacy level.

   **“Filling options”**:

   ​ ■ “Mandatory”: Determines whether filling in the “metadata” is mandatory. This implies the submission of the “item”, which is not allowed if the filling field of this “metadata” is empty;

   ​ ■ “Unique or Multiple”: Determines whether the “metadata” allows the insertion of a single value or multiple values, such as, for example, “metadata” about “Color”, “Material”, etc;

   ​ ■ “Unique Value”: Determines that the value inserted in the “metadata” does not repeat in other “items” in the repository (for “metadata” created at the repository level) or in the same “collection” (for “metadata” created at the collection level).

   **“Semantic URL”**: URL of the semantic description of the _“metadata”_. Optional configuration;

   Depending on the _“metadata type”_, there are also specific options to be configured. See[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados)[Types of metadata](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados) for more details.

7. After filling in and configuring the _“metadata”_, click on _“Save”_, or click on _“Cancel”_ to abort the mission. Once saved, the created _“metadata”_ will appear as a field to be filled in during the submission and editing of new _“items”_.

## Types of Metadata

Below, we describe each of the available _“metadata types”_ and their configurations.

### Simple text

For _“metadata”_ of short and free texts. Does not allow the insertion of paragraphs;

![Access the control panel](_assets\images\066.png)

### Text Area

For _“metadata”_ of short and free texts. Allows the insertion of paragraphs;

![Access the control panel](_assets\images\067.png)

### Date

For _“metadata”_ of complete dates in the _“DD/MM/YYYY”_ format. If you do not have the complete date, we suggest choosing other fields for date insertion, such as _“numeric”_ and _“short text”_. This _“metadata”_ allows the retrieval of _“items”_ by time intervals in two types of filters. Access Filters available for each Metadata Type to learn more;

![Access the control panel](_assets\images\076.png)

### Numeric

For _“metadata”_ that contain only numbers. This type of _“metadata”_ allows the retrieval of _“items”_ by intervals. Access Filters available for each Metadata Type to learn more;

​■**Additional settings**

​Step: You can configure the amount to be incremented/decremented when clicking the control buttons during the filling of the _“metadata”_. For example: when using the _“numeric metadata”_ as _"Decade"_, you can set the step to 10. In filling, when clicking on the arrows, the value will be incremented by 10.

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/_hRrB6wVY7k" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

### Selection list

For _“metadata”_ that have a small set of controlled terms. Unlike _“taxonomy”_, the terms do not become links on the _“item”_ page and do not have their own page;

​■**Additional settings**:

​The terms are added in the _“Options”_ field. To add more values, just type the term and click on the \*“Enter”**\*;**

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/-UoNKi7KfBw" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

!>**Attention**: To create new terms in the selection list, the user must have permission to edit the metadata in question. The selection list "metadata" does not allow the creation of new terms during filling; these terms need to be configured beforehand.

### Taxonomies

“\*Taxonomy type metadata**\*”** use a _“taxonomy”_ created beforehand. This type of _“metadata”_ is especially useful for structured information from a _“controlled vocabulary”_, allowing even the hierarchization of terms. Below, we present the steps to configure a metadata of the _“Taxonomy”_ type.

​■**Additional settings:**

​As mentioned above, it is necessary to first create a _“Taxonomy”_. This will be used during the creation process of a _“Taxonomy Metadata”_:

1.Create a _“taxonomy”_. See[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/taxonomies?id=criar-taxonomias)[Create Taxonomies](https://tainacan.github.io/tainacan-wiki/#/pt-br/taxonomies?id=criar-taxonomias) to learn more;

2.Create a _“metadata”_ of the _“Taxonomy”_ type. See Create Metadata to learn more;

3.In the _“metadata editing area”_, select the desired _“taxonomy”_ for filling in the values in the _“metadata”_;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/bDy0FQFolAs" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

4.Choose the type of information entry during the filling of the values in the _“metadata”_;

![Access the control panel](_assets\images\077.png)

​■**Entry of the type** **“Tag input”**:

In this type of entry, the user is offered only a search box. The terms can be explored by typing and searching;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/RUaAFqM_XmE" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

■**Entry of the type** **"Checkbox”:**

This type of entry helps the user to know which terms are available for selection in a given _“Taxonomy”_. The terms can be explored in alphabetical order or by typing and searching;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/6-3nRtvMvXQ" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

5.Check the _“Options list always visible”_ option if you are displaying a checkbox or radio button list and want the options list to be always visible during filling. This option is only available for the _“Checkbox”_ type entry;

![Access the control panel](_assets\images\080.png)

6.If necessary, enable _“Allow new terms”_ to authorize the creation of new _“Taxonomy”_ terms during the submission of _“items”_.

![Access the control panel](_assets\images\081.png)

■**“Filtered link to the collection”**

The terms of _“Taxonomy”_ become items on the _“Item”_ page. This gives the user the possibility to visit a facet or cut of the collection. For example: in a record of a gold coin, when clicking on the link referring to the term _"gold"_, the visitor will have access to all _“items”_ that have been classified with the same material. As a _“Taxonomy”_ can be shared among different _“collections”_ in Tainacan, you can configure whether the _“item”_ link will give access to items from other collections or only from the collection in which the item is inserted.

![Access the control panel](_assets\images\082.png)

### Relationship

_“Relationship metadata”_ allow you to connect items from the same collection or between items from different collections, that is, assign an item from one collection as a value for its filling;

​■**“Additional settings”**

1.Select the _“related collection”_ to point to the source of the _“items”_ list in the filling of the _“metadata”_;

2.When a _“collection”_ is selected, the _“Search Metadata”_ section allows you to choose the metadata of this _“collection”_ that will assist in locating _“items”_ during the filling of this _“metadata”_;

3.Enable _“allow repeated items”_ so that the same _“item”_ from the _“related collection”_ can be assigned as the value of the _“metadata”_ in different _“items”_.

<iframe
      width="560"
      height="513" 
      src="https://www.youtube.com/embed/z1lc9X9GMTE" title="YouTube video player"
      frameborder="0"
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen>
</iframe>

### Composite

_“Composite metadata”_ are those whose value cannot be represented in isolation by a single field. For example, a residential address can be composed of _“text”_, _“number”_ fields, and even _“selection lists”_. These fields or internal _“child metadata”_ of the composite are called _“Child Metadata”_.

It is important to differentiate this concept from a [_“Metadata Section”_](/pt-br/metadata-sections.md), whose purpose is only to organize _“grouped”_ data. **For simple visual separation, do not use it**. In the case of _“composite metadata”_, it is possible to have composite multivalues, that is, a list of values constituted by different sub-values that relate to each other.

Note that, when using them:

● It is not possible to have a “Taxonomy” as a “Child Metadata”;

● A “composite metadata” cannot be marked as “Mandatory” or “Unique Value”. This attribute will be marked in the children. If the “composite metadata”, however, is marked as “Accepts multiple values”, its children cannot be marked as “Mandatory”;

● The “child metadata” cannot be marked as “Multivalued”, and do not have visualization options (“View in list”), these settings correspond to the parent;

● “Composite metadata” are not available as an option for “Advanced Search” or “Bulk Editing”, only their children.

​■**Additional settings:**

1.As soon as you create a _“composite metadata”_, an area for creating children is formed below its form. Drag the desired _“metadata types”_ into this area to create children;

2.Note that the ordering works internally among children, but once created, it is not possible to promote the _“metadata”_ to _“non-children”_.

<iframe
      width="560"
      height="513" 
      src="https://www.youtube.com/embed/x-iUm3pbOmQ" title="YouTube video player"
      frameborder="0"
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen>
</iframe>

### User

“_Metadata”_ of the _“User”_ type assign a WordPress user as a value for their filling. With it, you can link users to _“items”_ and define a meaning for such a link, generally desired for management purposes.

§ If you want the field to be initially filled with the value of the current “Item Author” (the user who created it), check the option “By default, it is the item author”.

> **Note:** Checking the above option does not make _“already existing”_ items have their values of this _“user type metadata”_ automatically filled. For this, you can use the _“Copy”_ method in bulk editing, passing data to the _“user type metadata”_, coming from the _“Created by”_ attribute, which is equivalent to the _“item author”_.

Currently, Tainacan has nine types of _“metadata by default”_, but new sets[ ](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type)[can be developed](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type) according to the individual needs of each installation and/or added to the core of Tainacan. See the article on [Development of the Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) to learn more.

## Edit Metadata

As detailed in the metadata creation section, _“metadata”_ can be created both at the _“repository level”_ (will be inherited by all collections) and at the level of a specific _“collection”_. Therefore, _“metadata”_ can be edited at these two levels.

### Editing at the Repository Level

1. Access the _“control panel”_ of WordPress;

   ![Access the control panel](/pt-br/_assets\images\050.png)

2. In the left sidebar, click on _“Tainacan”_;

   ![Access the control panel](/pt-br/_assets\images\051.png)

3. Click on _"Repository Metadata"_ (metadata that are inherited by all collections);

   ![Access the control panel](/pt-br/_assets\images\085.png)

   !>**Attention**: Changes to _“repository-level metadata”_ settings can affect data that has already been filled and information in items that will be or have already been created throughout the repository.

4. Click on the _“pencil icon”_ to the right of the _“metadata”_ you want to edit;

   ![Access the control panel](/pt-br/_assets\images\086.png)

5. When you finish the changes, click on _“Save”_ or click on _“Cancel”_ to abort the mission;

   !>**Attention**: It is not possible to change the _“Metadata Type”_. For example, changing _“metadata”_ from type _“Text”_ to _“Long Text”_, or _“Numeric”_ to _“Date”_.

### Editing at the Collection Level

1. Access the _“control panel”_ of WordPress;

   ![Access the control panel](/pt-br/_assets\images\050.png)

2. In the left sidebar, click on _“Tainacan”_;

   ![Access the control panel](/pt-br/_assets\images\051.png)

3. Click on the _“collection”_ you want to edit;

   ![Access the control panel](/pt-br/_assets\images\087.png)

4. Click on _“metadata”_;

![Access the control panel](/pt-br/_assets\images\088.png)

5. Click on the _“pencil icon”_ to edit the _“metadata”;_

   ![Access the control panel](/pt-br/_assets\images\089.png)

!>**Attention**: It is not possible to change the _“Metadata Type”_. For example, changing _“metadata”_ from type “_Text”_ to “_Long Text”_, or “_Numeric”_ to _“Date”_.

## Delete Metadata

Delete _“Repository-level Metadata”_:

1. Access the _“control panel”_ of WordPress;

   ![Access the control panel](/pt-br/_assets\images\050.png)

2. In the left sidebar, click on _“Tainacan”_;

   ![Access the control panel](/pt-br/_assets\images\051.png)

3. Click on _"Repository Metadata"_ (metadata that are inherited by all collections);

   ![Access the control panel](/pt-br/_assets\images\085.png)

4. Click on the “_trash icon_” to the right of the _“metadata”_ you want to delete;

   ![Access the control panel](/pt-br/_assets\images\090.png)

!>**Attention**: When clicking on the _“trash icon”_, the metadata is immediately deleted. This operation cannot be undone. Deleting _“repository-level metadata”_ affects **all** already filled data and information in _“items”_ that have already been created throughout the repository. Before deleting the _“metadata”_, it is recommended that it be only disabled (until there is certainty that the deletion will not result in loss of information). Delete the _“metadata”_ only if you are sure that there will be no serious loss of information. See [Activity log](/pt-br/activities) to learn more.

### Delete Metadata at the Collection Level

1. Access the _“control panel”_ of WordPress;

   ![Access the control panel](/pt-br/_assets\images\050.png)

2. In the left sidebar, click on _“Tainacan”_;

   ![Access the control panel](/pt-br/_assets\images\051.png)

3. Click on the _“collection”_ you want to edit;

   ![Access the control panel](/pt-br/_assets\images\087.png)

4. Click on _“metadata”;_

   ![Access the control panel](/pt-br/_assets\images\088.png)

5. Click on the _“trash icon”_ to delete the _“metadata”_;

   ![Access the control panel](/pt-br/_assets\images\091.png)

!>**Attention:** Deleting _“Metadata at the collection level”_ affects the information of all _“items”_ created in this _“collection”_; In the metadata editing screen (repository level or collection level), it is possible to view the _“metadata already created”_ (or inherited) in the left column; Deleting the _“metadata”_ also implies deleting its values in all _“items”_ to which it applies. Before deleting the _“metadata”_, it is recommended that it be only disabled (until there is certainty that the deletion will not result in loss of information). To _“disable a metadata”_, just click on the button next to the _“edit pencil”_.

![Access the control panel](/pt-br/_assets\images\092.png)
