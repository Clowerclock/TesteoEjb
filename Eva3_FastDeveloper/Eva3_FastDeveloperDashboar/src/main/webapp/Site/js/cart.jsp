<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="Header2.jsp"/>

    <div class="wrapper">
        <!-- MENU HEADER -->

        <div class="main-panel">
            <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent" id="navToggler">
                <div class="container-fluid">
                    <div class="navbar-wrapper" id="toggler">
                        <div class="navbar-toggle d-inline">
                            <button type="button" class="navbar-toggler" onclick="showNav()">
                                <span class="navbar-toggler-bar bar1"></span>
                                <span class="navbar-toggler-bar bar2"></span>
                                <span class="navbar-toggler-bar bar3"></span>
                            </button>
                        </div>
                        <a class="navbar-brand" href="javascript:void(0)">Fast Development</a>
                    </div>
                    <button class="navbar-toggler" type="button" onclick="headerMenu()" data-toggle="collapse"
                        data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navigation">
                        <ul class="navbar-nav ml-auto mr-3">
                            <li class="search-bar input-group">
                                <button class="btn btn-link" id="search-button" data-toggle="modal"
                                    data-target="#searchModal"><i class="material-icons">search</i>
                                    <span class="d-lg-none d-md-block">Search</span>
                                </button>
                            </li>
                            <li>
                                <button class="btn btn-link" id="search-button" data-toggle="modal">
                                    <i class="material-icons">person_outline</i>
                                    <span class="d-lg-none d-md-block">Profile</span>
                                </button>
                            </li>                            
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- SEARCH MODAL -->

            <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog"
                aria-labelledby="searchModal" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <i class="tim-icons icon-simple-remove"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BOOK CATALOG -->

            <div class="content cartContainer">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-chart">
                            <div class="card-header">
                                <h2 class="card-title">Carro de Compras</h2>
                            </div>
                            <div class="card-body">
                                <ul style="padding-left: 0px;">
                                    <li class="col-3" id="tabShop" onclick="shopping()"
                                        style="display:inline-flex; font-weight: 600; border-bottom: 2px solid var(--green); cursor:pointer">
                                        Compra</li>
                                    <li class="col-3" id="tabRent" onclick="renting()"
                                        style="display:inline-flex; font-weight: 600; cursor:pointer">
                                        Arriendo</li>
                                </ul>

                                <div class="table-responsive">
                                    <table class="table tablesorter" id="tableShop" style="padding: 2rem;">
                                        <thead class="text-primary"
                                            style="border-bottom: 1px solid rgba(34, 42, 66, 0.2);">
                                            <tr>
                                                <th class="">Producto</th>
                                                <th class="">Cantidad</th>
                                                <th class="text-center">Total</th>
                                                <th class="text-center">Eliminar</th>
                                            </tr>
                                        </thead>
                                        <tbody> 
                                        <!-- En este tbody va la COMPRA DEL LIBRO -->
                                            <tr>
                                                <td class="row" style="padding: 1rem;">
                                                <!-- Datos del libro -->
                                                    <img class="col-2" src="../Html/assets/img/annaKarenina2.jpg">
                                                    <div class="col-6">
                                                        <p>Anna Karenina</p>
                                                        <p>Leo Tolstoy</p>
                                                        <p style="font-weight: bold;">Precio: <span
                                                                style="font-weight: normal;">$12.500</span></p>
                                                    </div>
                                                </td>
                                                <td>
                                                <!-- Cantidad de unidades a comprar -->
                                                    <input class="form-control" type="text" value="1" maxlength="3"
                                                        id="quantity" onkeyup="return onlyNumbers(event)"
                                                        style="width: 5rem;">

                                                </td>
                                                <!-- Precio, debe mostrarse el TOTAL -->
                                                <!-- Agregar IVA, Precio Neto, Precio con IVA -->
                                                <td class="text-center">$13500</td>
                                                <td class="text-center">
                                                    <i class="material-icons">delete</i>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    
                                    
                                    <table class="table tablesorter" id="tableRent"
                                        style="padding: 2rem; display: none;">
                                        <thead class="text-primary"
                                            style="border-bottom: 1px solid rgba(34, 42, 66, 0.2);">
                                            <tr>
                                                <th class="">Producto</th>
                                                <th class="">Cantidad</th>
                                                <th class="text-center">Total</th>
                                                <th class="text-center">Eliminar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <!-- En este TBODY va el ARRIENDO del libro -->
                                            <tr>
                                                <td class="row" style="padding: 1rem;">
                                                <!-- Precios de arriendo e informacion -->
                                                    <img class="col-2" src="../Html/assets/img/writtenInTheWater.jpg">
                                                    <div class="col-6">
                                                        <p>Escrito en el Agua</p>
                                                        <p>Paula Hawkins</p>
                                                        <p style="font-weight: bold;">Precio diario: <span
                                                                style="font-weight: normal;">$1.500</span></p>
                                                        <p style="font-weight: bold;">Precio multa: <span
                                                                style="font-weight: normal;">$150</span></p>
                                                    </div>
                                                </td>
                                                <td>
                                                <!-- Cantidad unidades -->
                                                    <input class="form-control" type="text" value="3" maxlength="3"
                                                        id="quantity" onkeyup="return onlyNumbers(event)"
                                                        style="width: 5rem;">

                                                </td>
                                                <td class="text-center" value="">$4.500</td> <!-- Sumatoria segun unidades -->
                                                <td class="text-center">
                                                    <i class="material-icons">delete</i> <!-- Eliminar de la lista -->
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                
                            </div>
                        </div>
                    </div>

                </div>
            </div>
          </div>
        </div>

            <!--   Core JS Files   -->
            <script src="assets/js/core/jquery.min.js"></script>
            <script src="assets/js/core/popper.min.js"></script>
            <script src="assets/js/core/bootstrap.min.js"></script>

            <!-- SCRIPTS -->

            <script>
                function showNav() {
                    var x = document.getElementById("sidebar");
                    var y = document.getElementById("toggler")
                    if (x.style.display !== "block") {
                        x.style.display = "block";
                        y.style.marginLeft = "200px"
                    } else {
                        x.style.display = "none";
                        y.style.marginLeft = "0"
                    }
                }

                function headerMenu() {
                    var x = document.getElementById("navToggler");
                    console.log(x.className)
                    if (x.className == "navbar navbar-expand-lg navbar-absolute navbar-transparent") {
                        console.log("true")
                        x.classList.replace("navbar-transparent", "bg-white");
                    } else {
                        x.classList.replace("bg-white", "navbar-transparent");

                    }
                }

                function hide() {
                    var x = document.getElementById("bookDetails");
                    if (x.style.display === "none") {
                        x.style.display = "flex";
                    } else {
                        x.style.display = "none";
                    }
                }

                function onlyNumbers(val) {
                    var pattern = /^\d*$/;
                    var x = this.document.getElementById("quantity").value;
                    if (!pattern.test(val.key)) {
                        this.document.getElementById("quantity").value = this.document.getElementById("quantity").value.slice(0, -1)

                    }
                }

                function shopping() {
                    var x = this.document.getElementById("tableShop")
                    var tabA = this.document.getElementById("tabShop")
                    var y = this.document.getElementById("tableRent")
                    var tabB = this.document.getElementById("tabRent")
                    if (x.style.display === "none") {
                        x.style.display = "table";
                        y.style.display = "none";
                        tabA.style.borderBottom = "2px solid var(--green)";
                        tabB.style.borderBottom = "none";
                    }
                }

                function renting() {
                    var x = this.document.getElementById("tableShop")
                    var y = this.document.getElementById("tableRent")
                    var tabA = this.document.getElementById("tabShop")
                    var tabB = this.document.getElementById("tabRent")

                    if (y.style.display === "none") {
                        y.style.display = "table";
                        x.style.display = "none";
                        tabB.style.borderBottom = "2px solid var(--green)";
                        tabA.style.borderBottom = "none";
                    }
                }
            </script>
</body>

</html>