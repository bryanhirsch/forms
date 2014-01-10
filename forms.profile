<?php
/**
 * @file
 * Enables modules and site configuration for a forms site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function forms_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];

  $message = t("You're not done! Follow the instructions in the aws_sqs/README to pull down required AWS libraries with composer and then finish your setup here: ")
           . l('admin/config/system/aws-queue.', 'admin/config/system/aws-queue');
  drupal_set_message($text);
}
