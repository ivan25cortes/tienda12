<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>DeportShop</title>

  <!-- Bootstrap core CSS -->
  <link href="<?=base_url()?>assets1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<?=base_url()?>assets1/css/shop-homepage.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">DeportShop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link" href="index">Catalogo
            <!-- <span class="sr-only">(current)</span> -->
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="registro">Registrarse
                <span class="sr-only">(current)</span>
            </a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="login">Entrar</a>
          </li>
          -->
          <!--<li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
           -->  
        </ul>
      </div>
    </div>
  </nav>
 

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">DeportShop</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">Agregar nuevo</a>
          <a href="#" class="list-group-item">Catalogo general</a>
          <a href="#" class="list-group-item">Salir</a>
        </div>
        -->
      </div>
      
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

    
        <div class="row margenes-1">

     
         <div class="col-xs-12 col-md-8">
           <h2>Productos Registrados</h2>

           <table>
             <thead>
              <tr>
               <th>No.</th>
               <th>Producto</th>
               <th>Marca</th>
               <th>Categoria</th>
               <th>Precio</th>
               <th>Descripción</th>
               <th>Marca</th>
               <th>Fecha registro</th>
               <th>&nbsp;</th>
             </tr>
             </thead>
             <tbody>
               <?
               if($producto!=false){
                  foreach($producto->result() as $producto){
                    ?>
                    <tr>
                      <td>-</td>
                      <td><?= $producto->nombre ?></td>
                      <td><?= $producto->marca ?></td>
                      <td><?= $producto->categoria ?></td>
                      <td><?= $producto->precio ?></td>
                      <td><?= $producto->descripcion ?></td>
                      <td><?= $producto->f_registro ?></td>
                      <td>-</td>
                    </tr>

                    <?
                }

               }
               ?>
             </tbody>
           </table>
           
         </div>

         
        </div>
           
          

          
           
         </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; DeportShop 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="<?=base_url()?>assets1/vendor/jquery/jquery.min.js"></script>
  <script src="<?=base_url()?>assets1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
