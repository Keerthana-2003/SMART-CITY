<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
    body{
    padding: 0;
    margin:0;
    font-family: Montserrat;
    overflow-y: scroll;
    }
    body::-webkit-scrollbar {
        display: none;
    }
a{
    color: inherit;
    text-decoration: none;
}
.navbar {
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 6.5%;
    background-color: #081217;
    position: fixed;
    height: 100%;
    overflow: auto;
    color: #d0d0d0;
    text-align: center;
}
.navbar .content p, span{
    font-size: 11px;
    cursor:pointer;
}
.navbar h3{
    font-size: 10vm;
}
.container{
    margin-left: 6.5%;
}
.container .context{
    margin-left: 2%;
}
    .place-card{
        min-width:18%;
        min-height: 22%;
        background: #a7b7b9;
        border-radius: 20px;
        box-shadow: 0px 3px 6px #00000030;
        padding: 2%;

    }

    .sidebar{
        list-style-type: none;
        margin-left: 6.5%;
        padding: 1%;
        width: 20%;
        background-color: #b6c8ca;
        position: fixed;
        height: 100%;
        overflow: auto;
        text-align:center;
        color: #383838;
    }
    .rightBar{
        list-style-type: none;
        margin-left: 77%;
        margin-top: 2.5%;
        padding: 1%;
        width: 20%;
        background-color: white;
        position: fixed;
        height: 85%;
        overflow: auto;
        text-align:center;
        color: #3a3a3a;
        border-radius: 20px;
        box-shadow: 0px 3px 6px #00000030;
        opacity: .75;
    }
</style>
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
        <a id = "explore">
            <span class="material-icons">explore</span><br>
            <p>Explore</p></a>
        <div onclick = window.location="/profile?username=<%=session.getAttribute("username")%>">
            <%--            onclick = window.location="/profile?username=<%=session.getAttribute("username")%>"--%>
            <span class="material-icons">person</span><br>
            <p style="cursor: pointer;">Profile</p>
        </div>
    </div>
    <a style="margin-bottom: 5%;" href="/logout"><span class="material-icons">logout</span><br>Logout</a>
</div>
<%--<div class="sidebar" id = "sidebar" style="display: none;">--%>
<%--    <h4>Places</h4>--%>
<%--    <div class="place-card">hello</div>--%>

<%--</div>--%>
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

