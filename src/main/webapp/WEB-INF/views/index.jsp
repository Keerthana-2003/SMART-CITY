<%--suppress ALL --%>
<link rel="stylesheet" href="../css/index.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/330e847ee6.js" crossorigin="anonymous"></script>

<%
    String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"+ "0123456789"+ "abcdefghijklmnopqrstuvxyz" + "!@#$%^&*(){}[]/?*-+";
    StringBuilder sb = new StringBuilder(10);
    for (int i = 0; i < 10; i++) {
        int index= (int)(AlphaNumericString.length()* Math.random());
        sb.append(AlphaNumericString.charAt(index));
    }
    String res = sb.toString();
%>

<h1 align="center" style="padding-top: 3%; opacity: .8;">Paatavik Welcomes You</h1>
<div class="index" align="center">
    <div class="card" id="card">
        <div id = "loginCard">
            <h2>Login</h2>
            <form action="/userLogin" method="post">
            <i class="far fa-user"></i>
            <input placeholder="Username" name="username"><br>
            <i class="far fa-eye-slash" onclick="password()" style="cursor:pointer;"></i>
            <input placeholder="Password" name="password" type="password" id="password"><br><br>
            <button>Login</button>
            </form>
            <p onclick="swapContent('regCard')">Not a Member? Join Us | <a>Forgot Password?</a></p>
        </div>
    </div>
</div>
<div id = "complete" style="display: none;">
    <div id = "logCard">
        <h2>Login</h2>
        <form action="/userLogin" method="post">
        <i class="far fa-user"></i>
        <input placeholder="Username" name="username"><br>
        <i class="far fa-eye-slash" onclick="password()" style="cursor:pointer;"></i>
        <input placeholder="Password" name="password" type="password" id="password"><br><br>
        <button>Login</button>
        </form>
        <p onclick="swapContent('regCard')">Not a Member? Join Us | <a>Forgot Password?</a></p>
    </div>
    <div id = "regCard">
        <h2>Register</h2>
        <form action="/register" method="post">
        <i class="far fa-user"></i>
        <input placeholder="Username" name="username"><br>
        <i class="far fa-eye-slash" onclick="password()" style="cursor:pointer;"></i>
        <input placeholder="Password" name="password" id="password"><br>
        <i class="fas fa-phone-alt"></i>
        <input placeholder="Phone Number" name="mobile"><br>
        <i class="far fa-envelope"></i>
        <input placeholder="E-Mail" name="email">
        <input value="<%=res%>" name = "id" hidden><br><br>
        <button >Register</button><br>
        </form>
        <p onclick="swapContent('logCard')">Already a Member? Login</p>
    </div>
</div>
<script>
    function swapContent(id) {
        const main = document.getElementById('card');
        const div = document.getElementById(id);
        const clone = div.cloneNode(true);
        while (main.firstChild) main.firstChild.remove();
        main.appendChild(clone);
    }
    function password() {
        var x = document.getElementById("password");
         if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }

    }

    // <i class="far fa-eye"></i>

</script>
