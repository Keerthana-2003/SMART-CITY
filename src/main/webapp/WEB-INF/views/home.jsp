<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--suppress ALL --%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="../css/home.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/330e847ee6.js" crossorigin="anonymous"></script>
<div class = "navbar">
    <h3>Paatavik</h3>
    <div class="content">
        <a href="/home">
        <span class="material-icons">home</span><br>
        <p>Home</p></a>
        <a href="#">
        <span class="material-icons">map</span><br>
        <p>Map</p></a>
        <a href="/places">
        <span class="material-icons">place</span><br>
        <p>Places</p></a>
        <a id="explore">
        <span class="material-icons">explore</span><br>
        <p id="explore">Explore</p></a>
        <div onclick = window.location="/profile?username=<%=session.getAttribute("username")%>">
<%--            onclick = window.location="/profile?username=<%=session.getAttribute("username")%>"--%>
        <span class="material-icons">person</span><br>
        <p style="cursor: pointer;">Profile</p>
        </div>
    </div>
    <a href="/logout"><span class="material-icons">logout</span><br>Logout</a>
</div>

<div class="sidebar" id = "sidebar" style="display: none;">
<h4>Places</h4>
    <div class="place-card">hello</div>

</div>
<div class="rightBar" style="display: none;">
    <h4>About Place</h4>
</div>
<div class="content" id = "content">

    <form method="post" action="/mapdata">
        <input type="text" name="location" placeholder="Enter Location">
        <input type="submit" value="submit">
    </form>
    <c:choose>
        <c:when test="${mode=='googlemap'}">
            <% String s[] = (String[]) request.getAttribute("location");%>
            <%=s[0]%>
            <%=s[1]%>
    <script>
        let coords = {
            lat: parseFloat(<%=s[0]%>) || 39.9612,
            lng: parseFloat(<%=s[1]%>) || -82.9988,
        };
        let map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: coords,
                zoom: 10,
            });

            let marker = new google.maps.Marker({
                position: coords,
                map: map,
                animation: google.maps.Animation.BOUNCE,
            });
        }
    </script>
    <style>
        #map {
            height: 100%;
        }
    </style>0
            <div id="map" ></div>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsZrS5LkAXAqzgVYMJQQMYOoWgYCHHZTU&callback=initMap&v=weekly" async defer></script>
        </c:when>
    </c:choose>



<%--    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243208.16384870445!2d83.12250464246185!3d17.73862250374061!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a39431389e6973f%3A0x92d9c20395498468!2sVisakhapatnam%2C%20Andhra%20Pradesh!5e0!3m2!1sen!2sin!4v1636918203898!5m2!1sen!2sin"--%>
<%--&lt;%&ndash;            width="1105.5"&ndash;%&gt;--%>
<%--            height="745"--%>
<%--            style="border:0; width: 1435px;"--%>
<%--            allowfullscreen=""--%>
<%--            loading="lazy"--%>
<%--    id = "map">--%>
<%--    </iframe>--%>
</div>

<script>
    const sideBar = document.getElementById("sidebar")
    const ele = document.getElementById("explore")

    ele.onclick = function () {
        if (sideBar.style.display !== "none") {
            sideBar.style.display = "none";
            document.getElementById("content").style.marginLeft = "6.5%";
            document.getElementById("map").style.width = "1435";
        } else {
            sideBar.style.display = "block";
            document.getElementById("content").style.marginLeft = "28%";
            document.getElementById("map").style.width = "1105";
        }
    }

    function sideBarToggle(){


    }
</script>
