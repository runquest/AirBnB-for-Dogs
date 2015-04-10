$(document).ready(function(){
    

  var imagelist = $("#instagram-images");

    $.ajax({
      type: 'GET',
      url: 'https://api.instagram.com/v1/media/popular' ,
      data: {
        client_id: '309f40e3aa2e4dc8ae8d6a07283675af'
        },
         dataType: 'jsonp',
         success: function (response) {
          console.debug(response.data)
          response.data.forEach (function(item) {
            imagelist.append('<li><img src="'   + item.images.thumbnail.url +    '"/> </li>')
          });
          }
        });

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

