<?= $this->extend('layout/default') ?>

<?= $this->section('title') ?>
<title>Update Group &mdash; yukNikah</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
  <section class="section">
    <div class="section-header">
      <div class="section-header-back">
        <a href="<?=site_url('groups')?>" class="btn"><i class="fas fa-arrow-left"></i></a>
      </div>
      <h1>Update Group</h1>
    </div>

    <div class="section-body">

      <div class="card">
        <div class="card-header">
          <h4>Edit Group Kontak</h4>
        </div>
        <div class="card-body col-md-6">
          <?php $validation =  \Config\Services::validation(); ?>
          <form action="<?=site_url('groups/update/'.$group->id_group)?>" method="post" autocomplete="off">
            <?= csrf_field() ?>
            <div class="form-group">
                <label>Nama Group *</label>
                <input type="text" name="name_group" value="<?=old('name_group', $group->name_group)?>" class="form-control <?=$validation->hasError('name_group') ? 'is-invalid' : null?>">
                <div class="invalid-feedback">
                  <?=$validation->getError('name_group')?>
                </div>
            </div>
            <div class="form-group">
                <label>Info</label>
                <textarea name="info_group" class="form-control"><?=$group->info_group?></textarea>
            </div>
            <div>
                <button type="submit" class="btn btn-success"><i class="fas fa-paper-plane"></i> Save</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>
<?= $this->endSection() ?>