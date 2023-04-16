<link rel="stylesheet" href="../css/profile.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/330e847ee6.js" crossorigin="anonymous"></script>

<style>
    .card{
        max-width: 450px;
        min-height: 300px;
        background: rgba(211, 211, 211, 0.44);
        padding: 2%;
        color: black;
        border-radius: 15px;
        opacity: .7;
        box-shadow: 1px 3px 7px #5d5d5e;
    }

</style>

<div class="profile" align="center">
    <h3 style="color: #ccc;">User Profile</h3>
    <div class="card">

    <input value="${data.username}" disabled>&nbsp;
    <input value="${data.email}" disabled><br>
    <input value="${data.mobile}" disabled>&nbsp;
    <input value="${data.id}" disabled><br>
    <button class="edit-button">Edit <i class="fas fa-pen"></i></button>
    <button class="edit-button" style="background: #e54a4a;">Delete <i class="far fa-trash-alt"></i></button><br><br>
     <a href="/home">Back</a>
    </div>
</div>