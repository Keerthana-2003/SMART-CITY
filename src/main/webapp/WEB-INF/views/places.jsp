<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../css/places.css">

<jsp:include page="base.jsp" />

<div class="cardContent">
    <div>
    <img class="coverImg" src="../images/indian_cover.jpg">
        <h1 class="centered">Explore Smart Cities</h1>
    </div><br><br><br>
    <div class="cards">
 <c:forEach var="cardData" items="${data}">
    <div class="card" onclick="window.location='/city?city=${cardData.city}'">
        <img src="${cardData.cardImage}" width="270" height="300" style="border-top-left-radius: 5%;
            border-top-right-radius: 5%;"><br>
        <div class="caption">
            ${cardData.city}
         </div>
    </div>

 </c:forEach>
    </div>
    <br><br>
</div>
