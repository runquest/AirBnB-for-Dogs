$(document).ready(function(){
  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(49.282, -123.120)
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
  // $.get('/geocoordinates').success(function(coordinate){
    // console.log(coordinate);
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(49.279, -123.109), 
      map: map
  });
    var marker1 = new google.maps.Marker({
      position: new google.maps.LatLng(49.287, -123.117), 
      map: map
  });  
    var marker2 = new google.maps.Marker({
      position: new google.maps.LatLng(49.280, -123.102), 
      map: map
  });
    var marker3 = new google.maps.Marker({
      position: new google.maps.LatLng(49.282, -123.109), 
      map: map
  });
    var marker4 = new google.maps.Marker({
      position: new google.maps.LatLng(49.290, -123.129), 
      map: map
  });
});




  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

