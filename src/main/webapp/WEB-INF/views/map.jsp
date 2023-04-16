<!DOCTYPE html>

<head>
    <title>Google Maps</title>

    <link rel="stylesheet" href="http://localhost:9090/css/custom.css">

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="#">

</head>

<body>

<div class="container bg-light justify-content-center">
    <div class="row">
        <div class="span6" style="float: none; margin: 0 auto;">
            <br />
            <h1 class="text-center">View a Location</h1>
            <form class="forms"action="/home" object=location method="post" autocomplete="off">
                <div class="form-inline inputs">
                    <div class="form-group inputs-left">
                        <label for="Name">City</label> &nbsp; <input type="text" field="city" placeholder="City"
                                                                     class="form-control" />&nbsp;
                    </div>
                    <div class="form-group inputs-left">
                        <label for="Name">State</label> &nbsp; <input type="text" field="state" placeholder="State"
                                                                      class="form-control" />&nbsp;
                    </div>
                    <div class="form-group inputs-left">
                        <button class="btn btn-md btn-primary btn-block" name="Submit" value="Submit"
                                type="Submit">Update Map</button>
                    </div>
                </div>

            </form>
            <br />
        </div>
    </div>
</div>

<div id="map"></div>

<script inline="javascript">
    let lat = [[${location.lat}]];
    let lng = [[${location.lng}]];
    let ct = [[${location.city}]];
    let st = [[${location.state}]];
    let coords = {
        lat: parseFloat(lat) || 39.9612,
        lng: parseFloat(lng) || -82.9988,
    };
    let city = ct;
    let state = st;
</script>

<%--<script src="http://localhost:9090/js/custom.js"></script>--%>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTWAOF_H060Hi9GKYHvRApqrWPrOCjGI0&callback=initMap" async defer>

    let map;

    function initMap() {

        map = new google.maps.Map(document.getElementById('map'), {
            center: coords,
            zoom: 10,
        });

        let image = {
            url: "../images/building.png",
            scaledSize: new google.maps.Size(50, 50)
        };


        let marker = new google.maps.Marker({
            position: coords,
            map: map,
            icon: image,
            animation: google.maps.Animation.BOUNCE,
        });

        let contentString = '<h2>' + city + ', ' + state + '</h2>';

        let infowindow = new google.maps.InfoWindow({
            content: contentString,
        });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });
    }
</script>
</body>

</html>