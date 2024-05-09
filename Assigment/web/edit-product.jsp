<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Edit Product - Dashboard Admin Template</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
        <!-- http://api.jqueryui.com/datepicker/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">
        <!--
            Product Admin CSS Template
            https://templatemo.com/tm-524-product-admin
        -->
    </head>

    <body>
        <%@include file="Hmanage.jsp" %>
        <div class="container tm-mt-big tm-mb-big">
            <div class="row">
                <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title d-inline-block">Edit Product</h2>
                            </div>
                        </div>
                        <div class="row tm-edit-product-row">
                            <div class="col-xl-6 col-lg-6 col-md-12">

                                <form action="editproduct" method="post" class="tm-edit-product-form">
                                    <c:forEach items="${requestScope.listP}" var="c">
                                        <div class="form-group mb-3">
                                            <label
                                                for="name"
                                                >Product Name
                                            </label>
                                            <input
                                                name="name"
                                                type="text"
                                                value="${c.name}"
                                                class="form-control validate"
                                                />
                                            <input type="hidden" name="pid" value="${c.pid}">
                                        </div>
                                        
                                        <div class="form-group mb-3">
                                            <label
                                                for="category"
                                                >Category</label
                                            >
                                            <select
                                                class="custom-select tm-select-accounts"
                                                name ="category"
                                                >                       
                                                <option value="${c.category.cid}" selected>${requestScope.c.name}</option>
                                                <c:forEach items="${requestScope.listC}" var="o">
                                                     
                                                    <option value="${o.cid}" >${o.name}</option>
                                                </c:forEach>
                                            </select>                    
                                        </div>
                                                
                                        <div class="form-group mb-3">
                                            <label
                                                for="size" 
                                                >  Size &nbsp;
                                            </label>
                                            <c:forEach items="${c.list}" var="s">
                                                <input
                                                    <input type="radio" name="size" value="${s.size.sid}"                                        
                                                    /> &nbsp;${s.size.name}   
                                            </c:forEach>

                                        </div>
                                        <div class="row">
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label
                                                    for="price"
                                                    >Price
                                                </label>
                                                <input
                                                    name="price"
                                                    type="text"
                                                    value="${c.price}"
                                                    class="form-control validate"
                                                    />
                                            </div>
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label
                                                    for="stock"
                                                    >Quantity
                                                </label>
                                                <c:forEach items="${c.list}" var="q">
                                                <input
                                                    name="quantity"
                                                    type="number"
                                                    
                                                        value="${q.quantity}"
                                                   

                                                    class="form-control validate"
                                                    />
                                                 </c:forEach>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label
                                                for="description"
                                                >Description</label
                                            >
                                            <textarea                    
                                                class="form-control validate tm-small"
                                                rows="5"
                                                required
                                                name="description"
                                                >${c.description}</textarea>
                                        </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                    <div class="tm-product-img-edit mx-auto">
                                        <img src="${c.image}" alt="Product image" class="img-fluid d-block mx-auto">
                                        <i
                                            class="fas fa-cloud-upload-alt tm-upload-icon"
                                            onclick="document.getElementById('fileInput').click();"
                                            ></i>
                                    </div>
                                    <div class="custom-file mt-3 mb-3">
                                        <input id="fileInput" type="file" style="display:none;" />
                                        <input
                                            type="text"
                                            name="image"
                                            class="form-control validate"
                                            value="${c.image}"
                                            
                                            />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Now</button>
                                </div> <br/>                                         
                            </c:forEach>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
        <!-- https://jqueryui.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
        <script>
                                                $(function () {
                                                    $("#expire_date").datepicker({
                                                        defaultDate: "10/22/2020"
                                                    });
                                                });
                                                
                                                function s(pid, sid){
                                                    
                                                }
        </script>
    </body>
</html>
