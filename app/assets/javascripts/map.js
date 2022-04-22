function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 4,
      center: { lat:-33.4489,lng:-70.6693 },
    });
    const image =
      "https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png";
    
  }
  
  window.initMap = initMap;