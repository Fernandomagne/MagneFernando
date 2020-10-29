<!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avata.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <?php echo $name; ?></h1>
              <p>Bienvenido</p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus--><span class="heading"><p class="text-primary">Menu Principal </p></span>
          <ul class="list-unstyled">
          
            <li><a href="home.php"> <i class="icon-home"></i>Inicio </a></li>
            <li><a href="list_tickets.php?prefSeat_id="> <i class="icon-form"></i>Entradas vendidas </a></li>
            
           
          </ul><span class="heading" ><p class="text-primary"> Preferencias </p></span>
          
          <ul class="list-unstyled">
            <li> <a href="event_list.php"> <i class="icon-list"></i>Eventos </a></li>
            <li> <a href="seats_list.php"> <i class="icon-list"></i>Asientos </a></li>
          </ul>
          
        </nav>