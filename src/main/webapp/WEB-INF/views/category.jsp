<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="base.jsp" />
<style>
    .place-card{
        max-width:18%;
        min-height: 22%;
        background: #a7b7b9;
        border-radius: 20px;
        box-shadow: 0px 3px 6px #00000030;
        padding: 2%;

    }
</style>
<div class="container">
<c:choose>

    <c:when test="${mode=='educationdata'}">
        <c:forEach var="place" items="${education}">
            <div class="place-card">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>
            </div>
        </c:forEach>
    </c:when>
    <c:when test="${mode=='bankingdata'}">
        <c:forEach var="place" items="${banking}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>
        </c:forEach>
    </c:when>
    <c:when test="${mode=='parksdata'}">
        <c:forEach var="place" items="${parks}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>
    <c:when test="${mode=='secruitydata'}">
        <c:forEach var="place" items="${security}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>
    <c:when test="${mode=='riskmanagementdata'}">
        <c:forEach var="place" items="${risk}">
        ${place.placename}<br>
        ${place.placedesc}<br>
        ${place.placeloc}<br>
        ${place.capacity}<br>
        ${place.rating}<br>
        <br><br>

    </c:forEach></c:when>
    <c:when test="${mode=='fooddata'}">
        <c:forEach var="place" items="${food}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>
    <c:when test="${mode=='moviedata'}">
        <c:forEach var="place" items="${movie}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>
    <c:when test="${mode=='governmentdata'}">
        <c:forEach var="place" items="${government}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>
    <c:when test="${mode=='healthcaredata'}">
        <c:forEach var="place" items="${healthcare}">
            ${place.placename}<br>
            ${place.placedesc}<br>
            ${place.placeloc}<br>
            ${place.capacity}<br>
            ${place.rating}<br>
            <br><br>

        </c:forEach>
    </c:when>

</c:choose>
</div>