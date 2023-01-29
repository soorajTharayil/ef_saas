





-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2023 at 05:19 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efeedor_demo_sunrise`
--

-- --------------------------------------------------------

--
-- Table structure for table `bf_coordinator`
--

CREATE TABLE `bf_coordinator` (
  `id` int(11) NOT NULL,
  `guid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'pass',
  `files` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filest` int(22) DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bf_coordinator`
--

INSERT INTO `bf_coordinator` (`id`, `guid`, `name`, `password`, `files`, `filest`, `status`) VALUES
(1, '1', 'Patient Cordinator', '1', NULL, 1594194163, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_departmentop`
--

CREATE TABLE `bf_departmentop` (
  `id` int(11) NOT NULL,
  `guid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `total_handover` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bed_no` text COLLATE utf8_unicode_ci,
  `smallname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderd` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bf_departmentop`
--

INSERT INTO `bf_departmentop` (`id`, `guid`, `title`, `mobile`, `total`, `total_handover`, `modified_time`, `bed_no`, `smallname`, `orderd`) VALUES
(42, '1584435228', 'ONCOLOGY', NULL, NULL, NULL, '2020-06-09 12:24:05', '', NULL, NULL),
(33, '1542228882', 'ENT', NULL, NULL, NULL, '2020-06-09 12:23:46', '', NULL, NULL),
(36, '1542228910', 'ORTHOPAEDICS', NULL, NULL, NULL, '2020-06-09 12:24:27', '', NULL, NULL),
(38, 'ALL', 'ALL', NULL, NULL, NULL, '2018-11-15 09:18:52', NULL, 'ALL', 0),
(43, '1591685689', 'CARDIOLOGY', NULL, NULL, NULL, '2020-06-09 12:24:49', '', NULL, NULL),
(44, '1591685707', 'UROLOGY', NULL, NULL, NULL, '2020-06-09 12:25:07', '', NULL, NULL),
(45, '1591685872', 'NEUROLOGY', NULL, NULL, NULL, '2020-06-09 12:27:52', '', NULL, NULL),
(46, '1591685966', 'PHYSIOTHERAPY & REHABILITATION', NULL, NULL, NULL, '2020-06-09 12:29:26', '', NULL, NULL),
(47, '1591686003', 'PEDIATRICS', NULL, NULL, NULL, '2020-06-09 12:30:03', '', NULL, NULL),
(48, '1591686017', 'PLASTIC SURGERY', NULL, NULL, NULL, '2020-06-09 12:30:17', '', NULL, NULL),
(49, '1591686044', 'GENERAL MEDICINE', NULL, NULL, NULL, '2020-06-09 12:30:44', '', NULL, NULL),
(50, '1591686058', 'VASCULAR SURGERY', NULL, NULL, NULL, '2020-06-09 12:30:58', '', NULL, NULL),
(51, '1591686066', 'GASTROENTEROLOGY', NULL, NULL, NULL, '2020-06-09 12:31:06', '', NULL, NULL),
(52, '1591686109', 'GENERAL SURGERY', NULL, NULL, NULL, '2020-06-09 12:31:49', '', NULL, NULL),
(53, '1599557710', 'PHYSIOTHERAPY', NULL, NULL, NULL, '2020-09-08 15:05:10', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_feedback`
--

CREATE TABLE `bf_feedback` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nurseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patientid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset` text COLLATE utf8_unicode_ci,
  `datet` date DEFAULT NULL,
  `messagestatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `emailstatus` int(11) DEFAULT '0',
  `messagestatus_patient` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bf_feedback_int`
--

CREATE TABLE `bf_feedback_int` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nurseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patientid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset` text COLLATE utf8_unicode_ci,
  `datet` date DEFAULT NULL,
  `messagestatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `emailstatus` int(11) DEFAULT '0',
  `messagestatus_patient` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bf_opatients`
--

CREATE TABLE `bf_opatients` (
  `id` int(11) NOT NULL,
  `guid` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `age` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bed_no` varchar(10) DEFAULT '-',
  `ward` varchar(255) DEFAULT NULL,
  `admited_date` datetime DEFAULT NULL,
  `discharged_date` varchar(255) DEFAULT '0',
  `admitedfor` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `datedischarged` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `consultant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bf_outfeedback`
--

CREATE TABLE `bf_outfeedback` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nurseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patientid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset` text COLLATE utf8_unicode_ci,
  `datet` date DEFAULT NULL,
  `messagestatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `emailstatus` int(11) DEFAULT '0',
  `messagestatus_patient` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bf_patients`
--

CREATE TABLE `bf_patients` (
  `id` int(11) NOT NULL,
  `guid` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `age` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bed_no` varchar(10) DEFAULT '-',
  `ward` varchar(255) DEFAULT NULL,
  `admited_date` datetime DEFAULT NULL,
  `discharged_date` varchar(255) DEFAULT '0',
  `admitedfor` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `datedischarged` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `consultant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bf_patients_int`
--

CREATE TABLE `bf_patients_int` (
  `id` int(11) NOT NULL,
  `guid` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `age` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bed_no` varchar(10) DEFAULT '-',
  `ward` varchar(255) DEFAULT NULL,
  `admited_date` datetime DEFAULT NULL,
  `discharged_date` varchar(255) DEFAULT '0',
  `admitedfor` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `datedischarged` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `consultant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bf_ward`
--

CREATE TABLE `bf_ward` (
  `id` int(11) NOT NULL,
  `guid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `total_handover` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bed_no` text COLLATE utf8_unicode_ci,
  `smallname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderd` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bf_ward`
--

INSERT INTO `bf_ward` (`id`, `guid`, `title`, `mobile`, `total`, `total_handover`, `modified_time`, `bed_no`, `smallname`, `orderd`) VALUES
(94, '1584354599', 'GROUND FLOOR- ALL ROOMS', NULL, NULL, NULL, '2023-01-06 12:33:42', '', 'GF', NULL),
(71, '821C559B-9127-376C-4C44-BC2365CA09BX', 'ALL', '9591991887', 76, 55, '2018-07-28 08:01:03', 'MICU', 'ALL', 0),
(87, '1543662767', '1ST FLOOR- ALL ROOMS', NULL, NULL, NULL, '2020-06-09 11:36:49', '', 'F1', NULL),
(93, '1584354475', '2ND FLOOR- ALL ROOMS', NULL, NULL, NULL, '2020-06-09 11:36:35', '', 'F2', NULL),
(98, '1672988581', 'BASEMENT -CASUALTY', NULL, NULL, NULL, '2023-01-06 12:33:01', '', 'bsmt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dprt_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `lastlogin` int(50) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'inpatient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
(19, 'email', 'Email Address'),
(20, 'password', 'Password'),
(21, 'login', 'Log In'),
(22, 'incorrect_email_password', 'Incorrect Email/Password!'),
(23, 'user_role', 'User Role'),
(24, 'please_login', 'Please Log In'),
(25, 'setting', 'Setting'),
(26, 'profile', 'Profile'),
(27, 'logout', 'Log Out'),
(28, 'please_try_again', 'Please Try Again'),
(29, 'admin', 'Admin'),
(30, 'doctor', 'Doctor'),
(31, 'representative', 'Representative'),
(32, 'dashboard', 'Dashboard'),
(33, 'department', 'Ward'),
(34, 'add_department', 'Add Ward'),
(35, 'department_list', 'Ward List'),
(36, 'add_doctor', 'Add Doctor'),
(37, 'doctor_list', 'Doctor List'),
(38, 'add_representative', 'Add Representative'),
(39, 'representative_list', 'Representative List'),
(40, 'patient', 'Patient'),
(41, 'add_patient', 'Add Patient'),
(42, 'patient_list', 'Patient List'),
(43, 'schedule', 'Schedule'),
(44, 'add_schedule', 'Add Schedule'),
(45, 'schedule_list', 'Schedule List'),
(46, 'appointment', 'Appointment'),
(47, 'add_appointment', 'Add Appointment'),
(48, 'appointment_list', 'Appointment List'),
(49, 'enquiry', 'Enquiry'),
(50, 'language_setting', 'Language Setting'),
(51, 'appointment_report', 'Appointment Report'),
(52, 'assign_by_all', 'Assign by All'),
(53, 'assign_by_doctor', 'Assign by Doctor'),
(54, 'assign_to_doctor', 'Assign to Doctor'),
(55, 'assign_by_representative', 'Assign by Representative'),
(56, 'report', 'Report'),
(57, 'assign_by_me', 'Assign by Me'),
(58, 'assign_to_me', 'Assign to Me'),
(59, 'website', 'Website'),
(60, 'slider', 'Slider'),
(61, 'section', 'Section'),
(62, 'section_item', 'Section Item'),
(63, 'comments', 'Comment'),
(64, 'latest_enquiry', 'Latest Enquiry'),
(65, 'total_progress', 'Total Progress'),
(66, 'last_year_status', 'Showing status from the last year'),
(67, 'department_name', 'Ward Name'),
(68, 'description', 'Description'),
(69, 'status', 'Status'),
(70, 'active', 'Active'),
(71, 'inactive', 'Inactive'),
(72, 'cancel', 'Cancel'),
(73, 'save', 'Save'),
(75, 'serial', 'SL.NO'),
(76, 'action', 'Action'),
(77, 'edit', 'Edit '),
(78, 'delete', 'Delete'),
(79, 'save_successfully', 'Save Successfully!'),
(80, 'update_successfully', 'Update Successfully!'),
(81, 'department_edit', 'Ward Edit'),
(82, 'delete_successfully', 'Delete successfully!'),
(83, 'are_you_sure', 'Are You Sure ? '),
(84, 'first_name', 'First Name'),
(85, 'last_name', 'Last Name'),
(86, 'phone', 'Phone No'),
(87, 'mobile', 'Mobile No'),
(88, 'blood_group', 'Blood Group'),
(89, 'sex', 'Sex'),
(90, 'date_of_birth', 'Date of Birth'),
(91, 'address', 'Address'),
(92, 'invalid_picture', 'Invalid Picture'),
(93, 'doctor_profile', 'Doctor Profile'),
(94, 'edit_profile', 'Edit Profile'),
(95, 'edit_doctor', 'Edit Doctor'),
(98, 'designation', 'Designation'),
(99, 'short_biography', 'Short Biography'),
(100, 'picture', 'Picture'),
(101, 'specialist', 'Specialist'),
(102, 'male', 'Male'),
(103, 'female', 'Female'),
(104, 'education_degree', 'Education/Degree'),
(105, 'create_date', 'Create Date'),
(106, 'view', 'View'),
(107, 'doctor_information', 'Doctor Information'),
(108, 'update_date', 'Update Date'),
(109, 'print', 'Print'),
(110, 'representative_edit', 'Representative Edit'),
(112, 'patient_information', 'Patient Information'),
(113, 'other', 'Other'),
(114, 'patient_id', 'Patient ID'),
(115, 'age', 'Age'),
(116, 'patient_edit', 'Patient Edit'),
(117, 'id_no', 'ID No.'),
(118, 'select_option', 'Select Option'),
(119, 'doctor_name', 'Doctor Name'),
(120, 'day', 'Day'),
(121, 'start_time', 'Start Time'),
(122, 'end_time', 'End Time'),
(123, 'per_patient_time', 'Per Patient Time'),
(124, 'serial_visibility_type', 'Serial Visibility'),
(125, 'sequential', 'Sequential'),
(126, 'timestamp', 'Timestamp'),
(127, 'available_days', 'Available Days'),
(128, 'schedule_edit', 'Schedule Edit'),
(129, 'available_time', 'Available Time'),
(130, 'serial_no', 'Serial No'),
(131, 'problem', 'Problem'),
(132, 'appointment_date', 'Appointment Date'),
(133, 'you_are_already_registered', 'You Are Already Registered'),
(134, 'invalid_patient_id', 'Invalid patient ID'),
(135, 'invalid_input', 'Invalid Input'),
(137, 'no_doctor_available', 'No Doctor Available'),
(138, 'invalid_department', 'Invalid Ward!'),
(139, 'no_schedule_available', 'No Schedule Available'),
(140, 'please_fillup_all_required_fields', 'Please fillup all required filelds'),
(141, 'appointment_id', 'Appointment ID'),
(142, 'schedule_time', 'Schedule Time'),
(143, 'appointment_information', 'Appointment Information'),
(144, 'full_name', 'Full Name'),
(145, 'read_unread', 'Read / Unread'),
(146, 'date', 'Date'),
(147, 'ip_address', 'IP Address'),
(148, 'user_agent', 'User Agent'),
(149, 'checked_by', 'Checked By'),
(150, 'enquiry_date', 'Enquirey Date'),
(152, 'enquiry_list', 'Enquiry List'),
(153, 'filter', 'Filter'),
(154, 'start_date', 'Start Date'),
(155, 'end_date', 'End Date'),
(156, 'application_title', 'Application Title'),
(157, 'favicon', 'Favicon'),
(158, 'logo', 'Logo'),
(159, 'footer_text', 'Footer Text'),
(160, 'language', 'Language'),
(161, 'appointment_assign_by_all', 'Appointment Assign by All'),
(162, 'appointment_assign_by_doctor', 'Appointment Assign by Doctor'),
(163, 'appointment_assign_by_representative', 'Appointment Assign by Representative'),
(164, 'appointment_assign_to_all_doctor', 'Appointment Assign to All Doctor'),
(165, 'appointment_assign_to_me', 'Appointment Assign to Me'),
(166, 'appointment_assign_by_me', 'Appointment Assign by Me'),
(167, 'type', 'Type'),
(168, 'website_title', 'Website Title'),
(169, 'invalid_logo', 'Invalid Logo'),
(170, 'details', 'Details'),
(171, 'website_setting', 'Website Setting'),
(172, 'submit_successfully', 'Submit Successfully!'),
(173, 'application_setting', 'Application Setting'),
(174, 'invalid_favicon', 'Invalid Favicon'),
(175, 'new_enquiry', 'New Enquiry'),
(176, 'information', 'Information'),
(177, 'home', 'Home'),
(178, 'select_department', 'Select Ward'),
(179, 'select_doctor', 'Select Doctor'),
(180, 'select_representative', 'Select Representative'),
(181, 'post_id', 'Post ID'),
(182, 'thank_you_for_your_comment', 'Thank you for your comment!'),
(183, 'comment_id', 'Comment ID'),
(184, 'comment_status', 'Comment Status'),
(185, 'comment_added_successfully', 'Comment Added Successfully'),
(186, 'comment_remove_successfully', 'Comment Remove Successfully'),
(187, 'select_item', 'Section Item'),
(188, 'add_item', 'Add Item'),
(189, 'menu_name', 'Menu Name'),
(190, 'title', 'Title'),
(191, 'position', 'Position'),
(192, 'invalid_icon_image', 'Invalid Icon Image!'),
(193, 'about', 'About'),
(194, 'blog', 'Blog'),
(195, 'service', 'Service'),
(196, 'item_edit', 'Item Edit'),
(197, 'registration_successfully', 'Registration Successfully'),
(198, 'add_section', 'Add Section'),
(199, 'section_name', 'Section Name'),
(200, 'invalid_featured_image', 'Invalid Featured Image!'),
(201, 'section_edit', 'Section Edit'),
(202, 'meta_description', 'Meta Description'),
(203, 'twitter_api', 'Twitter Api'),
(204, 'google_map', 'Google Map'),
(205, 'copyright_text', 'Copyright Text'),
(206, 'facebook_url', 'Facebook URL'),
(207, 'twitter_url', 'Twitter URL'),
(208, 'vimeo_url', 'Vimeo URL'),
(209, 'instagram_url', 'Instagram Url'),
(210, 'dribbble_url', 'Dribbble URL'),
(211, 'skype_url', 'Skype URL'),
(212, 'add_slider', 'Add Slider'),
(213, 'subtitle', 'Sub Title'),
(214, 'slide_position', 'Slide Position'),
(215, 'invalid_image', 'Invalid Image'),
(216, 'image_is_required', 'Image is required'),
(217, 'slider_edit', 'Slider Edit'),
(218, 'meta_keyword', 'Meta Keyword'),
(219, 'year', 'Year'),
(220, 'month', 'Month'),
(221, 'recent_post', 'Recent Post'),
(222, 'leave_a_comment', 'Leave a Comment'),
(223, 'submit', 'Submit'),
(224, 'google_plus_url', 'Google Plus URL'),
(225, 'website_status', 'Website Status'),
(226, 'new_slide', 'New Slide'),
(227, 'new_section', 'New Section'),
(228, 'subtitle_description', 'Sub Title / Description'),
(229, 'featured_image', 'Featured Image'),
(230, 'new_item', 'New Item'),
(231, 'item_position', 'Item Position'),
(232, 'icon_image', 'Icon Image'),
(233, 'post_title', 'Post Title'),
(234, 'add_to_website', 'Add to Website'),
(235, 'read_more', 'Read More'),
(236, 'registration', 'Registration'),
(237, 'appointment_form', 'Appointment Form'),
(238, 'contact', 'Contact'),
(239, 'optional', 'Optional'),
(240, 'customer_comments', 'Customer Comments'),
(241, 'need_a_doctor_for_checkup', 'Need a Doctor for Check-up?'),
(242, 'just_make_an_appointment_and_you_are_done', 'JUST MAKE AN APPOINTMENT & YOU\'RE DONE ! '),
(243, 'get_an_appointment', 'Get an appointment'),
(244, 'latest_news', 'Latest News'),
(245, 'latest_tweet', 'Latest Tweet'),
(246, 'menu', 'Menu'),
(247, 'select_user_role', 'Select User Role'),
(248, 'site_align', 'Website Align'),
(249, 'right_to_left', 'Right to Left'),
(250, 'left_to_right', 'Left to Right'),
(251, 'account_manager', 'Account Manager'),
(252, 'add_invoice', 'Add Invoice'),
(253, 'invoice_list', 'Invoice List'),
(254, 'account_list', 'Account List'),
(255, 'add_account', 'Add Account'),
(256, 'account_name', 'Account Name'),
(257, 'credit', 'Credit'),
(258, 'debit', 'Debit'),
(259, 'account_edit', 'Account Edit'),
(260, 'quantity', 'Quantity'),
(261, 'price', 'Price'),
(262, 'total', 'Total'),
(263, 'remove', 'Remove'),
(264, 'add', 'Add'),
(265, 'subtotal', 'Sub Total'),
(266, 'vat', 'Vat'),
(267, 'grand_total', 'Grand Total'),
(268, 'discount', 'Discount'),
(269, 'paid', 'Paid'),
(270, 'due', 'Due'),
(271, 'reset', 'Reset'),
(272, 'add_or_remove', 'Add / Remove'),
(273, 'invoice', 'Invoice'),
(274, 'invoice_information', 'Invoice Information'),
(275, 'invoice_edit', 'Invoice Edit'),
(276, 'update', 'Update'),
(277, 'all', 'All'),
(278, 'patient_wise', 'Patient Wise'),
(279, 'account_wise', 'Account Wise'),
(280, 'debit_report', 'Debit Report'),
(281, 'credit_report', 'Credit Report'),
(282, 'payment_list', 'Payment List'),
(283, 'add_payment', 'Add Payment'),
(284, 'payment_edit', 'Payment Edit'),
(285, 'pay_to', 'Pay To'),
(286, 'amount', 'Amount'),
(287, 'bed_type', 'Bed Type'),
(288, 'bed_limit', 'Bed Capacity'),
(289, 'charge', 'Charge'),
(290, 'bed_list', 'Bed List'),
(291, 'add_bed', 'Add Bed'),
(292, 'bed_manager', 'Bed Manager'),
(293, 'bed_edit', 'Bed Edit'),
(294, 'bed_assign', 'Bed Assign'),
(295, 'assign_date', 'Assign Date'),
(296, 'discharge_date', 'Discharge Date'),
(297, 'bed_assign_list', 'Bed Assign List'),
(298, 'assign_by', 'Assign By'),
(299, 'bed_available', 'Bed is Available'),
(300, 'bed_not_available', 'Bed is Not Available'),
(301, 'invlid_input', 'Invalid Input'),
(302, 'allocated', 'Allocated'),
(303, 'free_now', 'Free'),
(304, 'select_only_avaiable_days', 'Select Only Avaiable Days'),
(305, 'human_resources', 'Human Resources'),
(306, 'nurse_list', 'Nurse List'),
(307, 'add_employee', 'Add Employee'),
(308, 'user_type', 'User Type'),
(309, 'employee_information', 'Employee Information'),
(310, 'employee_edit', 'Edit Employee'),
(311, 'laboratorist_list', 'Laboratorist List'),
(312, 'accountant_list', 'Accountant List'),
(313, 'receptionist_list', 'Admissions'),
(314, 'pharmacist_list', 'Pharmacist List'),
(315, 'nurse', 'Nurse'),
(316, 'laboratorist', 'Laboratorist'),
(317, 'pharmacist', 'Pharmacist'),
(318, 'accountant', 'Accountant'),
(319, 'receptionist', 'Receptionist'),
(320, 'noticeboard', 'Noticeboard'),
(321, 'notice_list', 'Notice List'),
(322, 'add_notice', 'Add Notice'),
(323, 'hospital_activities', 'Hospital Activities'),
(324, 'death_report', 'Death Report'),
(325, 'add_death_report', 'Add Death Report'),
(326, 'death_report_edit', 'Death Report Edit'),
(327, 'birth_report', 'Birth Report'),
(328, 'birth_report_edit', 'Birth Report Edit'),
(329, 'add_birth_report', 'Add Birth Report'),
(330, 'add_operation_report', 'Add Operation Report'),
(331, 'operation_report', 'Operation Report'),
(332, 'investigation_report', 'Investigation Report'),
(333, 'add_investigation_report', 'Add Investigation Report'),
(334, 'add_medicine_category', 'Add Medicine Category'),
(335, 'medicine_category_list', 'Medicine Category List'),
(336, 'category_name', 'Category Name'),
(337, 'medicine_category_edit', 'Medicine Category Edit'),
(338, 'add_medicine', 'Add Medicine'),
(339, 'medicine_list', 'Medicine List'),
(340, 'medicine_edit', 'Medicine Edit'),
(341, 'manufactured_by', 'Manufactured By'),
(342, 'medicine_name', 'Medicine Name'),
(343, 'messages', 'Messages'),
(344, 'inbox', 'Inbox'),
(345, 'sent', 'Sent'),
(346, 'new_message', 'New Message'),
(347, 'sender', 'Sender Name'),
(349, 'message', 'Message'),
(350, 'subject', 'Subject'),
(351, 'receiver_name', 'Send To'),
(352, 'select_user', 'Select User'),
(353, 'message_sent', 'Messages Sent'),
(354, 'mail', 'Mail'),
(355, 'send_mail', 'Send Mail'),
(356, 'mail_setting', 'Mail Setting'),
(357, 'protocol', 'Protocol'),
(358, 'mailpath', 'Mail Path'),
(359, 'mailtype', 'Mail Type'),
(360, 'validate_email', 'Validate Email Address'),
(361, 'true', 'True'),
(362, 'false', 'False'),
(363, 'attach_file', 'Attach File'),
(364, 'wordwrap', 'Enable Word Wrap'),
(365, 'send', 'Send'),
(366, 'upload_successfully', 'Upload Successfully!'),
(367, 'app_setting', 'App Setting'),
(368, 'case_manager', 'Case Manager'),
(369, 'patient_status', 'Patient Status'),
(370, 'patient_status_edit', 'Edit Patient Status'),
(371, 'add_patient_status', 'Add Patient Status'),
(372, 'add_new_status', 'Add New Status'),
(373, 'case_manager_list', 'Case Manager List'),
(374, 'hospital_address', 'Hospital Address'),
(375, 'ref_doctor_name', 'Ref. Doctor Name'),
(376, 'hospital_name', 'Hospital Name'),
(377, 'patient_name', 'Patient  Name'),
(378, 'document_list', 'Document List'),
(379, 'add_document', 'Add Document'),
(380, 'upload_by', 'Upload By'),
(381, 'documents', 'Documents'),
(382, 'prescription', 'Prescription'),
(383, 'add_prescription', 'Add Prescription'),
(384, 'prescription_list', 'Prescription List'),
(385, 'add_insurance', 'Add Insurance'),
(386, 'insurance_list', 'Insurance List'),
(387, 'insurance_name', 'Insurance Name'),
(388, 'medicine_name', 'Medicine Name'),
(389, 'add_medicine', 'Add Medicine'),
(390, 'medicine_list', 'Medicine List'),
(391, 'add_patient_case_study', 'Add Patient Case Study'),
(392, 'patient_case_study_list', 'Patient Case Study List'),
(393, 'food_allergies', 'Food Allergies'),
(394, 'tendency_bleed', 'Tendency Bleed'),
(395, 'heart_disease', 'Heart Disease'),
(396, 'high_blood_pressure', 'High Blood Pressure'),
(397, 'diabetic', 'Diabetic'),
(398, 'surgery', 'Surgery'),
(399, 'accident', 'Accident'),
(400, 'others', 'Others'),
(401, 'family_medical_history', 'Family Medical History'),
(402, 'current_medication', 'Current Medication'),
(403, 'female_pregnancy', 'Female Pregnancy'),
(404, 'breast_feeding', 'Breast Feeding'),
(405, 'health_insurance', 'Health Insurance'),
(406, 'low_income', 'Low Income'),
(407, 'reference', 'Reference'),
(408, 'status', 'Status'),
(409, 'medicine_name', 'Medicine Name'),
(410, 'instruction', 'Instruction'),
(411, 'medicine_type', 'Medicine Type'),
(412, 'days', 'Days'),
(413, 'weight', 'Weight'),
(414, 'blood_pressure', 'Blood Pressure'),
(415, 'old', 'Old'),
(416, 'new', 'New'),
(417, 'case_study', 'Case Study'),
(418, 'chief_complain', 'Chief Complain'),
(419, 'patient_notes', 'Patient Notes'),
(420, 'visiting_fees', 'Visiting Fees'),
(421, 'diagnosis', 'Diagnosis'),
(422, 'prescription_id', 'Prescription ID'),
(423, 'name', 'Name'),
(424, 'prescription_information', 'Prescription Information');

-- --------------------------------------------------------

--
-- Table structure for table `mail_setting`
--

CREATE TABLE `mail_setting` (
  `id` int(11) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `mailpath` varchar(255) NOT NULL,
  `mailtype` varchar(20) NOT NULL,
  `validate_email` varchar(20) NOT NULL,
  `wordwrap` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_setting`
--

INSERT INTO `mail_setting` (`id`, `protocol`, `mailpath`, `mailtype`, `validate_email`, `wordwrap`) VALUES
(5, 'sendmail', '/usr/sbin/sendmail', 'html', 'false', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `outtickets`
--

CREATE TABLE `outtickets` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(20) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `anymessage` text,
  `feedbackid` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Open',
  `last_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assign_to` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `affliate` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `google_review_link` text,
  `online_feedback` text,
  `android_apk` text,
  `qr_code_image` longtext,
  `validity_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`, `google_review_link`, `online_feedback`, `android_apk`, `qr_code_image`, `validity_key`) VALUES
(2, 'Sunrise Hospital ', 'SRH', 'bdtask@gmail.com', '1922296392', 'assets/images/apps/2017-02-18/l2.png', 'assets/images/icons/2017-02-18/a.png', 'english', 'LTR', '2017Ã‚Â©Copyright', 'https://reviewthis.biz/sunrisehospital', 'https://sunrise.efeedor.com/feedback/interim.php', 'DEMO10.apk', 'qr-code_(9).png', 'MUpaqPR+fcZftn6pCrT/PKnVZ69M0d1otSX0gK8mGxqu8w4ulnfJbmRyyiQu2Q2M');

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `question` text NOT NULL,
  `shortname` text NOT NULL,
  `shortkey` text NOT NULL,
  `valuetext` int(11) DEFAULT '0',
  `type` varchar(11) NOT NULL,
  `questionk` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `titlek` longtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`id`, `title`, `question`, `shortname`, `shortkey`, `valuetext`, `type`, `questionk`, `titlek`) VALUES
(1, 'Admission Experience', 'How Convenient was your admission process', 'Admission Process', 'fontoffice1', 0, 'set1', 'ನಿಮ್ಮ ಅಡ್ಮಿಶನ್ ಪ್ರಕ್ರಿಯೆ ಎಷ್ಟು ಅನುಕೂಲಕರವಾಗಿತ್ತು', 'ಪ್ರವೇಶ ಅನುಭವ'),
(2, 'Admission Experience', 'Attitude & behaviour of the admission Staffs', 'Admission Staff Attitude', 'fontoffice2', 0, 'set1', 'ಅಡ್ಮಿಶನ್ ಸಿಬ್ಬಂದಿಗಳ ವರ್ತನೆ ಮತ್ತು ನಡವಳಿಕೆ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(7, 'Nursing Experience', 'Courtesy and Compassion of the Nursing Staffs', 'Nurses Attitude', 'nursing2', 0, 'set2', 'ನರ್ಸಿಂಗ್ ಸಿಬ್ಬಂದಿಗಳ ಸೌಜನ್ಯ ಮತ್ತು ಸಹಾನುಭೂತಿ', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(10, 'Doctors Experience', 'Communication about your condition & treatment by the doctor', 'Doctors Communication', 'doctor1', 0, 'set3', 'ವೈದ್ಯರಿಂದ ನಿಮ್ಮ ಪರಿಸ್ಥಿತಿ ಮತ್ತು ಚಿಕಿತ್ಸೆ ಬಗ್ಗೆ ಸಂವಹನ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(12, 'House Keeping/ Cleanliness', 'Regular cleaning & Upkeep of rooms and toilets', 'Upkeep of the room', 'housekeeping1', 0, 'set4', 'ಕೊಠಡಿಗಳು ಮತ್ತು ಶೌಚಾಲಯಗಳನ್ನು ನಿಯಮಿತವಾಗಿ ಶುಚಿಗೊಳಿಸುವುದು', 'ಹೌಸ್ ಕೀಪಿಂಗ್/ ಸ್ವಚ್ಛತೆ'),
(15, 'Dietary Services', 'Overall quality of food and timeliness of Service', 'Quality of food', 'dietary11', 0, 'set10', 'ಒಟ್ಟಾರೆ ಆಹಾರದ ಗುಣಮಟ್ಟ ಮತ್ತು ಸೇವೆಯ ಸಮಯ', 'ಆಹಾರ ಸೇವೆಗಳು'),
(16, 'Radiology Experience( Xray, CT, MRI, USG etc)', 'Services in Radiology dept.( Staff Attitude, Timely reports etc)', 'Services in Radiology', 'radiology11', 0, 'set11', 'ವಿಕಿರಣಶಾಸ್ತ್ರ ವಿಭಾಗದಲ್ಲಿ ಸೇವೆಗಳು (ಸಿಬ್ಬಂದಿ ವರ್ತನೆ, ಸಮಯೋಚಿತ ವರದಿಗಳು ಇತ್ಯಾದಿ)', 'ವಿಕಿರಣಶಾಸ್ತ್ರ ಅನುಭವ (ಎಕ್ಸ್‌ರೇ, ಸಿಟಿ, ಎಂಆರ್‌ಐ, ಯುಎಸ್‌ಜಿ ಇತ್ಯಾದಿ)'),
(14, 'General Maintenance', 'Functioning of Electrical Equipments, bathroom taps/ toilet flush etc', 'Func. of room Equipments', 'maintenance1', 0, 'set5', 'ವಿದ್ಯುತ್ ಉಪಕರಣಗಳು, ಬಾತ್ರೂಮ್ ಟ್ಯಾಪ್ಗಳು / ಟಾಯ್ಲೆಟ್ ಫ್ಲಶ್ ಇತ್ಯಾದಿಗಳ ಕಾರ್ಯ', 'ಸಾಮಾನ್ಯ ನಿರ್ವಹಣೆ'),
(34, 'Billing & Discharge Process', 'Speed of Discharge Process', 'Speed of Discharge', 'bill1', 0, 'set8', 'ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆಯ ವೇಗ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(36, 'Billing & Discharge Process', 'Processing of Insurance', 'Processing of Insurance', 'bill3', 0, 'set8', 'ವಿಮಾ/ ಇನ್ಶೂರೆನ್ಸ್ ಪ್ರಕ್ರಿಯೆ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(28, 'Laboratory services', 'Services in Laboratory( Staff Attitude, Timely reports etc)', 'Services in Laboratory', 'laboratory1', 0, 'set6', 'ಪ್ರಯೋಗಾಲಯದಲ್ಲಿನ ಸೇವೆಗಳು (ಸಿಬ್ಬಂದಿ ವರ್ತನೆ, ಸಮಯೋಚಿತ ವರದಿಗಳು ಇತ್ಯಾದಿ)', 'ಪ್ರಯೋಗಾಲ/ಲ್ಯಾಬ್ ಸೇವೆಗಳು'),
(3, 'Admission Experience', 'Explanation of tariff and Packages', 'Explanation of Tariffs', 'fontoffice3', 0, 'set1', 'ಸುಂಕ ಮತ್ತು ಪ್ಯಾಕೇಜುಗಳ ವಿವರಣೆ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(30, 'Pharmacy Experience', 'Services in pharmacy( Staff Attitude, Medicines Availability, Timely dispatch etc)', 'Services in Pharmacy', 'pharma1', 0, 'set7', 'ಔಷಧಾಲಯದಲ್ಲಿನ ಸೇವೆಗಳು (ಸಿಬ್ಬಂದಿ ವರ್ತನೆ, ಔಷಧಿಗಳ ಲಭ್ಯತೆ, ಸಮಯೋಚಿತ ರವಾನೆ ಇತ್ಯಾದಿ)', 'ಫಾರ್ಮಸಿ ಅನುಭವ'),
(35, 'Billing & Discharge Process', 'Accuracy of the final Bill', 'Accuracy of Final Bill', 'bill4', 0, 'set8', 'ಅಂತಿಮ ಬಿಲ್ಲಿನ ನಿಖರತೆ ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(8, 'Nursing Experience', 'Timely administration of medicines', 'Timely medicines', 'nursing3', 0, 'set2', 'ಸಮಯಕ್ಕೆ ಸರಿಯಾಗಿ ಔಷಧಿಗಳನ್ನು ನೀಡುವುದು', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(11, 'Doctors Experience', 'Timely visits from doctors', 'Doctors timely visit', 'doctor2', 0, 'set3', 'ವೈದ್ಯರಿಂದ ಸಮಯೋಚಿತ ಭೇಟಿಗಳು', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(33, 'Security Experience', 'Security staffs attitude, behavior, and helpfulness', 'Security Staff Attitude', 'security1', 0, 'set9', 'ಭದ್ರತಾ ಸಿಬ್ಬಂದಿಗಳ ವರ್ತನೆ, ನಡವಳಿಕೆ ಮತ್ತು ಸಹಾಯ', 'ಭದ್ರತಾ/ ಸೆಕ್ಯೂರಿಟಿ ಅನುಭವ');

-- --------------------------------------------------------

--
-- Table structure for table `setupop`
--

CREATE TABLE `setupop` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `question` text NOT NULL,
  `shortname` text NOT NULL,
  `shortkey` text NOT NULL,
  `valuetext` int(11) DEFAULT '0',
  `type` varchar(11) NOT NULL,
  `questionk` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `titlek` longtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setupop`
--

INSERT INTO `setupop` (`id`, `title`, `question`, `shortname`, `shortkey`, `valuetext`, `type`, `questionk`, `titlek`) VALUES
(1, 'Reception & Registration Experience', 'Efficiency of the registration process', 'Registration Process', 'reception1', 0, 'set1', 'ನೋಂದಣಿ/ ರಿಜಿಸ್ಟ್ರೇಷನ್ ಪ್ರಕ್ರಿಯೆಯ ದಕ್ಷತೆ', 'ರಿಸೆಪ್ಶನ್ ಮತ್ತು ರಿಜಿಸ್ಟ್ರೇಷನ್ ಅನುಭವ'),
(2, 'Reception & Registration Experience', 'Attitude and behaviour of the front desk Executives', 'Front desk Attitude', 'reception2', 0, 'set1', 'ಅತಿಥಿ ಸಂಬಂಧ ಕಾರ್ಯನಿರ್ವಾಹಕರ ಸೌಜನ್ಯ ಮತ್ತು ಸಹಾನುಭೂತಿ', 'ರಿಸೆಪ್ಶನ್ ಮತ್ತು ರಿಜಿಸ್ಟ್ರೇಷನ್ ಅನುಭವ'),
(13, 'House Keeping', 'Overall Cleanliness of the hospital premises', 'Hospital Cleanliness', 'house1', 0, 'set6', 'ಆಸ್ಪತ್ರೆಯ ಆವರಣದ ಒಟ್ಟಾರೆ ಸ್ವಚ್ಛತೆ', 'ಹೌಸ್ ಕೀಪಿಂಗ್'),
(3, 'Doctors Experience', 'Communication about your condition & treatment by the doctor', 'Doctors Experience', 'doctor1', 0, 'set2', 'ವೈದ್ಯರಿಂದ ನಿಮ್ಮ ಪರಿಸ್ಥಿತಿ ಮತ್ತು ಚಿಕಿತ್ಸೆ ಬಗ್ಗೆ ಸಂವಹನ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(4, 'Doctors Experience', 'Waiting time for consultation', 'Waiting time', 'doctor2', 0, 'set2', 'ವೈದ್ಯಕೀಯ ಚಿಕಿತ್ಸೆಗಾಗಿ ಕಾಯುವ ಸಮಯ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(6, 'Laboratory services', 'Services in Laboratory( Staff Attitude, Timely reports etc)', 'Services in Laboratory', 'lab1', 0, 'set3', 'ಪ್ರಯೋಗಾಲಯದಲ್ಲಿನ ಸೇವೆಗಳು (ಸಿಬ್ಬಂದಿ ವರ್ತನೆ, ಸಮಯೋಚಿತ ವರದಿಗಳು ಇತ್ಯಾದಿ)', 'ಪ್ರಯೋಗಾಲ/ಲ್ಯಾಬ್ ಸೇವೆಗಳು'),
(12, 'Pharmacy Experience', 'Services in pharmacy( Staff Attitude, Medicines Availability, Timely dispatch etc)', 'Services in Pharmacy', 'pharma1', 0, 'set5', 'ಔಷಧಾಲಯದಲ್ಲಿನ ಸೇವೆಗಳು (ಸಿಬ್ಬಂದಿ ವರ್ತನೆ, ಔಷಧಿಗಳ ಲಭ್ಯತೆ, ಸಮಯೋಚಿತ ರವಾನೆ ಇತ್ಯಾದಿ)', 'ಔಷಧಾಲಯ/ ಫಾರ್ಮಸಿ ಅನುಭವ'),
(5, 'Nursing Experience', 'Courtesy and Compassion of Nursing Staff', 'Courtesy of Nurses', 'nurse1', 0, 'set7', 'ನರ್ಸಿಂಗ್ ಸಿಬ್ಬಂದಿಗಳ ಸೌಜನ್ಯ ಮತ್ತು ಸಹಾನುಭೂತಿ', 'ನರ್ಸಿಂಗ್ ಅನುಭವ');

-- --------------------------------------------------------

--
-- Table structure for table `setup_int`
--

CREATE TABLE `setup_int` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `question` text NOT NULL,
  `shortname` text NOT NULL,
  `shortkey` text NOT NULL,
  `valuetext` int(11) DEFAULT '0',
  `type` varchar(11) NOT NULL,
  `questionk` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `titlek` longtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_int`
--

INSERT INTO `setup_int` (`id`, `title`, `question`, `shortname`, `shortkey`, `valuetext`, `type`, `questionk`, `titlek`) VALUES
(1, 'Admission Experience', 'Time taken for admission process', 'Admission time', 'fontoffice1', 0, 'set1', 'ಅಡ್ಮಿಶನ್ ಪ್ರಕ್ರಿಯೆಗೆ ತೆಗೆದುಕೊಂಡ ಸಮಯ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(2, 'Admission Experience', 'Attitude of admission staffs', 'Adm. Staff Attitude', 'fontoffice2', 0, 'set1', 'ಪ್ರವೇಶ ಸಿಬ್ಬಂದಿಯ ವರ್ತನೆ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(6, 'Nursing Experience', 'Attitude of nursing staffs', 'Nurses Attitude', 'nursing1', 0, 'set2', 'ನರ್ಸಿಂಗ್ ಸಿಬ್ಬಂದಿಗಳ ವರ್ತನೆ', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(10, 'Doctors Experience', 'Doctor’s Attitude', 'Doctor\'s Attitude', 'doctor1', 0, 'set3', 'ವೈದ್ಯರ ವರ್ತನೆ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(45, 'Room facilities', 'Functioning of Fan', 'Functioning of Fan', 'room1', 0, 'set5', 'ಫ್ಯಾನ್ ಕಾರ್ಯನಿರ್ವಹಣೆ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(46, 'Room facilities', 'Functioning of Air conditioner', 'Functioning of AC', 'room2', 0, 'set5', 'ಏರ್ ಕಂಡಿಷನರ್ನ ಕಾರ್ಯನಿರ್ವಹಣೆ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(51, 'Room facilities', 'Others', 'Others', 'room3', 0, 'set5', 'ಇತರ ಕಾರಣ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(60, 'Dietary Services', 'Counselling by dietician', 'Dietician Counselling', 'dietary1', 0, 'set6', 'ಆಹಾರ ತಜ್ಞರಿಂದ ಸಮಾಲೋಚನೆ', 'ಆಹಾರ ಸೇವೆಗಳು'),
(61, 'Dietary Services', 'Taste and quality of food', 'Quality of food', 'dietary2', 0, 'set6', 'ರುಚಿ ಮತ್ತು ಆಹಾರದ ಗುಣಮಟ್ಟ', 'ಆಹಾರ ಸೇವೆಗಳು'),
(62, 'Dietary Services', 'Timeliness of food service', 'Food service time', 'dietary3', 0, 'set6', 'ಆಹಾರ ಸೇವೆಯ ಸಮಯ', 'ಆಹಾರ ಸೇವೆಗಳು'),
(63, 'Dietary Services', 'Others', 'Others', 'dietary4', 0, 'set6', 'ಇತರ ಕಾರಣ', 'ಆಹಾರ ಸೇವೆಗಳು'),
(3, 'Admission Experience', 'Explanation of treatment tariff and estimation', 'Explanation of tariff', 'fontoffice3', 0, 'set1', 'ಚಿಕಿತ್ಸೆಯ ಸುಂಕ ಮತ್ತು ಅಂದಾಜಿನ ವಿವರಣೆ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(80, 'Discharge', 'Speed of Discharge Process', 'Speed of Discharge', 'dis1', 0, 'set10', 'ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆಯ ವೇಗ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(81, 'Discharge', 'Explanation of Discharge summary', 'Discharge summary', 'dis2', 0, 'set10', 'ಡಿಸ್ಚಾರ್ಜ್ ಸಾರಾಂಶದ ವಿವರಣೆ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(77, 'Billing Experience', 'Billing staffs Attitude', 'Billing Staff Attitude', 'bill1', 0, 'set9', 'ಬಿಲ್ಲಿಂಗ್ ಸಿಬ್ಬಂದಿ ವರ್ತನೆ', 'ಬಿಲ್ಲಿಂಗ್ ಪ್ರಕ್ರಿಯೆ'),
(7, 'Nursing Experience', 'Response to call bell', 'Timely medicines', 'nursing2', 0, 'set2', 'ಕರೆ ಬೆಲ್‌ಗೆ ಪ್ರತಿಕ್ರಿಯೆ', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(12, 'Doctors Experience', 'Time spent by the doctor during rounds', 'Timely medicines', 'doctor4', 0, 'set3', 'ಸುತ್ತುಗಳ ಸಮಯದಲ್ಲಿ ವೈದ್ಯರು ಕಳೆದ ಸಮಯ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(11, 'Doctors Experience', 'Doctor\'s ability to explain the queries', 'Doctor\'s Explanation', 'doctor2', 0, 'set3', 'ಪ್ರಶ್ನೆಗಳನ್ನು ವಿವರಿಸಲು ವೈದ್ಯರ ಸಾಮರ್ಥ್ಯ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(41, 'Cleanliness/ Housekeeping', 'Cleanliness of rooms', 'Room cleanliness', 'cleaning1', 0, 'set4', 'ಕೊಠಡಿಯ ಸ್ವಚ್ಛತೆ ', 'ಸ್ವಚ್ಛತೆ/ ಹೌಸ್ಕೀಪಿಂಗ್'),
(42, 'Cleanliness/ Housekeeping', 'Cleanliness of Bathrooms and toilet', 'Cleanliness of Bathrooms', 'cleaning2', 0, 'set4', 'ಸ್ನಾನಗೃಹಗಳು ಮತ್ತು ಶೌಚಾಲಯಗಳ ಶುಚಿತ್ವ', 'ಸ್ವಚ್ಛತೆ/ ಹೌಸ್ಕೀಪಿಂಗ್'),
(4, 'Admission Experience', 'Information given on hospital services', 'Information on Services', 'frontoffice4', 0, 'set1', 'ಆಸ್ಪತ್ರೆ ಸೇವೆಗಳ ಬಗ್ಗೆ ನೀಡಲಾದ ಮಾಹಿತಿ ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(9, 'Nursing Experience', 'Others', 'Others', 'nursing3', 0, 'set2', 'ಇತರ ಕಾರಣ', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(13, 'Doctors Experience', 'Others', 'Others', 'doctor3', 0, 'set3', 'ಇತರ ಕಾರಣ', 'ವೈದ್ಯಕೀಯ ಅನುಭವ'),
(70, 'Laboratory services', 'Lab staffs Attitude', 'Lab Staffs', 'lab2', 0, 'set7', 'ವಿಕಿರಣಶಾಸ್ತ್ರ ಸಿಬ್ಬಂದಿ ವರ್ತನೆ', 'ಪ್ರಯೋಗಾಲ/ಲ್ಯಾಬ್ ಸೇವೆಗಳು'),
(71, 'Laboratory services', 'Others', 'Others', 'lab3', 0, 'set7', 'ಇತರ ಕಾರಣ', 'ಪ್ರಯೋಗಾಲ/ಲ್ಯಾಬ್ ಸೇವೆಗಳು'),
(78, 'Billing Experience', 'Accuracy of the final Bill', 'Final Bill Accuracy', 'bill2', 0, 'set9', 'ಅಂತಿಮ ಬಿಲ್ಲಿನ ನಿಖರತೆ ', 'ಬಿಲ್ಲಿಂಗ್ ಪ್ರಕ್ರಿಯೆ'),
(79, 'Billing Experience', 'Others', 'Others', 'bill3', 0, 'set9', 'ಇತರ ಕಾರಣ', 'ಬಿಲ್ಲಿಂಗ್ ಪ್ರಕ್ರಿಯೆ'),
(69, 'Laboratory services', 'Waiting time in Lab', 'wating time', 'lab1', 0, 'set7', 'ಲ್ಯಾಬ್‌ನಲ್ಲಿ ಕಾಯುವ ಸಮಯ', 'ಪ್ರಯೋಗಾಲ/ಲ್ಯಾಬ್ ಸೇವೆಗಳು'),
(73, 'Pharmacy Experience', 'Waiting time in pharmacy', 'Time in Pharmacy', 'pharma1', 0, 'set8', 'ಔಷಧಾಲಯದಲ್ಲಿ ಕಾಯುವ ಸಮಯ', 'ಔಷಧಾಲಯ/ ಫಾರ್ಮಸಿ ಅನುಭವ'),
(74, 'Pharmacy Experience', 'Availability of prescribed medicines', 'Medicines Availability', 'pharma2', 0, 'set8', 'ನಿಗದಿತ ಔಷಧಿಗಳ ಲಭ್ಯತೆ', 'ಔಷಧಾಲಯ/ ಫಾರ್ಮಸಿ ಅನುಭವ'),
(75, 'Pharmacy Experience', 'Explanation of Medicines', 'Explanation of Medicines', 'pharma3', 0, 'set8', 'ಔಷಧಿಗಳ ವಿವರಣೆ', 'ಔಷಧಾಲಯ/ ಫಾರ್ಮಸಿ ಅನುಭವ'),
(76, 'Pharmacy Experience', 'Others', 'Others', 'pharma4', 0, 'set8', 'ಇತರ ಕಾರಣ', 'ಔಷಧಾಲಯ/ ಫಾರ್ಮಸಿ ಅನುಭವ'),
(8, 'Nursing Experience', 'Timely administration of medication', 'Timely medicines', 'nursing4', 0, 'set2', 'ಸಮಯಕ್ಕೆ ಸರಿಯಾಗಿ ಔಷಧಿಗಳನ್ನು ನೀಡುವುದು', 'ನರ್ಸಿಂಗ್ ಅನುಭವ'),
(82, 'Discharge', 'Others', 'Others', 'dis3', 0, 'set10', 'ಇತರ ಕಾರಣ', 'ಬಿಲ್ಲಿಂಗ್ ಮತ್ತು ಡಿಸ್ಚಾರ್ಜ್ ಪ್ರಕ್ರಿಯೆ'),
(83, 'Security', 'Attitude and helpfulness of security staffs', 'Security Experience', 'security2', 0, 'set11', 'ಸೆಕ್ಯೂರಿಟಿ ಸಿಬ್ಬಂದಿಯ ವರ್ತನೆ ಮತ್ತು ಸಹಾಯ', 'ಸೆಕ್ಯೂರಿಟಿ'),
(84, 'Security', 'Others', 'Others', 'security1', 0, 'set11', 'ಇತರ ಕಾರಣ', 'ಸೆಕ್ಯೂರಿಟಿ'),
(5, 'Admission Experience', 'Others', 'Others', 'frontoffice5', 0, 'set1', 'ಇತರ ಕಾರಣ', 'ಪ್ರವೇಶ ಅನುಭವ'),
(43, 'Cleanliness/ Housekeeping', 'Cleanliness of Wards', 'Cleanliness of Wards', 'cleaning3', 0, 'set4', 'ವಾರ್ಡ್‌ಗಳ ಸ್ವಚ್ಛತೆ', 'ಸ್ವಚ್ಛತೆ/ ಹೌಸ್ಕೀಪಿಂಗ್'),
(44, 'Cleanliness/ Housekeeping', 'Others', 'Others', 'cleaning4', 0, 'set4', 'ಇತರ ಕಾರಣ', 'ಸ್ವಚ್ಛತೆ/ ಹೌಸ್ಕೀಪಿಂಗ್'),
(49, 'Room facilities', 'Functioning of Television', 'Functioning of TV', 'room5', 0, 'set5', 'ದೂರದರ್ಶನದ ಕಾರ್ಯನಿರ್ವಹಣೆ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(48, 'Room facilities', 'Functioning of Furnitures and fixtures', 'Functioning of Furnitures', 'room6', 0, 'set5', 'ಪೀಠೋಪಕರಣಗಳು ಮತ್ತು ನೆಲೆವಸ್ತುಗಳ ಕಾರ್ಯನಿರ್ವಹಣೆ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(50, 'Room facilities', 'Functioning of bathroom accessories( pipes, flush etc)', 'Bathroom accessories', 'room7', 0, 'set5', 'ಸ್ನಾನಗೃಹದ ಬಿಡಿಭಾಗಗಳ ಕಾರ್ಯನಿರ್ವಹಣೆ (ಪೈಪ್‌ಗಳು, ಫ್ಲಶ್ ಇತ್ಯಾದಿ)', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು'),
(47, 'Room facilities', 'Functioning of electric lights', 'Functioning of Lights', 'room4', 0, 'set5', 'ವಿದ್ಯುತ್ ದೀಪಗಳ ಕಾರ್ಯನಿರ್ವಹಣೆ', 'ಕೊಠಡಿ ಸೌಲಭ್ಯಗಳು');

-- --------------------------------------------------------

--
-- Table structure for table `shedule_notification`
--

CREATE TABLE `shedule_notification` (
  `id` int(11) NOT NULL,
  `para` varchar(100) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(100) DEFAULT 'Monday',
  `datevalue` int(10) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shedule_notification`
--

INSERT INTO `shedule_notification` (`id`, `para`, `time`, `day`, `datevalue`, `path`, `name`, `type`, `section`) VALUES
(1, 'inweeklyreport_ip', '08:00:00', 'Monday', 0, 'message/inweeklyreport', 'Weekly IP feedbacks report ', 'SMS', 'IP'),
(2, 'inmonthlyreport_ip', '08:00:00', NULL, 1, 'message/inmonthlyreport', 'Monthly IP feedbacks report', 'SMS', 'IP'),
(3, 'weeklyipticketreport_ip', '08:00:00', 'Monday', 0, 'message/weeklyipticketreport', 'Weekly IP Tickets Report ', 'SMS', 'IP'),
(4, 'montlyipticketreport_ip', '08:00:00', NULL, 1, 'message/montlyipticketreport', 'Monthly IP Tickets Report', 'SMS', 'IP'),
(5, 'weeklynpsscore_ip', '08:30:00', 'Monday', 0, 'message/weeklynpsscore', 'Weekly NPS Report for IP', 'SMS', 'IP'),
(6, 'monthlynpsscore_ip', '08:30:00', NULL, 1, 'message/monthlynpsscore', 'Monthly NPS Report for IP', 'SMS', 'IP'),
(7, 'weeklyiphospitalselection_ip', '08:30:00', 'Monday', 0, 'message/weeklyiphospitalselection', 'Weekly Hospital selection criteria Analysis for IP', 'SMS', 'IP'),
(8, 'montylyiphospitalselection_ip', '08:30:00', NULL, 1, 'message/montylyiphospitalselection', 'Monthly Hospital selection criteria Analysis for IP', 'SMS', 'IP'),
(9, 'weeklyinsighthighlow_ip', '09:00:00', 'Monday', 0, 'message/weeklyinsighthighlow', 'Top and least performing parameters of the week for IP', 'SMS', 'IP'),
(10, 'monthlyinsighthighlow_ip', '09:00:00', NULL, 1, 'message/monthlyinsighthighlow', 'Top and least performing parameters of the Month for IP', 'SMS', 'IP'),
(11, 'weeklyratinganalysis_ip', '09:00:00', 'Monday', 0, 'message/weeklyratinganalysis', 'Weekly Rating Analysis for IP', 'SMS', 'IP'),
(12, 'monthlyratinganalysis_ip', '09:00:00', NULL, 1, 'message/monthlyratinganalysis', 'Monthly Rating Analysis for IP', 'SMS', 'IP'),
(13, 'inweeklyreport_op', '08:00:00', 'Monday', 0, 'messageop/inweeklyreport', 'Weekly OP feedbacks report', 'SMS', 'OP'),
(15, 'weeklyipticketreport_op', '08:00:00', 'Monday', 0, 'messageop/weeklyipticketreport', 'Weekly OP Tickets Report', 'SMS', 'OP'),
(16, 'montlyipticketreport_op', '08:00:00', NULL, 1, 'messageop/montlyipticketreport', 'Monthly OP Tickets Report', 'SMS', 'OP'),
(17, 'weeklynpsscore_op', '08:30:00', 'Monday', 0, 'messageop/weeklynpsscore', 'Weekly NPS Report for OP', 'SMS', 'OP'),
(18, 'monthlynpsscore_op', '08:30:00', NULL, 1, 'messageop/monthlynpsscore', 'Monthly NPS Report for OP', 'SMS', 'OP'),
(19, 'weeklyiphospitalselection_op', '08:30:00', 'Monday', 0, 'messageop/weeklyiphospitalselection', 'Weekly Hospital selection criteria Analysis for OP', 'SMS', 'OP'),
(20, 'montylyiphospitalselection_op', '08:30:00', NULL, 1, 'messageop/montylyiphospitalselection', 'Monthly Hospital selection criteria Analysis for OP', 'SMS', 'OP'),
(21, 'weeklyinsighthighlow_op', '09:00:00', 'Monday', 0, 'messageop/weeklyinsighthighlow', 'Top and least performing parameters of the week for OP', 'SMS', 'OP'),
(22, 'monthlyinsighthighlow_op', '09:00:00', NULL, 1, 'messageop/monthlyinsighthighlow', 'Top and least performing parameters of the Month for OP', 'SMS', 'OP'),
(23, 'weeklyratinganalysis_op', '09:00:00', 'Monday', 0, 'messageop/weeklyratinganalysis', 'Weekly Rating Analysis for OP', 'SMS', 'OP'),
(24, 'monthlyratinganalysis_op', '09:00:00', NULL, 1, 'messageop/monthlyratinganalysis', 'Monthly Rating Analysis for OP', 'SMS', 'OP'),
(25, 'email_weeklyreport_ip', '09:00:00', 'Monday', 0, 'email_ip_notification/weeklyreport', 'Weekly IP feedbacks Overall report', 'EMAIL', 'IP'),
(26, 'email_monthlyreport_ip', '09:00:00', NULL, 1, 'email_ip_notification/monthlyreport', 'Monthly IP feedbacks report', 'EMAIL', 'IP'),
(27, 'email_weeklynpsreport_ip', '09:00:00', 'Monday', 0, 'email_ip_notification/weeklynpsreport', 'Weekly NPS Report for IP', 'EMAIL', 'IP'),
(28, 'email_monthlynpsreport_ip', '09:00:00', NULL, 1, 'email_ip_notification/monthlynpsreport', 'Monthly NPS Report for IP', 'EMAIL', 'IP'),
(29, 'email_weeklypatientreport_ip', '09:00:00', 'Monday', 0, 'email_ip_notification/weeklypatientreport', 'Weekly Hospital selection basis report IP', 'EMAIL', 'IP'),
(30, 'email_monthlypatientreport_ip', '09:00:00', NULL, 1, 'email_ip_notification/monthlypatientreport', 'Monthly Hospital selection basis report IP', 'EMAIL', 'IP'),
(32, 'email_weeklyreport_op', '09:00:00', 'Monday', 0, 'email_ip_notification_op/weeklyreport', 'Weekly OP feedbacks Overall report', 'EMAIL', 'OP'),
(33, 'email_monthlyreport_op', '09:00:00', NULL, 1, 'email_ip_notification_op/monthlyreport', 'Monthly OP feedbacks report', 'EMAIL', 'OP'),
(34, 'email_weeklynpsreport_op', '09:00:00', 'Monday', 0, 'email_ip_notification_op/weeklynpsreport', 'Weekly NPS Report for OP', 'EMAIL', 'OP'),
(35, 'email_monthlynpsreport_op', '09:00:00', NULL, 1, 'email_ip_notification_op/monthlynpsreport', 'Monthly NPS Report for OP', 'EMAIL', 'OP'),
(36, 'email_weeklypatientreport_op', '09:00:00', 'Monday', 0, 'email_ip_notification_op/weeklypatientreport', 'Weekly Hospital selection basis report OP', 'EMAIL', 'OP'),
(37, 'email_monthlypatientreport_op', '09:00:00', NULL, 1, 'email_ip_notification_op/monthlypatientreport', 'Monthly Hospital selection basis report OP', 'EMAIL', 'OP'),
(14, 'inmonthlyreport_op', '08:00:00', NULL, 1, 'messageop/inmonthlyreport', 'Monthly OP feedbacks report', 'SMS', 'OP');

-- --------------------------------------------------------

--
-- Table structure for table `ticketop_message`
--

CREATE TABLE `ticketop_message` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `reply` text,
  `message` text,
  `action` varchar(255) DEFAULT NULL,
  `ticketid` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) DEFAULT '0',
  `corrective` text,
  `preventive` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(20) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `anymessage` text,
  `feedbackid` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Open',
  `last_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assign_to` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticketsop`
--

CREATE TABLE `ticketsop` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(20) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `anymessage` text,
  `feedbackid` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Open',
  `last_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assign_to` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_int`
--

CREATE TABLE `tickets_int` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(20) DEFAULT NULL,
  `departmentid` varchar(20) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `anymessage` text,
  `feedbackid` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Open',
  `last_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assign_to` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_int_message`
--

CREATE TABLE `ticket_int_message` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `reply` text,
  `message` text,
  `action` varchar(255) DEFAULT NULL,
  `ticketid` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) DEFAULT '0',
  `corrective` text,
  `preventive` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `reply` text,
  `message` text,
  `action` varchar(255) DEFAULT NULL,
  `ticketid` varchar(20) DEFAULT NULL,
  `emailstatus` int(11) DEFAULT '0',
  `corrective` text,
  `preventive` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `user_role` tinyint(1) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `short_biography` text,
  `picture` varchar(50) DEFAULT NULL,
  `specialist` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `altmobile` varchar(255) DEFAULT NULL,
  `departmentpermission` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`, `altmobile`, `departmentpermission`) VALUES
(2, 'Setup Hospital', '', 'demo@efeedor.com', '0192023a7bbd73250516f069df18b500', 1, NULL, NULL, 'Bangalore', NULL, '9964244957', NULL, 'assets/images/doctor/2023-01-06/I2.jpg', NULL, '1970-01-01', 'Male', NULL, NULL, 2, '2023-01-06', NULL, 1, NULL, '{\"ids\":\"2\",\"name\":\"TGH- Super Admin\",\"email\":\"demo@efeedor.com\",\"mobile\":\"9964244957\",\"password\":\"admin123\",\"userrole\":\"SuperAdmin\",\"ippermission\":\"1\",\"oppermission\":\"1\",\"inpermission\":\"1\",\"message_ticket_ip\":\"1\",\"inweeklyreport_ip\":\"1\",\"weeklyipticketreport_ip\":\"1\",\"message_ticket_op\":\"1\",\"inweeklyreport_op\":\"1\",\"weeklyipticketreport_op\":\"1\",\"message_ticket_int\":\"1\",\"email_weeklynpsreport_ip\":\"1\",\"email_monthlynpsreport_ip\":\"1\",\"email_ticket_op\":\"1\",\"email_weeklyreport_op\":\"1\",\"email_weeklynpsreport_op\":\"1\",\"email_weeklypatientreport_op\":\"1\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bf_coordinator`
--
ALTER TABLE `bf_coordinator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_departmentop`
--
ALTER TABLE `bf_departmentop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_feedback`
--
ALTER TABLE `bf_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_feedback_int`
--
ALTER TABLE `bf_feedback_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_opatients`
--
ALTER TABLE `bf_opatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_outfeedback`
--
ALTER TABLE `bf_outfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_patients`
--
ALTER TABLE `bf_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_patients_int`
--
ALTER TABLE `bf_patients_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_ward`
--
ALTER TABLE `bf_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dprt_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_setting`
--
ALTER TABLE `mail_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outtickets`
--
ALTER TABLE `outtickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `setup`
--
ALTER TABLE `setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setupop`
--
ALTER TABLE `setupop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_int`
--
ALTER TABLE `setup_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedule_notification`
--
ALTER TABLE `shedule_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketop_message`
--
ALTER TABLE `ticketop_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketsop`
--
ALTER TABLE `ticketsop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_int`
--
ALTER TABLE `tickets_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_int_message`
--
ALTER TABLE `ticket_int_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bf_coordinator`
--
ALTER TABLE `bf_coordinator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bf_departmentop`
--
ALTER TABLE `bf_departmentop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `bf_feedback`
--
ALTER TABLE `bf_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_feedback_int`
--
ALTER TABLE `bf_feedback_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_opatients`
--
ALTER TABLE `bf_opatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_outfeedback`
--
ALTER TABLE `bf_outfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_patients`
--
ALTER TABLE `bf_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_patients_int`
--
ALTER TABLE `bf_patients_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bf_ward`
--
ALTER TABLE `bf_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dprt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `mail_setting`
--
ALTER TABLE `mail_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `outtickets`
--
ALTER TABLE `outtickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setup_int`
--
ALTER TABLE `setup_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `shedule_notification`
--
ALTER TABLE `shedule_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ticketop_message`
--
ALTER TABLE `ticketop_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketsop`
--
ALTER TABLE `ticketsop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets_int`
--
ALTER TABLE `tickets_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_int_message`
--
ALTER TABLE `ticket_int_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
