<%--
  Created by IntelliJ IDEA.
  User: kevinorta
  Date: 12/1/21
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="partials/head.jsp" %>
    <title>Quasarsito's Pizza Place</title>
</head>
<body>
<%@include file="partials/navbar.jsp" %>
<div>
    <form method="POST">
        <h2>Let's Create Your Pizza!</h2>
        <%--select the crust type, sauce type, size type (use select inputs), toppings (checkboxes), and delivery address (text input). --%>
        <label for="crust">Choose a crust:</label>
        <br>
        <select name="crust" id="crust">
            <option value="thin">Thin</option>
            <option value="hand">Handtossed</option>
            <option value="cheesestuffed">Cheese Stuffed</option>
        </select>
        <hr>
        <label for="sauce">Choose a sauce:</label>
        <br>
        <select name="sauce" id="sauce">
            <option value="tomato">Marinara</option>
            <option value="alfredo">Alfredo</option>
            <option value="none">None</option>
        </select>
        <hr>
        <label for="size">Choose a size:</label>
        <br>
        <select name="size" id="size">
            <option value="10">'10 Medium'</option>
            <option value="16">'16 Large'</option>
            <option value="24">'24 Family Sized'</option>
        </select>
        <hr>
        <h5>Can't forget about the toppings!</h5>
        <input type="checkbox" id="topping1" name="toppings" value="Sausage">
        <label for="topping1"> Sausage</label><br>
        <input type="checkbox" id="topping2" name="toppings" value="Pepperoni">
        <label for="topping2"> Pepperoni</label><br>
        <input type="checkbox" id="topping3" name="toppings" value="Mushrooms">
        <label for="topping3"> Mushrooms</label><br>
        <hr>
        <h5>Now, where exactly is this going...?</h5>
        <label for="address">Street Address:</label>
        <input type="text" id="address" name="address">
        <br>
        <input type="submit" value="submit">
    </form>
</div>
<%--<nav>--%>
<%--    <div class="nav nav-tabs" id="nav-tab" role="tablist">--%>
<%--        <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"--%>
<%--           aria-controls="nav-home" aria-selected="true"><span class="badge badge-light">1</span> Size & Crust</a>--%>
<%--        <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"--%>
<%--           aria-controls="nav-profile" aria-selected="false"><span class="badge badge-light">2</span> Cheese & Sauce</a>--%>
<%--        <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab"--%>
<%--           aria-controls="nav-contact" aria-selected="false"><span class="badge badge-light">3</span> Toppings</a>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<div class="tab-content" id="nav-tabContent">--%>
<%--    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">--%>
<%--        <ul class="list-group">--%>
<%--            <li class="list-group-item active">Choose Size & Crust</li>--%>
<%--            <div class="card" style="width: 100%;">--%>
<%--                <div class="card-header">--%>
<%--                    Hand Tossed--%>
<%--                </div>--%>
<%--                <ul class="list-group list-group-flush">--%>
<%--                    <li class="list-group-item">Garlic seasoned crust, with a rich, buttery taste.</li>--%>
<%--                    <li class="list-group-item"><input type="radio" id="small" name="size" value="small-hand"> Small--%>
<%--                        (10')--%>
<%--                    </li>--%>
<%--                    <li class="list-group-item"><input type="radio" id="medium" name="size" value="medium-hand"> Medium--%>
<%--                        (12')--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <br>--%>
<%--                <div class="card-header">Crispy Thin</div>--%>
<%--                <ul class="list-group list-group-flush">--%>
<%--                    <li class="list-group-item">Thin enough for optimum crispy to crunch ratio.</li>--%>
<%--                    <li class="list-group-item"><input type="radio" id="small-crispy" name="size" value="small-crispy">--%>
<%--                        Small (10')--%>
<%--                    </li>--%>
<%--                    <li class="list-group-item"><input type="radio" id="medium-crispy" name="size"--%>
<%--                                                       value="medium-crispy"> Medium (12')--%>
<%--                    </li>--%>
<%--                    <br>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="card-footer text-muted">--%>
<%--                <a href="#" class="btn btn-primary button-next">Next Step ></a>--%>
<%--            </div>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">--%>
<%--        <div class="tab-content" id="nav-tabContent">--%>
<%--            <div class="tab-pane fade show active" id="nav-profile2" role="tabpanel" aria-labelledby="nav-home-tab">--%>
<%--                <ul class="list-group">--%>
<%--                    <li class="list-group-item active">Choose Cheese & Sauce</li>--%>
<%--                    <div class="card" style="width: 100%;">--%>
<%--                        <div class="card-header">--%>
<%--                            Cheese--%>
<%--                        </div>--%>
<%--                        <ul class="list-group list-group-flush">--%>
<%--                            <li class="list-group-item how-much-cheese">How much?--%>
<%--                                <div class="input-group mb-3">--%>
<%--                                    <select class="custom-select" id="inputGroupSelect02">--%>
<%--                                        <option selected>Choose...</option>--%>
<%--                                        <option value="1">Light</option>--%>
<%--                                        <option value="2">Medium</option>--%>
<%--                                        <option value="3">Heavy</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                        <div class="card-header">--%>
<%--                            Sauce--%>
<%--                        </div>--%>
<%--                        <ul class="list-group list-group-flush">--%>
<%--                            <li class="list-group-item how-much-cheese">What type?--%>
<%--                                <div class="input-group mb-3">--%>
<%--                                    <select class="custom-select" id="inputGroupSelect02">--%>
<%--                                        <option selected>Choose...</option>--%>
<%--                                        <option value="tomato">Tomato</option>--%>
<%--                                        <option value="alfredo">Alfredo</option>--%>
<%--                                        <option value="none">None</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                        <ul class="list-group list-group-flush">--%>
<%--                            <li class="list-group-item how-much-cheese">How much?--%>
<%--                                <div class="input-group mb-3">--%>
<%--                                    <select class="custom-select" id="inputGroupSelect02">--%>
<%--                                        <option selected>Choose...</option>--%>
<%--                                        <option value="1">Light</option>--%>
<%--                                        <option value="2">Medium</option>--%>
<%--                                        <option value="3">Heavy</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                        <div class="card-footer text-muted">--%>
<%--                            <a href="#" class="btn btn-primary button-previous">< Previous Step</a><a href="#"--%>
<%--                                                                                                      class="btn btn-primary button-next">--%>
<%--                            Next Step ></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-profile-tab">--%>
<%--                <div class="tab-content" id="nav-tabContent2">--%>
<%--                    <div class="tab-pane fade show active" id="nav-profile3" role="tabpanel"--%>
<%--                         aria-labelledby="nav-home-tab">--%>
<%--                        <ul class="list-group">--%>
<%--                            <li class="list-group-item active">Choose Cheese & Sauce</li>--%>
<%--                            <div class="card" style="width: 100%;">--%>
<%--                                <div class="card-header">--%>
<%--                                    Cheese--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</body>
</html>
