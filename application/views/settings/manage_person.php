<!-- Account List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('manage_person') ?></h1>
            <small><?php echo display('manage_person') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('personal_loan') ?></a></li>
                <li class="active"><?php echo display('manage_person') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Message -->
        <?php
        $message = $this->session->userdata('message');
        if (isset($message)) {
            ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $message ?>                    
            </div>
            <?php
            $this->session->unset_userdata('message');
        }
        $error_message = $this->session->userdata('error_message');
        if (isset($error_message)) {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error_message ?>                    
            </div>
            <?php
            $this->session->unset_userdata('error_message');
        }
        ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">

                    <a href="<?php echo base_url('Cloan/add1_person') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('add_person') ?> </a>
                </div>
            </div>
        </div>

        <!-- Account List -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('manage_person') ?> </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="dataTableExample2" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th><?php echo display('name') ?></th>
                                        <th><?php echo display('address') ?></th>
                                        <th><?php echo display('phone') ?></th>
                                        <th class="text-right"><?php echo display('balance') ?></th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($person_list) {
//                                        echo '<pre>'; print_r($person_list);die();
                                        foreach ($person_list as $person) {
                                            $sql = 'SELECT (SELECT SUM(a.debit) FROM person_ledger a where a.person_id = "'.$person['person_id'].'") debit,
                                                    (SELECT SUM(b.credit) FROM person_ledger b WHERE b.person_id = "'.$person['person_id'].'") credit';
                                             $result = $this->db->query($sql)->result();
//                                             echo '<pre>';                                             print_r($result);
//                                             echo  $result[0]->debit - $result[0]->credit;
                                            ?>
                                            <tr>
                                                <td>
                                                    <a href="<?php echo base_url('Csettings/person_ledger/' . $person['person_id']); ?>">
                                                        <?php echo $person['person_name']; ?>
                                                    </a>
                                                </td>
                                                <td>
                                                    <?php echo $person['person_address']; ?>
                                                </td>
                                                <td>
                                                    <?php echo $person['person_phone']; ?>
                                                </td>
                                                <td class="text-right">
                                                    <?php
                                                    $balance = $result[0]->debit - $result[0]->credit;
                                                    echo number_format($balance, '2', '.', ','); ?>
                                                </td>
                                                <td>
                                                    <a href="<?php echo base_url('Csettings/person_edit/' . $person['person_id']); ?>"class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="" data-original-title="Update">
                                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        <?php }
                                        ?>
                                        <!--                                        {person_list}
                                                                                <tr>
                                                                                    <td><a href="
                                        <?php echo base_url('Csettings/person_ledger/{person_id}'); ?>">{person_name}</a></td>
                                                                                    <td>{person_address}</td>
                                                                                    <td>{person_phone}</td>
                                                                                    <td></td>
                                                                                    <td>
                                                                            <center>
                                        <?php echo form_open() ?>
                                                                                <a href="<?php echo base_url('Csettings/person_edit/{person_id}'); ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="" data-original-title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        <?php echo form_close() ?>	
                                                                            </center>
                                                                            </td>
                                                                            </tr>
                                                                            {/person_list}-->
                                        <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="text-right"><?php echo $links ?></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Account List End -->

