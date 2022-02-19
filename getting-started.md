# First Steps

Let's understand what is possible with Tainacan and how it can be used to manage digital repositories in an easy and intuitive way.

## What do we want?

Let's assume that I have a collection of photos that I want to expose to the world. On my WordPress site I already have posts and pages that I created to talk about it, but now I want to set up my repository and organize it in a systematic way. It all starts with creating the collection.

## Creating the 'My Photos' Collection

In the admin page of my WordPress site, I have the Tainacan plugin installed and I can access it from the WordPress sidebar:

![Accessing the Tainacan admin page](/pt-br/_assets/gifs/getting-started-0.gif)

On the plugin's homepage, I can create my collection, a process that is done in the form in the image below. I've chosen a name, a description, thumbnail and header images, as well as some views that we'll test later.

![Creating a Collection](/pt-br/_assets/gifs/getting-started-1.gif)

## Configuring the Collection's Metadata

By configuring the metadata, we are creating the attributes by which the items in the collection will be described. As it is a collection of photos, I am interested in some specific information:

* The title of the photo;
* The description of the photo;
* The date the photo was taken;
* The machine used for the photo;
* The photo category.

When we get to the Metadata page, we see that the first two metadata already exist by default. They can be disabled or  their label changed. I can create the other metadata, using any of the available metadata types. Let's see which ones I chose:

* **Photo Data** - *Date Type* - The date the photo was taken;
* **Camera** - *Simple Text Type* - O nome da máquina usada para a foto;
* **Category** - *Taxonomy* - The category of the photo.

![Creating Metadata](/pt-br/_assets/gifs/getting-started-2.gif)

For the Category I chose a taxonomy metadata. Why's that? Well, it is worth thinking about; what is a category? For my collection, it's a set of terms that I use to describe a photo. The terms can have hierarchical relationships, such as mother categories and subordinate daughter categories, in addition to new ones appearing according to the new photos that arrive in my collection. This definition of category fits like a glove in what we define as Taxonomies in Tainacan parlance. But to actually create this metadata, first I need to configure the specific Taxonomy.

## Creating Taxonimic Categories

In the repository menu, on the left side, we can access the list of taxonomies and from there create a new one, called Category. After creating, I can also enter terms, which will also be categories themselves, with which I will label my photos (eg urban , nature , abstract …).

![Creating a taxonomy](/pt-br/_assets/gifs/getting-started-3.gif)

Going back to the metadata settings page, I can now create my metadata that will use this taxonomy. I can also leave the “Allow new terms” option checked, so that I can easily create new terms while setting up my photos. By the way, it's time to bring them to Tainacan!

![Creating a taxonomic metadatum](/pt-br/_assets/gifs/getting-started-4.gif)

## Uploading items to Tainacan

The items in the My Photos collection are the photos themselves. One possible way to add new items/photos is to add them one by one, accessing the “Create Item” menu directly on the collection Items page. But let's assume that I already have several of them stored in a folder on my computer. I can save time by using the “Bulk add items” function:

![Bulk add items](/pt-br/_assets/gifs/getting-started-5.gif)

When uploading my photos, I can either Bulk Edit or Sequence Edit. The first is for dealing with similar metadata between the photos, and the second is for looking at each item one by one. Let's start with what is similar in these photos: the Camera. As I took them all with the same camera, I will configure this information in the Mass Edit screen. Then I go to the Sequence Edition, where we can see that Tainacan has already generated a thumbnail from my photos, which can be changed in the future. My photos will be public and there are no attachments related to them, so all I have to do is fill in the metadata.

### Adding Metadata

Every configuration made in the metadata screen is reflected here, in the item creation step. I can put the Title and Description of the photo and a valid date for the moment the photo was taken. The Camera has been pre-configured, so there's nothing to worry about here. As for the Category, I will set it as I see fit, using the categories I created earlier. If I realize I forgot a Category, I can create a new term for the taxonomy right here, directly from the item edit form. With all the metadata filled in, we can already see how our collection turned out by returning to the collection items page:

![Editing items in Sequence](/pt-br/_assets/gifs/getting-started-6.gif)

## Browsing Your Collection

