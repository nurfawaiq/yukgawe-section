<?= $this->extend('layout/default') ?>

<?= $this->section('title') ?>
<title>Data Contacts &mdash; yukGawe</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
  <section class="section">
    <div class="section-header">
      <h1>Contacts</h1>
      <div class="section-header-button">
        <a href="<?=site_url('contacts/new')?>" class="btn btn-primary">Add New</a>
      </div>
    </div>

    <?= $this->include('layout/alert') ?>

    <div class="section-body">

      <div class="card">
        <div class="card-header">
          <h4>Data Kontak Saya</h4>
        </div>
        <div class="card-header">
          <form action="" method="get" autocomplete="off">
            <div class="float-left">
              <?php $request = \Config\Services::request(); ?>
              <input type="text" name="keyword" value="<?=$request->getGet('keyword')?>" class="form-control" style="width:155pt;" placeholder="Keyword pencarian">
            </div>
            <div class="float-right ml-2">
              <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>

              <?php
              $request = \Config\Services::request();
              $keyword = $request->getGet('keyword');
              if($keyword != '') {
                $param = "?keyword=".$keyword;
              } else {
                $param = "";
              }
              ?>
              <a href="<?=site_url('contacts/export'.$param)?>" class="btn btn-primary">
                <i class="fas fa-file-download"></i> Export Excel
              </a>

              <div class="dropdown d-inline">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-file-upload"></i> Import Excel
                </button>
                <div class="dropdown-menu">
                  <a class="dropdown-item has-icon" href="<?=base_url('contacts-example-import.xlsx')?>">
                    <i class="fas fa-file-excel"></i> Download Example
                  </a>
                  <a class="dropdown-item has-icon" href="" data-toggle="modal" data-target="#modal-import-contact">
                    <i class="fas fa-file-import"></i> Upload File
                  </a>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="card-body table-responsive">
          <table class="table table-striped table-md">
            <thead>
              <tr>
                <th>#</th>
                <th>Nama Kontak</th>
                <th>Alias</th>
                <th>Telepon</th>
                <th>Email</th>
                <th>Alamat</th>
                <th>Info</th>
                <th>Grup</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $page = isset($_GET['page']) ? $_GET['page'] : 1;
              $no = 1 + (10 * ($page - 1));
              foreach ($contacts as $key => $value) : ?>
                <tr>
                  <td><?=$no++?></td>
                  <td><?=$value->name_contact?></td>
                  <td><?=$value->name_alias?></td>
                  <td><?=$value->phone?></td>
                  <td><?=$value->email?></td>
                  <td><?=$value->address?></td>
                  <td><?=$value->info_contact?></td>
                  <td><?=$value->name_group?></td>
                  <td class="text-center" style="width:15%">
                    <a href="<?=site_url('contacts/'.$value->id_contact.'/edit')?>" class="btn btn-warning btn-sm"><i class="fas fa-pencil-alt"></i></a>
                    <form action="<?=site_url('contacts/'.$value->id_contact)?>" method="post" class="d-inline" id="del-<?=$value->id_contact?>">
                      <?= csrf_field() ?>
                      <input type="hidden" name="_method" value="DELETE">
                      <button class="btn btn-danger btn-sm" data-confirm="Hapus Data?|Apakah Anda yakin?" data-confirm-yes="submitDel(<?=$value->id_contact?>)">
                        <i class="fas fa-trash"></i>
                      </button>
                    </form>
                  </td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
          <div class="float-left">
            <i>Showing <?=empty($contacts) ? 0 : 1 + (10 * ($page - 1))?> to <?=$no-1?> of <?=$pager->getTotal()?> entries</i>
          </div>
          <div class="float-right">
            <?= $pager->links('default', 'pagination') ?>
          </div>
        </div>
      </div>

    </div>
  </section>

  <div class="modal fade" tabindex="-1" role="dialog" id="modal-import-contact">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Import Contacts</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="<?=site_url('contacts/import')?>" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <label>File Excel</label>
            <div class="custom-file">
              <?= csrf_field() ?>
              <input type="file" name="file_excel" class="custom-file-input" id="file_excel" required>
              <label for="file_excel" class="custom-file-label">Pilih File</label>
            </div>
          </div>
          <div class="modal-footer bg-whitesmoke br">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<?= $this->endSection() ?>