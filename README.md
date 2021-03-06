ariaquen
========

ARIA project work for MSc


Sass Driven
==================

*We are using Sass to power hte display of the application*
we will overide the Sass Specific layout for Rails to make a DRYer sass powered app
variables
mixins
globals
pages folder

Libraries Utilised
====================
- Bourbon for Sass Mixins
- A CSS3 grid framework such as 
	- Skeleton
	- Boilerplate
	- Bootstrap
	- 960
- jQuery and jQuery UI
- Jasmine for testing JavaScript
- Sinon for testing JavaScript
- CSS Reset
- Lettering JS
	
## Lettering.js, a jQuery plugin for radical Web Typography
We developed a lightweight, easy to use Javascript `span` injector for radical Web Typography, we're calling it "lettering-jay-ess", and we're releasing it today for free over on Github. Let me demo it for you: `</stevejobs>`


### Individual Letter Control with Lettering.js
We'll start with some really basic markup:

	<h1 class="fancy_title">Some Title</h1>

After including `jQuery 1.6.2+`, [download and include the minified version of Lettering.js](http://github.com/davatron5000/Lettering.js/downloads), then a script block with the magical `.lettering()` method:
	
	<script>
	  $(document).ready(function() {
	    $(".fancy_title").lettering();
	  });
	</script>
	
The resulting code will churn your `.fancy_title` and output the following:

	<h1 class="fancy_title">
	  <span class="char1">S</span>
	  <span class="char2">o</span>
	  <span class="char3">m</span>
	  <span class="char4">e</span>
	  <span class="char5"></span>
	  <span class="char6">T</span>
	  <span class="char7">i</span>
	  <span class="char8">t</span>
	  <span class="char9">l</span>
	  <span class="char10">e</span>
	</h1>

Magical. Now the text is easy to manipulate in your CSS using an ordinal `.char#` pattern.  This plugin assumes basic counting skills, but it's a pretty fast and easy way to get control over every letter.

### :warning: Accessibility Issue

The plugin is generally not compliant with accessibility standards. If you need to be compliant, please consider other options for presenting your content. Screen readers pause at every HTML tag, including inline `span` tags. There is an [open issue](https://github.com/davatron5000/Lettering.js/issues/38) if you want to help.

### Consult the Wiki, Pls

There you have it, but Lettering.js does even more!  If you want more information on how you can get radical with text, please read the Lettering.js Wiki

[https://github.com/davatron5000/Lettering.js/wiki](https://github.com/davatron5000/Lettering.js/wiki)

If you have an idea for the wiki, file an issue and we'll try and write something up.

### Best Practices &amp; Kerning
We've found this to be a pretty quick and elegant solution to create typographical CSS3 posters. It's also a great solution for really custom type headings, while keeping the text selectable.

#### Best Practices
Be smart and use sparingly. You'll probably break your browser if you try to wrap every letter on your page in a `span` tag, so don't do that.  Look to use this in your Headings, Blockquotes, Asides, etc.

#### Kern Well
If you're going through the trouble to load a fancy font and that word or phrase is the largest on the site, then it's important for it to be kerned well.  With Lettering.js, kerning is a breeze. You can simply use `$("#id-of-what-i-want-to-kern").lettering();` and then on each `.char#`, you can set relative position or left/right margin. Works like a charm.

### Non-Javascript Fallback
As with any kind of Javascript, have a fall back plan in case the user doesn't have javascript enabled.  The bottom line is up to you, my bottom line would be "legible and on the screen". Also, use `lettering.min.js` [Download the Minified Version of Lettering.js here](http://github.com/davatron5000/Lettering.js/downloads)

#### Performance Anti-Pattern
Web performance patterns advise that you put Javascripts at the bottom of your page before your `</body>` tag.  There is an unfortunate side effect where you may experiences a [FOUT (Flash of Unstyled Text)](http://paulirish.com/2009/fighting-the-font-face-fout/) when you're manipulating your text after the DOM has loaded.  Unfortunately, we found the best solution to avoid/minimize the FOUT caused by this plugin is to put your scripts (jQuery, Lettering.js) in the document `<head>`. On the one hand, your page will load slower. On the other hand, a flash/restyling makes your site feel slow. Users might ultimately feel the site is faster if they don't see the FOUT.

### Download, Fork, Commit, Please.
We really want Lettering.js to be a quality helper for web typography.  If you have any feedback or suggestions, please leave those over on the Github.  We're excited about typography on the web and want to help make it print quality.



Content & Project Aim
======================

The project is a Rich Web application using several technologies on the client side.