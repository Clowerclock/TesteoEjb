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
                <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i
                    class="material-icons">search</i>
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

      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal"
        aria-hidden="true">
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

      <!-- REC LIST -->
      <div class="content">
        <div class="row">
          <div class="col-12">
            <div class="card card-chart">
              <div class="card-header ">
                <div class="row">
                  <div class="col-sm-6 text-left">
                    <h2 class="card-title">Nuestras Recomendaciones</h2>
                  </div>
                </div>
              </div>
              
              <!-- Este div es en un ciclo for, con javascrip que recibe datos del mysql**DESTACADOS -->
              <div class="recommendations">
                <div class="bookRec" onclick="hide()">
                  <img src="../Html/assets/img/prideAndPrejudice.jpg">
                  <p>Orgullo y Prejuicio</p>
                </div>
                <div class="bookRec">
                  <img src="../Html/assets/img/annaKarenina2.jpg">
                  <p>Anna Karenina</p>
                </div>
                <div class="bookRec">
                  <img src="../Html/assets/img/dorianGray3.jpg">
                  <p>El Retrato de Dorian Gray</p>
                </div>
                <div class="bookRec">
                  <img src="../Html/assets/img/girlInTheTrain.jpg">
                  <p>La Chica del Tren</p>
                </div>
                <div class="bookRec">
                  <img src="../Html/assets/img/malibuRenace.jpg">
                  <p>Malibú Renace</p>
                </div>
                <div class="bookRec">
                  <img src="../Html/assets/img/hombresDelNorte.jpg">
                  <p>Los Hombres del Norte</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- BOOK DESCRIPTION -->

        <div class="row" id="bookDetails" style="display: none;">
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h3 class="card-title"><i class="material-icons text-success">edit</i> Sinopsis </h3>
              </div>
              <div class="card-body">
                <div class="sinopsis">
                  <p>La señora Bennet ha criado a sus cinco hijas con el único deseo de encontrar marido.
                    La llegada al vecindario de Charles Bingley, un joven rico y soltero,
                    con algunas amistades despierta el interés de las hermanas Bennet y de las
                    familias vecinas, que verán una excelente oportunidad para cumplir su propósito.
                    Elizabeth, una de las hijas de los Bennet, empezará una singular relación con Darcy,
                    uno de los amigos de Bingley, que desencadenará esta historia de orgullo y prejuicios
                    entre los dos hasta llegar a conocer el verdadero amor.
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h3 class="card-title"><i class="material-icons text-success">content_paste</i> Ficha Técnica </h3>
              </div>
              <div class="card-body ">
                <div class="sinopsis">
                  <p>Autor(es): Jane Austen</p>
                  <p>Páginas: 323</p>
                  <p>Año de Publicación: 1801</p>
                  <p>Categoría(s): Clásicos, Romance</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h3 class="card-title"><i class="material-icons text-success">sell </i> Precios </h3>
              </div>
              <div class="card-body">
                <div class="sinopsis">
                  <p>Arriendo: $1.000 </p>
                  <p>Multa: $100 </p>
                  <p>Venta: $16.000 </p>
                  <a class="text-success">Agregar al Carro</a>
                </div>
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
    
    //<%
   // session.invalidate(); esto deberia ir en el boton log out
	//%>
    
    
  </script>
</body>
</html>