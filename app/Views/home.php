<?= $this->extend('layout/default') ?>

<?= $this->section('title') ?>
<title>Home &mdash; yukNikah</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
  <section class="section">
    <div class="section-header">
      <h1>Dashboard</h1>
    </div>

    <div class="section-body">
      
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-primary">
              <i class="far fa-user"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Gawe</h4>
              </div>
              <div class="card-body">
                <?=countData('gawe')?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-danger">
              <i class="far fa-newspaper"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Grup</h4>
              </div>
              <div class="card-body">
                <?=countData('groups')?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-warning">
              <i class="far fa-file"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Kontak</h4>
              </div>
              <div class="card-body">
                <?=countData('contacts')?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
          <div class="card card-statistic-1">
            <div class="card-icon bg-success">
              <i class="fas fa-circle"></i>
            </div>
            <div class="card-wrap">
              <div class="card-header">
                <h4>Undangan</h4>
              </div>
              <div class="card-body">
                47
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>
<?= $this->endSection() ?>