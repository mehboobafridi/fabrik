UPDATE `#__fabrik_elements` set plugin = (SELECT replace(plugin,'fabrik', ''));
ALTER TABLE `#__fabrik_connections` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_connections` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_cron` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_cron` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_elements` CHANGE `show_in_table_summary` `show_in_list_summary`;
ALTER TABLE `#__fabrik_elements` DROP `can_order`;
ALTER TABLE `#__fabrik_elements` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_elements` DROP `button_javascript`;
ALTER TABLE `#__fabrik_elements` DROP `sub_values`;
ALTER TABLE `#__fabrik_elements` DROP `sub_labels`;
ALTER TABLE `#__fabrik_elements` DROP `sub_initial_selection`;
ALTER TABLE `#__fabrik_elements` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_forms` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_forms` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_groups` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_groups` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_joins` CHANGE `table_id` `list_id` INT( 6 ) NOT NULL;
ALTER TABLE `#__fabrik_joins` CHANGE `attribs` `params`; 
ALTER TABLE `#__fabrik_jsactions` CHANGE `attribs` `params`;
RENAME TABLE `#__fabrik_tables` TO `#__fabrik_lists`;
ALTER TABLE `#__fabrik_lists` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_lists` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_log` ADD `flag` SMALLINT(3) NOT NULL;
ALTER TABLE `#__fabrik_log` ADD `message_source` VARCHAR(255) NOT NULL;
ALTER TABLE `#__fabrik_packages` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_packages` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_packages` ADD `external_ref` VARCHAR(255) NOT NULL;
ALTER TABLE `#__fabrik_packages` ADD `component_name` VARCHAR(100) NOT NULL;
ALTER TABLE `#__fabrik_packages` ADD `version` VARCHAR(10) NOT NULL;
ALTER TABLE `#__fabrik_packages` DROP `tables`;
ALTER TABLE `#__fabrik_validations` CHANGE `clent_side_validation` `client_side_validation`;
ALTER TABLE `#__fabrik_validations` CHANGE `attribs` `params`;
ALTER TABLE `#__fabrik_visualizations` CHANGE `state` `published`;
ALTER TABLE `#__fabrik_visualizations` CHANGE `attribs` `params`;
