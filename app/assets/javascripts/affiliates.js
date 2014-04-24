

		var people = ([{
			"name":"ANNET PATJILA", 
			"id":"31349962@N08"
		},
		{
			"name":"TAIZ TEES",
			"id":"29503902@N07"
		},
		{
			"name":"BROY CLOTHING",
			"id":"90975346@N02"
		},
		{
			"name":"PABLO ABRIL SANCHEZ",
			"id":"94524619@N08"
		},
		{
			"name":"FREDRIK SWAHN",
			"id":"25709629@N06"
		}]);

		$(document).ready(function() {
			for(i=0, l=people.length; i<l; ++i)
			{
				$('#users').append(
					'<li><a href="javascript:loadFlickr(\''
						+people[i].id+'\')">'+people[i].name+"</a></li>\n"
				);
			}
			loadFlickr("31349962@N08");
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