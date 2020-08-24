<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>DeportShop</title>

  <!-- Bootstrap core CSS -->
  <link href="<?= base_url() ?>assets1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<?= base_url() ?>assets1/css/estilos_login.css" rel="stylesheet">
</head>
<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Iniciar Sesión</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="email" id="correo" name="correo" class="form-control" placeholder="correo electrónico" required autofocus>
                <label for="inputEmail">Correo electrónico</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="contraseña" name="contraseña" class="form-control" placeholder="contraseña" required>
                <label for="inputPassword">Contraseña</label>
              </div>

              
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Ingresar</button>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Iniciar con Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Iniciar con Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>