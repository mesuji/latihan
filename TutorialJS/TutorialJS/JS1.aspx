﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JS1.aspx.cs" Inherits="TutorialJS.JS1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>active button</title>    
    <style>
/* Style the buttons */
.btn {
    border: none;
    outline: none;
    padding: 10px 16px;
    background-color: #f1f1f1;
    cursor: pointer;
    font-size: 18px;
}

/* Style the active class, and buttons on mouse-over */
.active, .btn:hover {
    background-color: #666;
    color: white;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Active Button</h1>
<p>Highlight the active/current (pressed) button.</p>
  
<div id="myDIV">
  <button class="btn">1</button>
  <button class="btn active">2</button>
  <button class="btn">3</button>
  <button class="btn">4</button>
  <button class="btn">5</button>
</div>        
    </div>
    </form>
    <%--kok gak jalan ya mas scriptnya bila di c#, tapi klo di html biasa jalan.highlightnya gak mau pindah--%>
    <script>
        // Add active class to the current button (highlight it)
        var header = document.getElementById("myDIV");
        var btns = header.getElementsByClassName("btn");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function () {
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
            });
        }
    </script>    
</body>
</html>


