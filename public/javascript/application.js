$(document).ready(function() {
    // $(".nav").text("Book something")
  var map;
  var marker;
  function initialize() {
    var mapOptions = {
      zoom: 8,
      center: new google.maps.LatLng(-34.397, 150.644)
    };
    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(-34.397, 150.644), 
      map: map
    })
  }

  google.maps.event.addDomListener(window, 'load', initialize);
});




  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

