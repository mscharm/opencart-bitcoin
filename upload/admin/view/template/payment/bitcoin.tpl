<?php
/**
 * LICENSE
 *
 * This source file is subject to the GNU General Public License, Version 3
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @category   OpenCart
 * @package    Bitcoin Payment for OpenCart
 * @copyright  Copyright (c) 2015 Eugene Lifescale (a.k.a. Shaman) by OpenCart Ukrainian Community (http://opencart-ukraine.tumblr.com)
 * @license    http://www.gnu.org/copyleft/gpl.html GNU General Public License, Version 3
 */
 ?>

<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><?php echo $entry_host; ?></td>
            <td><input type="text" name="bitcoin_host" value="<?php echo $bitcoin_host; ?>" placeholder="<?php echo $entry_host; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_port; ?></td>
            <td><input type="text" name="bitcoin_port" value="<?php echo $bitcoin_port; ?>" placeholder="<?php echo $entry_port; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_path; ?></td>
            <td><input type="text" name="bitcoin_path" value="<?php echo $bitcoin_path; ?>" placeholder="<?php echo $entry_path; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_user; ?></td>
            <td><input type="text" name="bitcoin_user" value="<?php echo $bitcoin_user; ?>" placeholder="<?php echo $entry_user; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_password; ?></td>
            <td><input type="password" name="bitcoin_password" value="<?php echo $bitcoin_password; ?>" placeholder="<?php echo $entry_password; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_currency; ?></td>
            <td>
              <select name="bitcoin_currency">
                <?php foreach ($currencies as $currency) { ?>
                <?php if ($bitcoin_currency == $currency['code']) { ?>
                <option value="<?php echo $currency['code']; ?>" selected="selected"><?php echo $currency['title']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_qr; ?></td>
            <td>
              <select name="bitcoin_qr">
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php if ($bitcoin_qr == 'google') { ?>
                <option value="google" selected="selected"><?php echo $text_google_api; ?></option>
                <?php } else { ?>
                <option value="google"><?php echo $text_google_api; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="bitcoin_total" value="<?php echo $bitcoin_total; ?>" placeholder="<?php echo $entry_total; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td>
              <select name="bitcoin_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $bitcoin_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td>
              <select name="bitcoin_geo_zone_id" id="input-geo-zone" class="form-control">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $bitcoin_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td>
              <select name="bitcoin_status" id="input-status" class="form-control">
                <?php if ($bitcoin_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="bitcoin_sort_order" value="<?php echo $bitcoin_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>

<div style="text-align:center"><?php echo $text_copyright; ?></div>
<?php echo $footer; ?>



