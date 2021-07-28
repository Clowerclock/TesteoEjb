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
      <!-- End Navbar -->
      
      <!-- Inicio Formulario ingreso  -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Compra/Ingreso de libros</h5>
              </div>
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-md-1">
                      <div class="form-group">
                        <label>Compañía vendedora</label>
                        <input type="text" class="form-control" placeholder="Si es de dudosa reputación, ponga 'infralegal'" required="required">
                      </div>
                    </div>
                    <div class="col-md-3 px-md-1">
                      <div class="form-group">
                        <label>Título</label>
                        <input type="text" class="form-control" placeholder="Ej: El señor de los anillos" required="required">
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                      
                      <!-- Recordar cambiar el tipo de texto a que no sea un email o sino tendremos varios lindos problemas -->
                        <label for="exampleInputEmail1">ISBN</label>
                        <input type="text" class="form-control" placeholder="18548575-F" required="required">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 pr-md-1">
                      <div class="form-group">
                        <label>Autor</label>
                        <input type="text" class="form-control" placeholder="JRR.Tolkien" required="required">
                      </div>
                    </div>
                    <div class="col-md-6 pl-md-1">
                      <div class="form-group">
                        <label>Género</label>
                        <input type="text" class="form-control" placeholder="Ex:fantástico" required="required">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Editorial</label>
                        <input type="text" class="form-control" placeholder="Salamandra editores.ltda" required="required">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 pr-md-1">
                      <div class="form-group">
                        <label>Año de publicación</label>
                        <input type="text" class="form-control" placeholder="1984" required="required">
                      </div>
                    </div>
                    <div class="col-md-4 px-md-1">
                      <div class="form-group">
                        <label>Idioma</label>
                        <input type="text" class="form-control" placeholder="Inglés" required="required">
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Número de páginas</label>
                        <input type="number" class="form-control" placeholder="845" required="required">
                      </div>
                    </div>                    
                  </div>
                  <div class="row">
                  <div class="col-md-4 pr-md-1">
                    <div class="form-group">
                      <label>Precio de compra</label>
                      <input type="number" class="form-control" placeholder="$50.000" required="required">
                    </div>
                   </div>
                    <div class="col-md-4 px-md-1">
                      <div class="form-group">
                        <label>Unidades compradas</label>
                        <input type="number" class="form-control" placeholder="50" required="required">
                      </div>
                    </div>
                  </div>
               	<div class="card-footer">
               		<button type="submit" class="btn btn-fill btn-primary">Guardar</button>
              	</div>              
                </form>
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
  <script src="../Html/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <!-- Place this tag in your head or just before your close body tag. -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../Html/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../Html/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../Html/assets/js/black-dashboard.min.js?v=1.0.0"></script><!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="../Html/assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $navbar = $('.navbar');
        $main_panel = $('.main-panel');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');
        sidebar_mini_active = true;
        white_color = false;

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



        $('.fixed-plugin a').click(function(event) {
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .background-color span').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data', new_color);
          }

          if ($main_panel.length != 0) {
            $main_panel.attr('data', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data', new_color);
          }
        });

        $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            sidebar_mini_active = false;
            blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
          } else {
            $('body').addClass('sidebar-mini');
            sidebar_mini_active = true;
            blackDashboard.showSidebarMessage('Sidebar mini activated...');
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });

        $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (white_color == true) {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').removeClass('white-content');
            }, 900);
            white_color = false;
          } else {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').addClass('white-content');
            }, 900);

            white_color = true;
          }


        });

        $('.light-badge').click(function() {
          $('body').addClass('white-content');
        });

        $('.dark-badge').click(function() {
          $('body').removeClass('white-content');
        });
      });
    });
  </script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "black-dashboard-free"
      });
  </script>
</body>

</html>