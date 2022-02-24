<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Login &mdash; yukNikah</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?=base_url()?>/template/node_modules/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=base_url()?>/template/node_modules/@fortawesome/fontawesome-free/css/all.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="<?=base_url()?>/template/assets/css/style.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
              <img src="<?=base_url()?>/template/assets/img/avatar/avatar-1.png" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Login</h4></div>

              <div class="card-body">
                <?php if(session()->getFlashdata('error')) : ?>
                  <div class="alert alert-danger alert-dismissible show fade">
                    <div class="alert-body">
                      <button class="close" data-dismiss="alert">x</button>
                      <b>Error !</b>
                      <?=session()->getFlashdata('error')?>
                    </div>
                  </div>
                <?php endif; ?>

                <form method="POST" action="<?=site_url('auth/loginProcess')?>" class="needs-validation" novalidate="">
                  <?= csrf_field() ?>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control" name="email" tabindex="1" required autofocus>
                    <div class="invalid-feedback">
                      Please fill in your email
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="d-block">
                    	<label for="password" class="control-label">Password</label>
                      <div class="float-right">
                        <a href="" class="text-small">
                          Forgot Password?
                        </a>
                      </div>
                    </div>
                    <input id="password" type="password" class="form-control" name="password" tabindex="2" required>
                    <div class="invalid-feedback">
                      Please fill in your password
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                      <label class="custom-control-label" for="remember-me">Remember Me</label>
                    </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Login
                    </button>
                  </div>
                </form>

              </div>
            </div>
            <div class="mt-5 text-muted text-center">
              Don't have an account? <a href="auth-register.html">Create One</a>
            </div>
            <div class="simple-footer">
              Copyright &copy; YukCoding 2021
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="<?=base_url()?>/template/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="<?=base_url()?>/template/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="<?=base_url()?>/template/assets/js/scripts.js"></script>
  <!-- Page Specific JS File -->
</body>
</html>
