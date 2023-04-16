<%--suppress ALL --%>
<link rel="stylesheet" href="../css/city.css">

<jsp:include page="base.jsp" />
<div class="container" id="content">
    <div class="imageContainer">
    <img src="${data.image}">
        <div class="centered"><h1>${data.city}</h1><p style="font-weight: bold;">${data.state}</p></div>
    </div>
    <div align="center">
    <p style="width: 75%;">${data.desc}</p>
    </div>
    <br>
    <div class="chips">
        <div class="chip">
            <h3 class="title">Total Projects</h3>
<%--            <p>62 Projects / &#8377; 2,077 Cr.</p>--%>
            <p>${data.projects}</p>
        </div>
        <div class="chip">
            <h3 class="title">Funds Available</h3>
<%--            <p>490 AMOUNT (Rs. CR.)</p>--%>
            <p>${data.funds}</p>
        </div>
        <div class="chip">
            <h3 class="title">State Share Released</h3>
<%--            <p>400 AMOUNT (Rs. CR.)</p>--%>
            <p>${data.shares}</p>
        </div>

    </div>
    <br><br><br><br><br><br>
    <div class="context">
        <h3>Categories</h3>
        <div class="searchBar"><span class="material-icons">search</span>&nbsp; <input placeholder="Search a Category" style="
         outline: none;
         border: none;
         background: transparent;" id="search" onkeyup="filterSearch()"></div>
        <br><br>
        <div class="categoryChips" id = "cc">
            <div class="categoryChip">
                <p><a href="/educationdata?city=${data.city}&&type=Education">Education</a> &nbsp;<span class="material-icons">school</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/bankingdata?city=${data.city}&&type=Banking">Banking</a> &nbsp;<span class="material-icons">currency_rupee</span></p>            </div>
            <div class="categoryChip">
                <p><a href="/parksdata?city=${data.city}&&type=Parks">Parks</a> &nbsp;<span class="material-icons">park</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/moviedata?city=${data.city}&&type=Movies">Movies</a> &nbsp;<span class="material-icons">movie</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/governmentdata?city=${data.city}&&type=Government">Government</a> &nbsp;<span class="material-icons">account_balance</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/healthcaredata?city=${data.city}&&type=Healthcare">Health Care</a> &nbsp;<span class="material-icons">healing</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/secruitydata?city=${data.city}&&type=Security">Security</a> &nbsp;<span class="material-icons">security</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/riskmanagementdata?city=${data.city}&&type=RiskManagement">Risk Management</a> &nbsp;<span class="material-icons">local_fire_department</span></p>
            </div>
            <div class="categoryChip">
                <p><a href="/fooddata?city=${data.city}&&type=Food">Food</a> &nbsp;<span class="material-icons">fastfood</span></p>
            </div>
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br>
</div>
<script>
    function filterSearch() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("search");
        filter = input.value.toUpperCase();
        ul = document.getElementById("cc");
        li = ul.getElementsByTagName("div");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("p")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>