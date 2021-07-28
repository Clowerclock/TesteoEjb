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
      
      
      
<!-- Parte de la tabla -->

<div class="content">
        <div class="row">
        
          <div class="col-md-12 ">
            <div class="card ">
              <div class="card-header">
                <h4 class="card-title"> Ceci n'est pas un tableau</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                        <th>
                          Título
                        </th>
                        <th>
                          Código ISBN
                        </th>
                        <th>
                          Autor
                        </th>
                        <th>
                          Unidades
                        </th>
                        <th class="text-center">
                          Precio
                        </th>
                      </tr>
                    </thead>
                    <tbody> <!-- Aca rellenar la lista con un puto for desde la puta bd //VER EL PUTO BOTON DE SEARCH -->
                      <tr>
                        <td>
                          Anna Karerina
                        </td>
                        <td>
                          185584851-G
                        </td>
                        <td>
                          Leo Tolstoy
                        </td>
                        <td>
                        Arriendo:5 <br>Venta:5
                        </td>
                        <td class="text-center">
                          $13.500
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
</body>

</html>
</html>