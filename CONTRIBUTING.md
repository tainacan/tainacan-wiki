# Contribute to this Wiki

If you've reached this page, you're probably thinking about contributing to our Wiki :smile:. This is great! As a Free Software project, Tainacan is based on collaboration principles at various levels: in **research**, **code**, **translation**, and also in **documentation**. As a user, you can bring valuable contributions to make our material clearer and more accessible.

To collaborate, however, you need to familiarize yourself a bit with our documentation tools. Don't worry - here we'll give you the necessary assistance so you can make quality contributions without difficulties! On this page you'll see:

* [How to edit files online via GitHub](#editing-files-directly-on-github)
* [How the Wiki articles syntax works](#familiarizing-yourself-with-markdown-formatting)
* [How to test and make advanced contributions to the Wiki](#advanced-contribution-with-docsify)
* [How the Wiki file structure works](#understanding-the-wiki-structure)

## Editing files directly on GitHub

Our Wiki is entirely hosted on GitHub at the following repository: https://github.com/tainacan/tainacan-wiki. You don't need much Git experience to make specific contributions, as the platform itself simplifies much of the process. For example, if you saw a spelling error in an article, click the **Edit on github** button that appears in the upper right corner of the page. You'll be redirected to the "source code" of this page:
 
![Screenshot of the content editing page on Github, where the edit button, formed by a pen, is highlighted.](/_assets/images/contributing.png)

By clicking the edit button, in pen format, you can make the desired changes, and at the end of the form, explain what changes are being proposed. When submitting a change proposal, GitHub is, behind the scenes, creating a *Fork* for you and applying a *Pull-Request*.

For more complex contributions, involving creating pages, inserting images, tabs, videos, or even changes to the Wiki's navigation structure, we suggest following our [instructions for running Docsify](#advanced-contribution-with-docsify).

## Familiarizing yourself with markdown formatting

Various collaborative systems adopt certain formatting conventions to make editors' work easier. In our wiki, we use the **`markdown`** language for this, but we also use some extra features. This system consists of specific syntaxes and keywords to communicate to the software how certain text should be displayed.

### Work anywhere in the text:

| What it is 	                                  |  What you write 	                                  | What you see                         |
|---------------------------------------------|-----------------------------------------------------------|---------------------------------------|
| Italic, bold text or both 	      | `*italic*, **bold** or ***both***` 	              | *italic*, **bold** or ***both*** |
| Pre-formatted text                	      | ``Here goes the name of a function``        	              | `Here goes the name of a function`       |
| Links to wiki pages 	              | `[Main page](/pt-br/README.md)`                    | [Main page](/pt-br/README.md)  |
| Links to a section 	                      | `[Editing Collections](/pt-br/collections#create-collections)`  | [Editing Collections](/pt-br/collections#create-collections) |
| Reference to a website address 	  | `https://tainacan.org`                                    | https://tainacan.org                                   |
| Reference to a link with custom name |	`[Official Tainacan Site](https://www.wikipedia.org/)`  | [Official Tainacan Site](https://www.wikipedia.org/) |
| Text comments 	                      | `<!--This comment will not be displayed on the page, only in its source code-->` | <!--This comment will not be displayed on the page, only in its source code-->  |

### Work only at the beginning of lines:

| What it is 	              |  What you write 	               | What you see                                                     |
|-------------------------|----------------------------------------|-------------------------------------------------------------------|
| Section Header      | `## Level 2`                           | <h2>Level 2</h2>                                                  |
| Section Header      | `### Level 3`                          | <h3>Level 3</h3>                                                  |
| Section Header      | `#### Level 4`                         | <h4>Level 4</h4>                                                  |
| Section Header      | `##### Level 5`                        | <h5>Level 5</h5>                                                  |
| Section Header      | `###### Level 6`                       | <h6>Level 6</h6>                                                  |
| Bullet lists   | `* This is a point`<br>`* This is another point`<br>&nbsp;&nbsp;`* Point within a point` | <ul><li>This is a point</li><li>This is another  point<ul><li>Point within a point</li></ul></li></ul> |
| Numbered lists       | `1. This is a point`<br>`2. This is another point`<br>&nbsp;&nbsp;`1. Point within a point` | <ol><li>This is a point</li><li>This is another  point<ol><li>Point within a point</li></ol></li></ol> |
| Check list         | `- [ ] This is a point`<br>`- [x] This is another point`<br>&nbsp;&nbsp;`- [ ] Point within a point` | <ul class="task-list"><li class="task-list-item"><label><input disabled="" type="checkbox">This is a point</label></li><li class="task-list-item"><label><input checked disabled="" type="checkbox">This is another point</label><ul class="task-list"><li class="task-list-item"><label><input disabled="" type="checkbox">Point within a point</label></li></ul></li></ul> |
| Highlights               | `> This is an important observation.`  | <blockquote><p>This is an important observation.</p></blockquote> |
| Alerts                 | `!> This is a sensitive observation.` | <p class="tip">This is a sensitive observation.</p>              |
| Notes                   | `?> This is a secondary observation.` | <p class="warn">This is a secondary observation.</p>             |

### Lines

For simple section separation with a line, use:

```
------
```

Which will be rendered as:

------

> Note: leave at least one blank line between this symbol and any other text, otherwise it will be understood as a header.

### Images
| What it is 	              |  What you write 	               | What you see                                                     |
|-------------------------|----------------------------------------|-------------------------------------------------------------------|
| Image and description      | `![Tainacan Logo](../_assets/images/logo_tainacan.png)` | ![Tainacan Logo](../_assets/images/logo_tainacan.png) |
| Image and description, resized | `![Tainacan Logo](../_assets/images/logo_tainacan.png ':size=50')` | ![Tainacan Logo](../_assets/images/logo_tainacan.png ':size=50') |

### Videos

We use an `iframe` to embed media, which is the standard alternative for most online video platforms. For example, to embed a YouTube video:

```html
<iframe 
    width="560" 
    height="513" 
    src="https://www.youtube.com/embed/gFJfyHRKaE0?start=18"
    frameborder="0" allow="accelerometer; 
    autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
```
> Note that the width (560px), height (513px), and also the video start time (18s) are configured.

The result will be as below:

<iframe width="560" height="513" src="https://www.youtube.com/embed/gFJfyHRKaE0?start=18" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Code snippets

To show pre-formatted code snippets, `markdown` itself already enables this, but we can also add directives to highlight some languages, just wrap the desired code with three backticks ` ``` ` before and after its content. If it's a `php` code, for example, just start with ` ```php `. The result will be as below:

```php
<?php
function foo($arg_1, $arg_2, /* ..., */ $arg_n)
{
    echo "Example function.\n";
    return $retval;
}
?>
```

### Tabs 

One of the extra things our Wiki can do beyond `markdown` is render tabs. They can be useful for segmenting content into sections within the same page. For example, the code below:

```markdown
<!-- tabs:start -->

#### ** Tab 1 **

Tab 1 Content

#### ** Tab 2 **

Tab 2 Content

#### ** Tab 3 **

Tab 3 Content

<!-- tabs:end -->

```

Will be rendered as:
<!-- tabs:start -->

#### ** Tab 1 **

Tab 1 Content

#### ** Tab 2 **

Tab 2 Content

#### ** Tab 3 **

Tab 3 Content

<!-- tabs:end -->

### Collapses 

To hide some extensive content in collapsible regions, we use the `HTML` tag `<details></details>` and `<summary></summary>`. For example:

```
<details>
<summary>A collapse (Click to expand)</summary>

- Markdown content here inside
- And whatever else is needed

</details>
```

Will result in:
<details>
<summary>A collapse (Click to expand)</summary>

- Markdown content here inside
- And whatever else is needed

</details>

> Note that there is a line of space between what is `HTML` code and what is `markdown`.

### Tables

The way to create tables is a bit limited in `markdown`. Here's an example:

```
| Header 1   | Header 2   |
|------------|------------|
| Data 1     | Data 2     |
| Data 3     | Data 4     |
```

Which generates the following table:

| Header 1   | Header 2   |
|------------|------------|
| Data 1     | Data 2     |
| Data 3     | Data 4     |

To insert line breaks within `markdown` tables, we use the `HTML` tag `<br>`:

```
| Header 1   | Header 2        |
|------------|-----------------|
| Data 1     | Data 2          |
| Data 3     | Data 4<br>Data 5 |
```

Which results in the following table:

| Header 1   | Header 2        |
|------------|-----------------|
| Data 1     | Data 2          |
| Data 3     | Data 4<br>Data 5 |

## Advanced Contribution with Docsify

Everything shown so far can be [edited directly via GitHub](#editing-files-directly-on-github), but it becomes difficult to predict how some more advanced features will look, such as images or tabs, which can only be truly visualized when already submitted to the Wiki. For these and other more advanced contributions, such as working on the navigation structure, we suggest testing the content on your local machine, which will require some extra knowledge. 

### Preparing the environment

On your machine, you need to have installed:

* Git
* NodeJS

First, make a *Fork* of our repository on GitHub:

![Screenshot of the Wiki page on Github, where the create Fork button is highlighted.](/_assets/images/contributing_2.png)

Clone and access your local copy. We assume here that you have already made the [initial Git configurations](https://git-scm.com/book/pt-br/v1/Primeiros-passos-Configura%C3%A7%C3%A3o-Inicial-do-Git), using an account created on GitHub:

```
git clone https://github.com/YOUR_USERNAME/tainacan-wiki
cd tainacan-wiki
```

The next command ensures that your *Fork* can be synchronized in the future with updates coming from the original Wiki repository:

```
git remote add upstream https://github.com/tainacan/tainacan-wiki.git
```

Now install the `CLI` of Docsify globally, our framework that helps in creating the Wiki:

```
npm i docsify-cli -g
```

Make sure you're in the repository directory (`cd tainacan-wiki`, or whatever path is necessary) and start the Docsify server:

```
docsify serve
```

This will instantiate a local test server, usually on port `http://localhost:3000`. When you access this address in your browser, you'll have a preview of how the Wiki will look after the edits made in your local copy. Any change in some file within the repository will be automatically reflected at this address, as soon as the file is saved.

### Making your first contribution via Pull-Request

The procedure above, except for the last command, only needs to be executed once. Below we detail how to propose a change to some Wiki file. Suppose you want to add more information about [Hosting](/pt-br/hosting). This file, in Portuguese, is located at `/pt-br/hosting.md`, as can be seen by the address in the browser bar.

A good practice is to start by updating your local repository with changes that may have been made in the official wiki repository:

```
git fetch upstream
git merge upstream/master
```

Then make the changes you want and save the file. Update your *Fork*:

```
git add .
git commit -m "Updates the hosting page content with more options."
git push
```

You should be able to see the changes in your repository on GitHub. Then go to the [official Wiki repository](https://github.com/tainacan/tainacan-wiki) and click the "Create Pull Request" option:

![Screenshot of the Wiki page on Github, where the create Pull Request button is highlighted](/_assets/images/contributing_3.png)

You'll choose your *Fork* as the origin for the *Pull Request* and can write a description summarizing your changes. 

![Screenshot of the Wiki page on Github, showing the option to choose the origin branch of the Fork](/_assets/images/contributing_4.png)

Once the request is created, just wait for the team's review!

## Understanding the Wiki structure

Now that you're already able to collaborate and test changes in our Wiki, it's time to understand a little better how Docsify works, responsible for transforming the existing `markdown` files in our repository into the site you see hosted at https://tainacan.github.io/tainacan-wiki/#/pt-br/.

Looking at the repository's file structure, we have the following pages and files, among others:

```
/_assets
/dev
    README.md
    _sidebar.md
/pt-br
    /_assets
    /dev
        README.md
        _sidebar.md
    CONTRIBUTING.md
    README.md
    _coverpage.md
    _navbar.md
    _sidebar.md
    collections.md
CONTRIBUTING.md
README.md
_coverpage.md
_navbar.md
_sidebar.md
collections.md
index.html
style.css
```
Let's comment on some:

* **/_assets**: is the folder where we store images and other media files. It will exist at deeper levels of the Wiki to store files relative to that scope;
* **/dev**: is the folder that stores the part of the Wiki related to documentation for developers. This separation helps organize the extensive Wiki content a bit. In the future, other specific folders can be created for a part of the Wiki, as long as the references to the files that remain in it are adjusted;
* **/pt-br**: is the folder where the Wiki documentation translated into Brazilian Portuguese is stored. Note that almost all files and folders from the rest of the Wiki are replicated here. When there is no translated version for a file within this folder, the user will be redirected to the corresponding file in the root folder;
* **CONTRIBUTING.md**: Instructions for those who want to collaborate with the Wiki. You are reading the translated version of this file, which is in `/pt-br/CONTRIBUTING.md`;
* **README.md**: Wiki Home Page, which is loaded when accessing `/`. We use the name README so that GitHub also recognizes this file as the presentation one. The translated version is in `/pt-br/README.md` and is loaded when accessing `/pt-br`. Inside the `/dev` folders, there is also a version of this file, which will be the Home Page of the Developers section;
* **_coverpage.md**: Cover page, which is loaded above the home page;
* **_navbar.md**: Top bar of the Wiki, currently contains link to the official site and a dropdown to choose the site language. This is a special page that is rendered by Docsify, transforming sublists, for example, into dropdowns;
* **_sidebar.md**: List of links that are displayed in the sidebar. Note that there is one of these in the `/pt-br` folder with its translated content, but there are also versions in the `/dev` and `/dev/pt-br` folders. This ensures that when navigating through files in the developers section, a dedicated list of links for the subject is shown.
* **collections.md**: An example of one of the several common pages that exist in the Wiki. These pages usually have their own hierarchy defined by section headers, which are also displayed in the sidebar when entering it;
* **index.html**: File used to configure Docsify, plugins and imports. We don't recommend changes here, unless you know what you're doing!
* **style.css**: CSS stylesheet of the site, which customizes the Wiki's appearance.

We strongly encourage exploring this structure and making changes through the local Docsify test server to familiarize yourself with the concepts. For more details, consult the [Docsify documentation](https://docsify.js.org/).
