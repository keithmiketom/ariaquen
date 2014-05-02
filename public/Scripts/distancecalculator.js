var Calculator = (function() {

    // Private stuff up here
    var converterValue = 2.2;


    // Public methods here
    return {
        getDistance: function(lat1,lon1,lat2,lon2) {
			 if ((isNaN(lat1) == true) || (isNaN(lon1) == true) || (isNaN(lat2) == true)  || (isNaN(lon2) == true) ) {
                throw new Error ("Invalid Coordinates");
             }
				  var R = 6371; // Radius of the earth in km
				  var dLat = deg2rad(lat2-lat1);  // deg2rad below
				  var dLon = deg2rad(lon2-lon1); 
				  var a = 
					Math.sin(dLat/2) * Math.sin(dLat/2) +
					Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
					Math.sin(dLon/2) * Math.sin(dLon/2)
					; 
				  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
				  var d = R * c; // Distance in km
				  return d.toFixed(1)/1;
				
				
				function deg2rad(deg) {
				  return deg * (Math.PI/180)
				}
        }

    }
}())







