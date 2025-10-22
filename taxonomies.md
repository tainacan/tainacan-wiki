# Taxonomies

*Taxonomies* can be created and used for item classification. Examples of common taxonomies are *Gender*, *Countries*, etc.

> In *WordPress* language, they are custom taxonomies. See the [WordPress documentation](https://wordpress.org/support/article/taxonomies/) to learn more.

Each taxonomy has a set of **terms**, for example, gender taxonomy can have terms like drama and comedy.

The terms may have hierarchy, meaning that when you search for items that have terms with *children* (for example, *Music*), the results will include items that have any of the terms children (for example, *Rock*, *Progressive Rock* and *Metal*).

Terms may have a description, an icon, or an image that represents it, and an ontology may also be linked to an existing concept. Terms can also have their own URL on the site, with a page listing all the items related to it, including from different collections, so they behave as if they were a collection.

> Taxonomies can be shared by several collections in the repository.

> The taxonomies must be configured in a metadata for their insertion in the collections: see the topic [Create Metadata](/metadata#create-metadata) to know how.



<!-- tabs:start -->

### ** Create **
## Create Taxonomies

1. Access the WordPress control panel
2. In the left sidebar, click Tainacan
3. Click `Taxonomies`
4. Click on `New Taxonomy`
5. In the tab **Taxonomy** fill the desired fields
  1. **Name**: name of the taxonomy
  2. **Description**: description of the taxonomy
  3. **Slug**: The slug field allows you to change the end of the taxonomy URL, by default it is created from the taxonomy name, but can be edited in this field
  4. **Allow New Terms**: allows new terms to be added to the taxonomy when sending items
  5. **Status**: privacy setting of taxonomy, in values:
    1. **Public**: Taxonomy can be viewed by visitors to the repository
    2. **Private**: Taxonomy can be viewed only by editors of the repository
    3. **Draft**: Taxonomy can be viewed only by its author
    4. **Trash**: Taxonomy, and its terms, will no longer be applied to your items and may be permanently deleted
6. Then click on the **Terms** tab and click on `Create New Term`

### Create Terms

1. Click `Create New Term`
2. Fill out the following fields according to each term to be created:
  1. **Header Image**: It is possible to add an image that appears in the taxonomy view, depending on the settings and the theme adopted. The default Tainacan theme displays the header image on the taxonomy term page
  2. * **Name**: Name of the term that will be part of taxonomy
    * **Description**: description of the term that will be part of the taxonomy
    * **Parent term**: determines the hierarchical level of the term in relation to the others of this same taxonomy,
3. Click `Save` to finish creating the term

Repeat the action to add new terms by clicking on `Create New Term` again.

Taxonomies can also be created from the vocabulary importer. See [Vocabulary Importer](/importers) to learn more.

### ** Edit **
## Edit Taxonomies

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. Click on **Taxonomies**;
4. Click on the **taxonomy** desired in the list of taxonomies;
  * Change the desired fields
  * In the *terms* tab you can add, edit or delete terms of this taxonomy.

### Edit Terms

1. In the list of terms, select the desired one for editing:
  1. Click the *Pencil icon* on the right to open the editing fields of this term
  2. Change the desired fields
  3. Click in:
    * `Cancel`, to cancel the term edition
    * `View term`, to view the term in the theme
    * "Save" to finish editing the term


### ** Exclude **
## Exclude Taxonomies

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. Click on **Taxonomies**
4. Click on the **link** icon to the right on the desired taxonomy
   
  > [!WARNING]
> Attention: a warning will be displayed to confirm this action. The exclusion of taxonomy also implies the exclusion of information in metadata, items and collections that use this taxonomy. This operation can only be undone by administrators. (See [Activity Register](/activities) for more information). Delete the taxonomy only if you are sure that there will be no serious loss of information. (See [Activity Register](/activities) to learn more)

### Exclude Terms

1. Access the *WordPress* control panel
2. In the left sidebar, click on Tainacan
3. Click on **Taxonomies**
4. Click on the desired taxonomy in the list of taxonomies
5. Click the terms tab
  1. In the list of terms, select the desired one for exclusion:
  2. Click the **Trash** icon on the right to delete the item
    
  > [!WARNING]
> Attention: a warning will be displayed to confirm this action. The exclusion of the term also implies the exclusion of this value in metadata, items and collections that use this taxonomy. This operation can only be undone by administrators. (See [Activity Register](/activities) for more information). Delete the term only if you are sure that there will be no serious loss of information. (See [Activity Register](/activities) to learn more)

<!-- tabs:end -->
