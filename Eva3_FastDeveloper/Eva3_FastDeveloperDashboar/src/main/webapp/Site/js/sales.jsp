<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="Header2.jsp"/>
    
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

            <div class="content">
                <div class="row"> <!-- En este div cargar los libros en VENTA de la base de datos -->
                    <div class=" catalog row">
                        <div class="col-6 catBook">
                            <img src="../Html/assets/img/annaKarenina2.jpg">
                        </div>
                        <div class="col-6 bookDescription">
                            <p class="bookTitle">Anna Karenina</p>
                            <p class="author">Leo Tolstoy</p>
                            <p class="genre">Realismo literario, Clásicos, Romance</p>
                            <p class="price">$14500</p>
                            <a class="text-info">Agregar al carro
                                <i class="material-icons">shopping_cart</i>
                            </a>
                        </div>
                    </div>
                    <div class="catalog row">
                        <div class="col-6 catBook">
                            <img src="../Html/assets/img/dorianGray2.jpg">
                        </div>
                        <div class="col-6 bookDescription">
                            <p class="bookTitle">El Retrato de Dorian Gray</p>
                            <p class="author">Oscar Wilde</p>
                            <p class="genre">Horror Gótico, Clásicos</p>
                            <p class="price">$15000</p>
                            <a class="text-info">Agregar al carro
                                <i class="material-icons">shopping_cart</i>
                            </a>
                        </div>
                    </div>
                    <div class=" catalog row">
                        <div class="col-6 catBook">
                            <img src="../Html/assets/img/malibuRenace.jpg">
                        </div>
                        <div class="col-6 bookDescription">
                            <p class="bookTitle">Malibú Renace</p>
                            <p class="author">Taylor Jenkins Reid</p>
                            <p class="genre">Ficción Histórica, Contemporáneo</p>
                            <p class="price">$19500</p>
                            <a class="text-info">Agregar al carro
                                <i class="material-icons icon-cart"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--   Core JS Files   -->
    <script src="../Html/assets/js/core/jquery.min.js"></script>
    <script src="../Html/assets/js/core/popper.min.js"></script>
    <script src="../Html/assets/js/core/bootstrap.min.js"></script>

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
    </script>
</body>

</html>