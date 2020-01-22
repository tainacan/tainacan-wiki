?> _TODO_ This page is under construction.

# Theme Gutenberg Support

As explained on our documentation for [Gutenberg Blocks](/gutenberg-blocks.md), they are the future of WordPress content edition. If your theme is able to run on *WordPress >= 5.0*, users already have available a variety of blocks to compose post and pages, such as headings, paragraphs, images, columns, etc, which are complemented by the [Tainacan blocks](/gutenberg-blocks#os-blocos-tainacan).

Although this should work out of the box, there are things you can do, as a developer, to improve the user experience with this new feature. We'll be demonstrating them here, using most of [Tainacan Interface](https://wordpress.org/themes/tainacan-interface/) code as an example:

- [Theme Gutenberg Support](#theme-gutenberg-support)
  - [Support new alignment options](#support-new-alignment-options)
  - [Adding color scheme support to blocks](#adding-color-scheme-support-to-blocks)

## Support new alignment options

<div style="float: right; margin-left: 32px;">

![Alignments options on an image gutenberg block](/_assets/images/theme-gutenberg-support-1.jpeg ':size=250')

</div>

Some Gutenberg Blocks (including most of Tainacan Blocks) offer alignment options such as `left`, `center` and `right`, which is pretty straightforward and uses CSS `float` to make the block flow into one direction. But other options require some "theme-developer" work to do its job: `wide` and `full` alignments. The idea is that `wide` blocks "leaks out" of the post or page margin, such as a highlighted media. `full` blocks, on the other hand, cover the whole post or page width, making them really "attention-attractive". So how to make them available to our users?

1. Go to your theme `functions.php` and insert the option registration routine:
   ```php
    <?php
        /**
        * Register support for Gutenberg wide and full blocks
        */
        function your_theme_gutenberg_support_setup() {
            add_theme_support( 'align-wide' );
        }
        add_action( 'after_setup_theme', 'your_theme_gutenberg_support_setup' );
    ?>
   ``` 
2. Go to your `style.css` (or whichever css you prefer that is loaded) and add the logic to make blocks with `.alignwide` and `.alignfull` classes to work as expected. This will depend on certain circunstances, such as your theme `max-width` and `margin` setup, as well as if it allows sidebars or not. Here is how we did it on *Tainacan Interface* theme:
    ```css
    .alignwide {
        margin-left: calc(-8.3333333333vw + 3.1%) !important;
        margin-right: calc(-8.3333333333vw + 3.1%) !important;
        width: 116.66667%;
        max-width: 1400px;

        /* 1400px is the maximum the inner cointainer should get, so we */
        /* use 1526px - 1 column - 1 column; */
        @media only screen and (min-width: 1526px) {
            margin-left: calc(-1*(87.5vw - 1400px)/2) !important !important;
            margin-right: calc(-1*(87.5vw - 1400px)/2) !important !important;
        }
    }
    .alignfull {
        margin-left: calc( -100vw / 2 + 100% / 2 ) !important;
        margin-right: calc( -100vw / 2 + 100% / 2 ) !important;
        max-width : 100%;
        max-width : 100vw;
        width: 100%;
        width: 100vw;
    }
   ```
   !> We're using CSS `viewport measures` (vw) here, which may [not be fully supported](https://caniuse.com/#feat=viewport-units ':ignore') in older browsers, thus the "%" fallback for every "vw". 
   
   Although `full` blocks should always be "full-page", there is no official rule for how "wide" a `wide` alignment should be, we just decided to use our 24-columns logic, but your theme can be as simplistic as `margin-left: -42px; margin-right: -42px;`.

## Add *editor-side* stylesheet

The editing experience with the new Block Editor, *aka* Gutenberg, can be both magical and frustrating depending on your theme support. That's because, despite the promise, it is not really *What You See Is What You Get* unless you take care of it, which means you need a dedicated stylesheet to guarantee that your editing-side appearance is as close as possible as the *preview/published* side of your post.

> It may sound redundant at first, but having to implement an **editor stylesheet** makes sense: On your *theme-side*, you may have classes to style a `<button>` as you wish, but on the *editor-side*, that button is actually a `<input type="text">` form, waiting for content to be inserted by the user. So you have to fake it to look like a button. Furthermore, a post on your theme may have zero or lots or lateral margin, while the *editor-side* has to display admin menus, block controls, and document options aside from the content editor. 

So it is time to face the beast! 

1. Go to your theme `functions.php` and register the editor style:
   ```php
    <?php
        /**
        * Enqueue editor styles for Gutenberg
        */
        function your_theme_editor_styles() {

         	// Adds Your Theme editor style for Gutenberg.
            wp_enqueue_style( 'your-theme-editor-style', get_template_directory_uri() . '/editor-style.css' );
         	
         	// Add other necessary styles, such as font files.
         	wp_enqueue_style( 'RobotoFonts', 'https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i' );
        }
        add_action( 'enqueue_block_editor_assets', 'your_theme_editor_styles' );
    ?>
   ```
2. Now, feel the `/editor-style.css` file with the necessary content. There is no single solution for this and it really depends on how much "tweaked" is your theme from the standard Gutenberg styling. To check how this was made on *Tainacan Interface*, take a look at this [source file](https://github.com/tainacan/tainacan-theme/blob/develop/src/assets/scss/editor-style.scss ':ignore').

## Adding color scheme support to blocks

Another interesting feature that Gutenberg offers is the ability to customize which colors will be offered on color-pickers available across many of the blocks.