And there you have it, we have a collection of photos in our Tainacan repository! Note that we can change the view order, change the list view mode and even choose which metadata to show in some cases. While I am creating a photo collection, I prefer to use the Thumbnails mode.

![Browsing the collection](/pt-br/_assets/gifs/getting-started-7.gif)
We already have a simple text search and the advanced search available, but we can further customize how we filter the items in this collection using…Filters!

## Conifguring Filters

Each Metadata Type you choose can be filtered in different ways. On the filters page, we can create a Date filter for the Photo Date metadata, as well as a filter with a list of checkboxes for the Category metadata. This list of checkboxes is one of the most useful features, because with it we can easily explore all the categories that were used to label my photos.

![Creating Filters](/pt-br/_assets/gifs/getting-started-8.gif)

Let's go to the list of items and try the filters. Notice how, when we apply one of them, a tag appears above the list of items so we can remove the filter if desired? In the case of Category, we also have a value in parentheses next to the Category label. This counter indicates how many items are currently in the collection with this category, a view we call Cards.

![Using Filters](/pt-br/_assets/gifs/getting-started-9.gif)

## Viewing Your Collection on the Web

This all sounds pretty cool, but so far we have only worked within Tainacan admin panel, which can only be accessed by those with the correct permissions. How does Tainacan integrate with my WordPress site? Just click on the eye icon in the upper righthand corner to find out:

![Viewing the collection online](/pt-br/_assets/gifs/getting-started-10.gif)

The Collection is public on our website, at the address configured by default on the Collection configuration page in the slug field. Here we also see other settings come into play, such as the Header Image, Thumbnail, and Collection Description. Above the list of Items, we have a “View Modes” option, which gives us different ways to see the collection as configured on the Collection page as well. Among these, there is also a special mode that is separate, the “Presentation” mode.

![Presentation](/pt-br/_assets/gifs/getting-started-11.gif)

Browsing through the collection, we can click on the item and see its page, where the configured metadata is visible.

![Presentation](/pt-br/_assets/gifs/getting-started-12.gif)

In addition to the public page of the collection, there are other pages, pre-defined by Tainacan that may be of interest to us, and which can be placed within easy reach on the WordPress site's menu. The first of these is the Collection List, available at '/collections', which - of course - shows all my public collections. Another is the Repository Item List, accessible at ''/items', which works like a collection page, but showing public items from all of my Collections, as well as their filters. You can configure the visibility of these pages.

## Telling Stories with Gutenberg Blocks

Having dedicated pages for content created on Tainacan is great, but I might want to show Tainacan content in the middle of my blog posts or even on pages I've created, like my homepage. For this, we can use Gutenberg blocks.

Gutenberg is what the WordPress content editor is called since WordPress version 5.0. It is an intuitive and flexible tool for building posts with blocks. With it, I can easily insert stylized images, videos, quotes, and text with different alignments and sizes. But just like I pull my images from the media gallery, or embed videos from a YouTube link, I might want to embed items from my Tainacan Collections. This is where these blocks come in.

For example, if I want to show my list of Items in the middle of a post, I can use the Item Search Block, instead of simply putting a link to my list of items, which has a lot of information and resources that can be distracting to my audience. Let's see it in use in this post:

![Using blocks to find items](/pt-br/_assets/gifs/getting-started-13.gif)

Alternatively, I might also want to give you an idea of ​​what the most common categories are in my collection. For that I have the Facets List Block. The Facets List Block's tag cloud gives me a clear view of that.

![Using the Facets List Block](/pt-br/_assets/gifs/getting-started-14.gif)

But maybe I want to show a specific set of Categories on my homepage, and leave a link for my visitors on the homepage. For this I use the Terms List Block, which allows me to manually choose which Categories to show:


![Using the Terms List](/pt-br/_assets/gifs/getting-started-15.gif)

All these Blocks have different displays and configurations. To better understand them, it is worth reading our [documentation](/#/gutenberg-blocks).

## Exploring Deeper

In this article we touched a little on what is possible with the Tainacan, but make no mistake: this was just a peek! There are many subjects that can be addressed such as Relationship Type Metadata, Importers, Exporters, Exhibitors, Metadata Standards, Activity Control, Attachments, Document Types, and so on. We hope Tainacan can help you build amazing digital repositories!
