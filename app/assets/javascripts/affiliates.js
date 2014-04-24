
		var people = ([{
			"name":"ZARA GLOBAL", 
			"id":"44123801@N03"
		},
		{
			"name":"LAUREN BECK",
			"id":"34236437@N07"
		},
		{
			"name":"REBECCA ADLER",
			"id":"37583170@N07"
		},
		{
			"name":"RACHAEL SCROGGINS",
			"id":"55457487@N00"
		},
		{
			"name":"JOSEFINA ALAZRAKI",
			"id":"7499921@N08"
		}]);

		$(document).ready(function() {
			for(i=0, l=people.length; i<l; ++i)
			{
				$('#users').append(
					'<li><a href="javascript:loadFlickr(\''
						+people[i].id+'\')">'+people[i].name+"</a></li>\n"
				);
			}
			loadFlickr("44123801@N03");
		});

function loadFlickr(flickrid)
{
	// Display a loading icon in our display element
	$('#feed').html('<span><img src="assets/lightbox-ico-loading.gif" /></span>');

	// Request the JSON and process it
	$.ajax({
		type:'GET',
		url:"http://api.flickr.com/services/feeds/photos_public.gne",
		data:"id="+flickrid+"&lang=en-us&format=json&jsoncallback=?",
		success:function(feed) {
			// Create an empty array to store images
			var thumbs = [];

			// Loop through the items
			for(var i=0, l=feed.items.length; i < l && i < 16; ++i) 
			{
				// Manipulate the image to get thumb and medium sizes
				var img = feed.items[i].media.m.replace(
					/^(.*?)_m\.jpg$/, 
					'<a href="$1.jpg"><img src="$1_s.jpg" alt="" /></a>'
				);

				// Add the new element to the array
				thumbs.push(img);
			}

			// Display the thumbnails on the page
			$('#feed').html(thumbs.join(''));

			// A function to add a lightbox effect
			addLB();
		},
		dataType:'jsonp'
	});
}


                 $(document).ready(function () {
                     $(".fancy_title").lettering().children("span").css({ 'display': 'inline-block', '-webkit-transform': 'rotateX(-15deg)' });
                 });
         
 