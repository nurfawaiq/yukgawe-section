<?= $this->extend('layout/default') ?>

<?= $this->section('title') ?>
<title>Data Groups &mdash; yukGawe</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
  <section class="section">
    <div class="section-header">
      <h1>Groups</h1>
      <div class="section-header-button">
        <a href="<?=site_url('groups/new')?>" class="btn btn-primary">Add New</a>
      </div>
    </div>

    <?= $this->include('layout/alert') ?>

    <div class="section-body">

      <div class="card">
        <div class="card-header">
          <h4>Data Group Kontak</h4>
          <div class="card-header-action">
            <a href="<?=site_url('groups/trash')?>" class="btn btn-danger"><i class="fa fa-trash"></i> Trash</a>
          </div>
        </div>
        <div class="card-body table-responsive">
          <table class="table table-striped table-md" id="table1">
            <thead>
              <tr>
                <th>#</th>
                <th>Nama Grup</th>
                <th>Info</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($groups as $key => $value) : ?>
                <tr>
                  <td><?=$key + 1?></td>
                  <td><?=$value->name_group?></td>
                  <td><?=$value->info_group?></td>
                  <td class="text-center" style="width:15%">
                    <a href="<?=site_url('groups/edit/'.$value->id_group)?>" class="btn btn-warning btn-sm"><i class="fas fa-pencil-alt"></i></a>
                    <form action="<?=site_url('groups/delete/'.$value->id_group)?>" method="post" class="d-inline" id="del-<?=$value->id_group?>">
                      <?= csrf_field() ?>
                      <button class="btn btn-danger btn-sm" data-confirm="Hapus Data?|Apakah Anda yakin?" data-confirm-yes="submitDel(<?=$value->id_group?>)">
                        <i class="fas fa-trash"></i>
                      </button>
                    </form>
                  </td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>

    </div>
  </section>
<?= $this->endSection() ?>