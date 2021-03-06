$(document).ready(function() {

    // ======= MAPS =======
    function initialize() {
        var mapOptions = {
            center: {
                lat: 49.282040,
                lng: -123.108194
            },
            zoom: 12
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

        var infoWindowContent = [];

        for (i = 0; i < gon.locations.length; i++) {
            infoWindowContent.push(['<div class="info_content">' +
                '<h4>' + gon.locations[i][0] + '</h4>' +
                '<div>' + gon.locations[i][4] + ', <br>' + gon.locations[i][6] + '<br><a href="tel:+' + gon.locations[i][5] + '" style="text-decoration:none">' + gon.locations[i][5] + '</a><br><a href="http://' + gon.locations[i][3] + '/" target="_blank">' + gon.locations[i][3] + '</a></div>'
            ]);
        }
        for (i = 0; i < gon.locations.length; i++) {
            var position = new google.maps.LatLng(gon.locations[i][1], gon.locations[i][2]);
            //bounds.extend(position);
            marker = new google.maps.Marker({
                position: position,
                map: map,
                title: gon.locations[i][0],
                animation: google.maps.Animation.DROP
            });


            var infoWindow = new google.maps.InfoWindow({
                    maxWidth: 300
                }),
                marker, i;
            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    infoWindow.setContent(infoWindowContent[i][0]);
                    infoWindow.open(map, marker);
                };
            })(marker, i));
        }

    }

    google.maps.event.addDomListener(window, 'load', initialize);


});