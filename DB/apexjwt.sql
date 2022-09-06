-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 10:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apexjwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` bigint(20) NOT NULL,
  `buyer_code` varchar(45) DEFAULT NULL,
  `buyer_name` varchar(45) DEFAULT NULL,
  `short_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_person` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `buyer_code`, `buyer_name`, `short_name`, `phone`, `email`, `contact_person`, `address`, `status`) VALUES
(1, '1234', 'asdf', 'asdf', '123', 'reazulhaque20@gmail.com', 'Reazul Haque', 'Flat: D-1, House: 579, Road: 18 Block: F, Bashundhara R/A', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_desc` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `certifications_id` bigint(20) NOT NULL,
  `certification_vendor` varchar(45) DEFAULT NULL,
  `certification_certificate_id` varchar(45) DEFAULT NULL,
  `certification_validity` varchar(45) DEFAULT NULL,
  `certification_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract_details`
--

CREATE TABLE `contract_details` (
  `id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `officer_id` bigint(20) DEFAULT NULL,
  `office_id` bigint(20) DEFAULT NULL,
  `contract_code` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_details`
--

INSERT INTO `contract_details` (`id`, `farmer_id`, `officer_id`, `office_id`, `contract_code`, `status`) VALUES
(2, 2, 1, 1, 'CC001', 'active'),
(3, 2, 1, 1, 'CC002', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `contract_input_details`
--

CREATE TABLE `contract_input_details` (
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `input_category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `stock_qty` decimal(19,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `distribution_qty` decimal(19,2) DEFAULT NULL,
  `sub_total` decimal(19,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contract_payment_details`
--

CREATE TABLE `contract_payment_details` (
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `total_amount` decimal(19,2) DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `loan_amount` decimal(19,2) DEFAULT NULL,
  `total_due_amount` decimal(19,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_payment_details`
--

INSERT INTO `contract_payment_details` (`id`, `contract_id`, `total_amount`, `payment_amount`, `loan_amount`, `total_due_amount`, `status`) VALUES
(1, 2, '500.00', '400.00', '200.00', '100.00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `contract_season`
--

CREATE TABLE `contract_season` (
  `id` bigint(20) NOT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `land_id` bigint(20) DEFAULT NULL,
  `land_area` varchar(45) DEFAULT NULL,
  `season_id` bigint(20) DEFAULT NULL,
  `crop_id` bigint(20) DEFAULT NULL,
  `crop_variety_id` bigint(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_season`
--

INSERT INTO `contract_season` (`id`, `contract_id`, `land_id`, `land_area`, `season_id`, `crop_id`, `crop_variety_id`, `status`) VALUES
(4, 2, 2, '4', 1, 1, 6, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `contruct_cash_details`
--

CREATE TABLE `contruct_cash_details` (
  `contruct_cash_details_id` bigint(20) NOT NULL,
  `contruct_id` bigint(20) DEFAULT NULL,
  `contruct_cash_details_cash_recv` decimal(19,4) DEFAULT NULL,
  `contruct_cash_details_cash_deposited` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contruct_details`
--

CREATE TABLE `contruct_details` (
  `contruct_id` bigint(20) NOT NULL,
  `contruct_type` varchar(45) DEFAULT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `contruct_source_id` bigint(20) DEFAULT NULL,
  `contruct_start_date` date DEFAULT NULL,
  `contruct_end_date` date DEFAULT NULL,
  `contruct_startby` bigint(20) DEFAULT NULL,
  `contruct_seed_plant_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contruct_details`
--

INSERT INTO `contruct_details` (`contruct_id`, `contruct_type`, `farmer_id`, `contruct_source_id`, `contruct_start_date`, `contruct_end_date`, `contruct_startby`, `contruct_seed_plant_date`) VALUES
(1, 'Con-1', 2, NULL, '2022-04-01', '2022-06-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contruct_fertilizer_details`
--

CREATE TABLE `contruct_fertilizer_details` (
  `contruct_fartilizer_details_id` bigint(20) NOT NULL,
  `contruct_id` bigint(20) DEFAULT NULL,
  `fertilizer_id` bigint(20) DEFAULT NULL,
  `fertilizer_qty` decimal(19,4) DEFAULT NULL,
  `fertilizer_cost` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contruct_land_details`
--

CREATE TABLE `contruct_land_details` (
  `contruct_land_details_id` bigint(20) NOT NULL,
  `contruct_id` bigint(20) DEFAULT NULL,
  `land_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contruct_seed_details`
--

CREATE TABLE `contruct_seed_details` (
  `contruct_seed_details_id` bigint(20) NOT NULL,
  `contruct_id` bigint(20) DEFAULT NULL,
  `seed_id` bigint(20) DEFAULT NULL,
  `seed_grad` varchar(45) DEFAULT NULL,
  `seed-qty` decimal(19,4) DEFAULT NULL,
  `seed_cost` decimal(19,4) DEFAULT NULL,
  `seed_plant_date` date DEFAULT NULL,
  `seed_hervest_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crop_activity`
--

CREATE TABLE `crop_activity` (
  `crop_activity_id` bigint(20) NOT NULL,
  `activity_date` datetime DEFAULT NULL,
  `activity_type` varchar(45) DEFAULT NULL,
  `crop_name` varchar(45) DEFAULT NULL,
  `sowing_date` datetime DEFAULT NULL,
  `yielding_date` datetime DEFAULT NULL,
  `harvesting_date` datetime DEFAULT NULL,
  `crop_purchase_date` datetime DEFAULT NULL,
  `apo_user_id` bigint(20) DEFAULT NULL,
  `land_id` bigint(20) DEFAULT NULL,
  `seed_id` bigint(20) DEFAULT NULL,
  `fertilizer_id` bigint(20) DEFAULT NULL,
  `contruct_details_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crop_grade_list`
--

CREATE TABLE `crop_grade_list` (
  `id` bigint(20) NOT NULL,
  `crop_id` bigint(20) DEFAULT NULL,
  `variety_id` bigint(20) DEFAULT NULL,
  `grade_code` varchar(45) DEFAULT NULL,
  `grade_name` varchar(45) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_grade_list`
--

INSERT INTO `crop_grade_list` (`id`, `crop_id`, `variety_id`, `grade_code`, `grade_name`, `price`, `status`) VALUES
(0, 1, 6, 'G-1', 'Grade-1', '12.00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `crop_list`
--

CREATE TABLE `crop_list` (
  `id` bigint(20) NOT NULL,
  `crop_code` varchar(45) DEFAULT NULL,
  `crop_name` varchar(45) DEFAULT NULL,
  `unit` bigint(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_list`
--

INSERT INTO `crop_list` (`id`, `crop_code`, `crop_name`, `unit`, `status`) VALUES
(1, 'CRP-001', 'Crop-1', 10, 'active'),
(2, 'CRP-002', 'Crop-2', 20, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `crop_variety_detail`
--

CREATE TABLE `crop_variety_detail` (
  `id` bigint(20) NOT NULL,
  `crop_id` bigint(20) DEFAULT NULL,
  `variety_code` varchar(45) DEFAULT NULL,
  `variety_name` varchar(45) DEFAULT NULL,
  `crop_cycle` varchar(45) DEFAULT NULL COMMENT 'value in days',
  `expected_yield` varchar(45) DEFAULT NULL COMMENT '(KGS)/DCE',
  `initial_harvest` varchar(45) DEFAULT NULL COMMENT 'Days',
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_variety_detail`
--

INSERT INTO `crop_variety_detail` (`id`, `crop_id`, `variety_code`, `variety_name`, `crop_cycle`, `expected_yield`, `initial_harvest`, `status`) VALUES
(6, 1, 'VRT-001', 'Variety-1', '60', '45', '55', 'active'),
(11, 2, 'VRT-002', 'Variety-2', '90', '20', '80', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_location` varchar(255) DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `dept_location`, `is_enable`) VALUES
(2, 'System', 'AHL', b'1'),
(3, 'Audit', 'AHL', b'1'),
(4, 'Accounts', 'AHL', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `div_id` bigint(20) DEFAULT NULL,
  `dis_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `div_id`, `dis_name`, `status`) VALUES
(1, 1, 'Dhaka', 'active'),
(2, 1, 'Gazipur', 'active'),
(4, 2, 'Bandarban', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` bigint(20) NOT NULL,
  `div_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `div_name`, `status`) VALUES
(1, 'Dhaka', 'active'),
(2, 'Chattogram', 'active'),
(3, 'sfgd', 'inActive');

-- --------------------------------------------------------

--
-- Table structure for table `dropdown`
--

CREATE TABLE `dropdown` (
  `dropdown_id` bigint(20) NOT NULL,
  `dropdown_name` varchar(45) DEFAULT NULL,
  `dropdown_text` varchar(45) DEFAULT NULL,
  `dropdown_value` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dropdown`
--

INSERT INTO `dropdown` (`dropdown_id`, `dropdown_name`, `dropdown_text`, `dropdown_value`, `status`) VALUES
(1, 'seed_type', 'Good', 'Good', 'active'),
(2, 'seed_type', 'Medium', 'Medium', 'active'),
(3, 'seed_type', 'Bad', 'Bad', 'active'),
(4, 'seed_category', 'Category-1', 'Category-1', 'active'),
(5, 'seed_category', 'Category-2', 'Category-2', 'active'),
(6, 'seed_category', 'Category-3', 'Category-3', 'active'),
(7, 'stock_status', '2-3 Days', '2-3 Days', 'active'),
(8, 'stock_status', 'In Stock', 'In Stock', 'active'),
(9, 'stock_status', 'Out Of Stock', 'Out Of Stock', 'active'),
(10, 'stock_status', 'Pre-Order', 'Pre-Order', 'active'),
(11, 'seed_grad', 'Grad-A', 'Grad-A', 'active'),
(12, 'seed_grad', 'Grad-B', 'Grad-B', 'active'),
(13, 'seed_grad', 'Grad-C', 'Grad-C', 'active'),
(14, 'gender', 'Male', 'Male', 'active'),
(15, 'gender', 'Female', 'Female', 'active'),
(16, 'farmerType', 'FullTime', 'FullTime', 'active'),
(17, 'farmerType', 'Contract', 'Contract', 'active'),
(18, 'reporting_office_name', 'Office-1', 'Office-1', 'active'),
(19, 'reporting_office_name', 'Office-2', 'Office-2', 'active'),
(20, 'reporting_field_officer', 'Officer-1', 'Officer-1', 'active'),
(21, 'reporting_field_officer', 'Officer-2', 'Officer-2', 'active'),
(22, 'martial_status', 'Single', 'Single', 'active'),
(23, 'martial_status', 'Married', 'Married', 'active'),
(24, 'blood_group', 'A+', 'A+', 'active'),
(25, 'blood_group', 'A-', 'A-', 'active'),
(26, 'blood_group', 'B+', 'B+', 'active'),
(27, 'blood_group', 'B-', 'B-', 'active'),
(28, 'blood_group', 'AB+', 'AB+', 'active'),
(29, 'blood_group', 'AB-', 'AB-', 'active'),
(30, 'blood_group', 'O+', 'O+', 'active'),
(31, 'blood_group', 'O-', 'O-', 'active'),
(32, 'mobile_banking_type', 'Bkash', 'Bkash', 'active'),
(33, 'mobile_banking_type', 'Rocket', 'Rocket', 'active'),
(34, 'mobile_banking_type', 'Nagad', 'Nagad', 'active'),
(35, 'mobile_banking_type', 'Tap', 'Tap', 'active'),
(36, 'mobile_banking_type', 'UPay', 'UPay', 'active'),
(37, 'mobile_banking_type', 'MCash', 'MCash', 'active'),
(38, 'mobile_banking_type', 'SureCash', 'SureCash', 'active'),
(39, 'zone', 'Zone-1', 'Zone-1', 'active'),
(40, 'zone', 'Zone-2', 'Zone-2', 'active'),
(41, 'zone', 'Zone-3', 'Zone-3', 'active'),
(42, 'farmLandType', 'Open Field', 'Open Field', 'active'),
(43, 'farmLandType', 'Net House', 'Net House', 'active'),
(44, 'farmLandType', 'Green House', 'Green House', 'active'),
(45, 'cultivationType', 'Commercial', 'Commercial', 'active'),
(46, 'cultivationType', 'R & D', 'R & D', 'active'),
(47, 'cultivationType', 'Trial', 'Trial', 'active'),
(48, 'ownership', 'Owned', 'Owned', 'active'),
(49, 'ownership', 'Lease', 'Lease', 'active'),
(50, 'topography', 'Valley', 'Valley', 'active'),
(51, 'topography', 'Plain', 'Plain', 'active'),
(52, 'topography', 'Plateaus', 'Plateaus', 'active'),
(53, 'test', 'test', 'test', 'inActive');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_contruct`
--

CREATE TABLE `farmer_contruct` (
  `farmer_contruct_id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `contruct_start_date` date DEFAULT NULL,
  `contruct_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmer_contruct`
--

INSERT INTO `farmer_contruct` (`farmer_contruct_id`, `farmer_id`, `contruct_start_date`, `contruct_end_date`) VALUES
(2, 2, '2022-05-10', '2022-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

CREATE TABLE `farmer_details` (
  `farmer_id` bigint(20) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `farmer_type` varchar(45) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `farmer_location` bigint(20) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `nid` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(45) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `village_name` varchar(45) DEFAULT NULL,
  `union_name` varchar(45) DEFAULT NULL,
  `nominee_name` varchar(45) DEFAULT NULL,
  `nominee_contact` varchar(45) DEFAULT NULL,
  `relation_with_nominee` varchar(45) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `office_name` varchar(45) DEFAULT NULL,
  `field_officer` varchar(45) DEFAULT NULL,
  `zone_details` varchar(45) DEFAULT NULL,
  `profile_image_path` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`farmer_id`, `farmer_name`, `gender`, `farmer_type`, `joining_date`, `farmer_location`, `father_name`, `nid`, `mobile`, `dob`, `marital_status`, `blood_group`, `village_name`, `union_name`, `nominee_name`, `nominee_contact`, `relation_with_nominee`, `remarks`, `office_name`, `field_officer`, `zone_details`, `profile_image_path`, `status`) VALUES
(2, 'Farmer-1', 'Male', 'Contruct', '2018-04-26', 1, 'Father-1', '1234', '1234', '2018-10-10', 'Married', 'A+', 'Village-1', '1', 'Nominee-1', '1234', 'Relation-1', 'No Remarks', 'Office-1', 'Officer-1', 'Zone-1', 'Farmer-1.jpg', 'active'),
(3, 'Farmer-2', 'Male', 'Contruct', '2021-01-15', 2, 'Father-2', '1234', '1234', '2018-10-10', 'Maried', 'A-', 'Village-2', 'Union-2', 'Nominee-2', '1234', 'Relation-2', 'No Remarks', 'Office-2', 'Officer-2', 'Zone-2', 'Farmer-2.jpg', 'active'),
(4, 'Farmer-3', 'Male', 'FullTime', '2022-06-05', 3, 'Father-3', '1234', '1234', '2018-10-10', 'Maried', 'B+', 'Village-3', 'Union-3', 'Nominee-3', '1234', 'Relation-3', 'No Remarks', 'Office-3', 'Officer-3', 'Zone-3', NULL, 'active'),
(30, 'SDFG', 'Male', 'FullTime', '2022-06-05', 1, 'sfdg', 'SDFG', 'SDFG', '2022-06-17', 'Married', 'B+', 'SDFG', '1', 'SDFG', 'SFDG', 'SDFG', 'OOOO', 'Office-2', 'Officer-3', 'Zone-1', 'SDFG.jpeg', 'active'),
(36, 'DFG1243', 'Male', 'FullTime', '2022-06-05', 1, 'dfgsd', 'SDFG1243', 'FDG1243', '2022-06-19', 'Single', 'A-', 'FDG', '1', 'FG', 'SDFG', 'SDFG', 'SDFG', 'Office-1', 'Officer-1', 'Zone-1', 'DFG1243.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_family_details`
--

CREATE TABLE `farmer_family_details` (
  `farmer_family_details_id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `member_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `member_dob` date DEFAULT NULL,
  `relation_with_member` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer_family_details`
--

INSERT INTO `farmer_family_details` (`farmer_family_details_id`, `farmer_id`, `member_name`, `contact_number`, `member_dob`, `relation_with_member`, `status`) VALUES
(1, 2, 'Member-1', '1234', '2018-10-10', 'Relation-1', 'active'),
(44, 30, 'sdfg', 'sdfg', '2022-06-17', 'sdfg', 'active'),
(45, 3, 'Member-2', '1234', '2018-10-10', 'Relation-2', 'active'),
(46, 4, 'Member-3', '1234', '2018-10-10', 'Relation-3', 'active'),
(57, 36, 'dsfg', 'sdfg', '2022-06-19', 'sdfg', 'active'),
(58, 36, 'sdfg', 'sdfg', '2022-06-19', 'dfg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_financial_details`
--

CREATE TABLE `farmer_financial_details` (
  `farmer_financial_details_id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `account_no` varchar(45) DEFAULT NULL,
  `mobile_banking_type` varchar(45) DEFAULT NULL,
  `mobile_banking_account` varchar(45) DEFAULT NULL,
  `authorized_person_name` varchar(45) DEFAULT NULL,
  `authorized_bank_name` varchar(45) DEFAULT NULL,
  `authorized_bank_account_no` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer_financial_details`
--

INSERT INTO `farmer_financial_details` (`farmer_financial_details_id`, `farmer_id`, `bank_name`, `branch_name`, `account_no`, `mobile_banking_type`, `mobile_banking_account`, `authorized_person_name`, `authorized_bank_name`, `authorized_bank_account_no`, `status`) VALUES
(1, 2, 'DBBL', 'Gulshan', '1234', 'Bkash', '1234', 'Person-1', 'DBBL', '1234', 'active'),
(26, 30, 'sdfg', 'sdfg', 'sfdg', 'Rocket', 'sdfg', 'sdf', 'gsdfg', 'sdfg', 'active'),
(27, 3, 'dfg', 'juu', 'uuuu', 'Rocket', 'qqqq', 'qqqq', 'qqqq', 'qqqq', 'active'),
(28, 4, 'dfg', 'jjjj', 'jjjj', 'Bkash', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'active'),
(34, 36, 'asdf', 'asdf', 'asdf', 'Rocket', 'asdf', 'asdf', 'sadf', 'asdf', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `farm_details`
--

CREATE TABLE `farm_details` (
  `farm_id` bigint(20) NOT NULL,
  `farm_name` varchar(45) DEFAULT NULL,
  `farm_type` varchar(45) DEFAULT NULL,
  `farm_location` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farm_details`
--

INSERT INTO `farm_details` (`farm_id`, `farm_name`, `farm_type`, `farm_location`) VALUES
(1, 'Farm-1', 'Shade', 1);

-- --------------------------------------------------------

--
-- Table structure for table `farm_input_category`
--

CREATE TABLE `farm_input_category` (
  `id` bigint(20) NOT NULL,
  `input_cat_code` varchar(45) DEFAULT NULL,
  `input_cat_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farm_input_category`
--

INSERT INTO `farm_input_category` (`id`, `input_cat_code`, `input_cat_name`, `status`) VALUES
(1, 'FI-CAT-001', 'Farm Input Category 1', 'active'),
(2, 'FI-CAT-002', 'Farm Input Category 2', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `farm_land_detail`
--

CREATE TABLE `farm_land_detail` (
  `id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `reporting_office_id` bigint(20) DEFAULT NULL,
  `reporting_field_officer_id` bigint(20) DEFAULT NULL,
  `reg_no` varchar(45) DEFAULT NULL,
  `farm_land_type` varchar(45) DEFAULT NULL,
  `cultivation_type` varchar(45) DEFAULT NULL,
  `ownership` varchar(45) DEFAULT NULL,
  `topography` varchar(45) DEFAULT NULL,
  `land_area` varchar(45) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lon` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farm_land_detail`
--

INSERT INTO `farm_land_detail` (`id`, `farmer_id`, `reporting_office_id`, `reporting_field_officer_id`, `reg_no`, `farm_land_type`, `cultivation_type`, `ownership`, `topography`, `land_area`, `lat`, `lon`, `remarks`) VALUES
(3, 2, 2, 1, 'sdf', 'Open Field', 'Commercial', 'Owned', 'Valley', '147', 'asdf', 'asdf', '1234'),
(4, 2, 2, 1, 'asdf', 'Net House', 'Commercial', 'Owned', 'Plain', '741', 'asd', 'asdf', '4321'),
(5, 30, 2, 2, 'sfgsd', 'Net House', 'Trial', 'Lease', 'Plateaus', 'dsfg', 'dsfg', 'dfg', 'sdfg');

-- --------------------------------------------------------

--
-- Table structure for table `farm_land_planning`
--

CREATE TABLE `farm_land_planning` (
  `id` bigint(20) NOT NULL,
  `farmer_id` bigint(20) DEFAULT NULL,
  `farm_id` bigint(20) DEFAULT NULL,
  `season_id` bigint(20) DEFAULT NULL,
  `sowing_date` date DEFAULT NULL,
  `seed_source` varchar(45) DEFAULT NULL,
  `seed_qty` decimal(19,2) DEFAULT NULL,
  `est_yield` varchar(45) DEFAULT NULL,
  `est_purchase` varchar(45) DEFAULT NULL,
  `est_harvest_date` date DEFAULT NULL,
  `rr_spacing` varchar(45) DEFAULT NULL,
  `tt_spacing` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farm_land_planning_crop`
--

CREATE TABLE `farm_land_planning_crop` (
  `id` bigint(20) NOT NULL,
  `farm_land_planning_id` bigint(20) DEFAULT NULL,
  `crop_id` bigint(20) DEFAULT NULL,
  `crop_variety_id` bigint(20) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `fertilizer_id` bigint(20) NOT NULL,
  `fertilizer_name` varchar(255) DEFAULT NULL,
  `fertilizer_grade` varchar(45) DEFAULT NULL,
  `fertilizer_status` varchar(45) DEFAULT NULL,
  `fertilizer_uom` varchar(45) DEFAULT NULL,
  `fertilizer_cost` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`fertilizer_id`, `fertilizer_name`, `fertilizer_grade`, `fertilizer_status`, `fertilizer_uom`, `fertilizer_cost`) VALUES
(1, 'Fartilizer-1', 'Grade-A', 'Active', 'kg', '200.0000');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` bigint(20) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`, `group_status`) VALUES
(1, 'Creator', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `input_products`
--

CREATE TABLE `input_products` (
  `id` bigint(20) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `farm_input_cat_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` bigint(20) NOT NULL,
  `inv_type` varchar(45) DEFAULT NULL,
  `inv_variety` varchar(45) DEFAULT NULL,
  `inv_amount` decimal(19,4) DEFAULT NULL,
  `inv_pack_year` varchar(45) DEFAULT NULL,
  `inv_self_life` varchar(45) DEFAULT NULL,
  `inv_expiration` date DEFAULT NULL,
  `inv_source` varchar(45) DEFAULT NULL,
  `inv_instock` decimal(19,4) DEFAULT NULL,
  `inv_lot_number` varchar(45) DEFAULT NULL,
  `inv_bulk_cost` decimal(19,4) DEFAULT NULL,
  `inv_quantity_received` decimal(19,4) DEFAULT NULL,
  `inv_quantity_on_hand` decimal(19,4) DEFAULT NULL,
  `inv_stock_number` varchar(45) DEFAULT NULL,
  `inv_stock_location` bigint(20) DEFAULT NULL,
  `inv_vendor` varchar(45) DEFAULT NULL,
  `inv_reorder_level` decimal(19,4) DEFAULT NULL,
  `inv_uom` varchar(45) DEFAULT NULL,
  `inv_unit_price` decimal(19,4) DEFAULT NULL,
  `inv_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE `labour` (
  `labour_id` bigint(20) NOT NULL,
  `labour_type` varchar(45) DEFAULT NULL,
  `labour_intime` datetime DEFAULT NULL,
  `labour_outtime` datetime DEFAULT NULL,
  `labour_payment_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `land_details`
--

CREATE TABLE `land_details` (
  `land_id` bigint(20) NOT NULL,
  `land_name` varchar(255) DEFAULT NULL,
  `land_type` varchar(255) DEFAULT NULL,
  `land_size` varchar(45) DEFAULT NULL,
  `land_uom` varchar(45) DEFAULT NULL,
  `land_current_status` varchar(45) DEFAULT NULL,
  `land_desc` varchar(255) DEFAULT NULL,
  `land_location_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `land_details`
--

INSERT INTO `land_details` (`land_id`, `land_name`, `land_type`, `land_size`, `land_uom`, `land_current_status`, `land_desc`, `land_location_id`) VALUES
(1, 'Land-1', 'Plain', '3', 'acr', 'Used', 'Rice Land', 1),
(2, 'Land-2', 'Plain', '5', 'acr', 'Used', 'Farm land', 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(45) DEFAULT NULL,
  `location_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_code`, `location_name`, `status`) VALUES
(1, 'L001', 'Location-1', 'active'),
(2, 'L002', 'Location-2', 'active'),
(3, 'L003', 'Location-3', 'active'),
(4, 'L004', 'Location-4', 'active'),
(5, 'L005', 'Location-5', 'active'),
(6, 'L006', 'Location-6', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_name` varchar(255) DEFAULT NULL,
  `manufacturer_desc` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_desc`, `status`) VALUES
(1, 'Seed Bangladesh', 'seed company BD', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `planning_detail`
--

CREATE TABLE `planning_detail` (
  `id` bigint(20) NOT NULL,
  `planning_code` varchar(45) DEFAULT NULL,
  `land_id` bigint(20) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `office_id` bigint(20) DEFAULT NULL,
  `officer_id` bigint(20) DEFAULT NULL COMMENT 'APO Name',
  `farmer_id` bigint(20) DEFAULT NULL,
  `sowing_date` datetime DEFAULT NULL,
  `harvest_date` datetime DEFAULT NULL,
  `yield_decimal` varchar(45) DEFAULT NULL,
  `purchase_qty` decimal(19,2) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `planning_detail`
--

INSERT INTO `planning_detail` (`id`, `planning_code`, `land_id`, `contract_id`, `office_id`, `officer_id`, `farmer_id`, `sowing_date`, `harvest_date`, `yield_decimal`, `purchase_qty`, `status`) VALUES
(3, 'PD001', 1, 2, 1, 1, 2, '2022-09-04 00:00:00', '2022-09-04 00:00:00', '123', '123.00', 'inActive'),
(4, 'PD002', 1, 2, 1, 1, 2, '2022-09-05 00:00:00', '2022-09-05 00:00:00', '123', '123.00', 'actice'),
(5, 'PD003', 1, 2, 1, 1, 2, '2022-09-05 00:00:00', '2022-09-05 00:00:00', '321', '321.00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_uom` varchar(255) DEFAULT NULL,
  `product_qty` decimal(19,4) DEFAULT NULL,
  `product_stock_status` varchar(255) DEFAULT NULL,
  `product_manufacturer_id` bigint(20) DEFAULT NULL,
  `product_price` decimal(19,4) DEFAULT NULL,
  `product_reorder_level` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `product_category` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `purchase_history_id` bigint(20) NOT NULL,
  `purchase_item` varchar(45) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_amount` decimal(19,4) DEFAULT NULL,
  `purchase_quantity` decimal(19,4) DEFAULT NULL,
  `purchase_unit` decimal(19,4) DEFAULT NULL,
  `purchase_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporting_field_officer`
--

CREATE TABLE `reporting_field_officer` (
  `id` bigint(20) NOT NULL,
  `officer_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reporting_field_officer`
--

INSERT INTO `reporting_field_officer` (`id`, `officer_name`, `status`) VALUES
(1, 'Officer-1', 'active'),
(2, 'Officer-2', 'active'),
(3, 'Officer-3', 'active'),
(4, 'Officer-4', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `reporting_office`
--

CREATE TABLE `reporting_office` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reporting_office`
--

INSERT INTO `reporting_office` (`id`, `office_name`, `status`) VALUES
(1, 'Office-1', 'active'),
(2, 'Office-2', 'active'),
(3, 'Office-3', 'active'),
(4, 'Office-4', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `reporting_user`
--

CREATE TABLE `reporting_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reporting_user`
--

INSERT INTO `reporting_user` (`id`, `name`, `department`, `company`, `status`) VALUES
(1, 'Md Reazul Haque', 'System', 'AHL', 'Active'),
(2, 'Rifat Tanjir', 'System', 'AHL', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_description`, `role_name`) VALUES
(1, 'Admin Role', 'Admin'),
(2, 'User Role', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `season_list`
--

CREATE TABLE `season_list` (
  `id` bigint(20) NOT NULL,
  `season_code` varchar(45) DEFAULT NULL,
  `season_name` varchar(45) DEFAULT NULL,
  `season_start` date DEFAULT NULL,
  `season_end` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season_list`
--

INSERT INTO `season_list` (`id`, `season_code`, `season_name`, `season_start`, `season_end`, `status`) VALUES
(1, 'S001', 'Season 1', '2022-08-17', '2022-08-30', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `seed_master`
--

CREATE TABLE `seed_master` (
  `seed_master_id` bigint(20) NOT NULL,
  `sm_seed_name` varchar(255) DEFAULT NULL,
  `sm_seed_grade` varchar(45) DEFAULT NULL,
  `sm_seed_category` varchar(255) DEFAULT NULL,
  `sm_seed_type` varchar(255) DEFAULT NULL,
  `sm_seed_stock` bigint(20) DEFAULT NULL,
  `sm_seed_cost` decimal(19,4) DEFAULT NULL,
  `sm_seed_uom` varchar(45) DEFAULT NULL,
  `sm_seed_harvest_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seed_master`
--

INSERT INTO `seed_master` (`seed_master_id`, `sm_seed_name`, `sm_seed_grade`, `sm_seed_category`, `sm_seed_type`, `sm_seed_stock`, `sm_seed_cost`, `sm_seed_uom`, `sm_seed_harvest_date`) VALUES
(1, 'Rice-Seed', 'Grade-A', 'Cat-1', 'Type-1', 250, '500.0000', 'kg', '2022-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` bigint(20) NOT NULL,
  `stock_item` varchar(255) DEFAULT NULL,
  `stock_quantity` bigint(20) DEFAULT NULL,
  `stock_uom` varchar(45) DEFAULT NULL,
  `stock_threshold` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

CREATE TABLE `supplier_list` (
  `id` bigint(20) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `short_name` varchar(45) DEFAULT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_person` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `code`, `short_name`, `full_name`, `address`, `phone`, `email`, `contact_person`, `status`) VALUES
(1, 'SUP001', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `union`
--

CREATE TABLE `union` (
  `id` bigint(20) NOT NULL,
  `div_id` bigint(20) DEFAULT NULL,
  `dis_id` bigint(20) DEFAULT NULL,
  `zila_id` bigint(20) DEFAULT NULL,
  `union_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `union`
--

INSERT INTO `union` (`id`, `div_id`, `dis_id`, `zila_id`, `union_name`, `status`) VALUES
(1, 1, 2, 2, 'Atabaha', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE `upazila` (
  `id` bigint(20) NOT NULL,
  `div_id` bigint(20) DEFAULT NULL,
  `dis_id` bigint(20) DEFAULT NULL,
  `zila_name` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upazila`
--

INSERT INTO `upazila` (`id`, `div_id`, `dis_id`, `zila_name`, `status`) VALUES
(2, 1, 2, 'Kaliakoir', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_enable` bit(1) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `work_location` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `ext_no` varchar(45) DEFAULT NULL,
  `reporting_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(28, 'admin', b'1', 'admin', '$2a$10$sDFXGl/KvSecy.5neEgk9uQ1REMTW7l3NHoBfvKYV9X0/WboxAo2y', 'admin', 'admin', 'admin', 'admin', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Md Reazul', b'1', NULL, '$2a$10$s5OtBiS2U3GyPuiF5wiYOewhebT.80J9OKVwSbwCbPcMo973UWNQe', '101586', '101586', 'Md Reazul Haque', 'Software Engineer', 'System', 'HO', 'AHL', 'reazul12997@gmail.com', '01787964391', '2022-07-22', '233', 'Md Reazul Haque'),
(135, 'admin1', b'1', NULL, '$2a$10$1cLuI9gMow/ysVMIUI7tUOFaicKUCTM0A/BGBfQLPwQKzB.Z7ufsC', '101586', 'admin1', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(136, 'admin2', b'1', NULL, '$2a$10$pHLGYUs.YXrH9weyComxRu9.4E8K14gBtyS4S//zyKKvhLnFsUEse', '101586', 'admin2', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(137, 'admin3', b'1', NULL, '$2a$10$xcQ3.ICs/oEu5S4wJ2WNC.D1avhDUFv5onCjiDLO/v7Kbzxheyppm', '101586', 'admin3', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(138, 'admin4', b'1', NULL, '$2a$10$8dveDZeFvraypBSjsOo2Xu0iPRQ.xqZ8lyB6eZkG327o2FdzEgkB6', '101586', 'admin4', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(139, 'admin5', b'1', NULL, '$2a$10$hhXHFQJjgwncrLw4PTUEPOIXTvAUpBIEKKukSKJGc51pzMd1zkSYe', '101586', 'admin5', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(140, 'admin6', b'1', NULL, '$2a$10$XG1gPrD7dg6FyuHFkV/9DuAiIMgDE5vP9uKHmNKjs0QkYVVUJnNLG', '101586', 'admin6', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(141, 'admin7', b'1', NULL, '$2a$10$wlsLA6M4hx0xKkpN9hOPEu8pKU794CWx932K0Zc4jGMfj8iP0xbzC', '101586', 'admin7', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(142, 'admin8', b'1', NULL, '$2a$10$KDsKCi7J2LXsEPaCTOfrhuOHRUNW7wuvON516ho87Hdl5yurrjYeS', '101586', 'admin8', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(143, 'admin9', b'1', NULL, '$2a$10$0.G6wUrs8z3OghdpZ.S/QuAnMMZiXR7UGphnPOIADox24JpV.wTmK', '101586', 'admin9', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(144, 'admin10', b'1', NULL, '$2a$10$72BS8Efgwcy6XfYg6ODo.eAHHk2k0JE6fbAhsEmWWnWJBlRzw4Ij6', '101586', 'admin10', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(145, 'admin11', b'1', NULL, '$2a$10$qvXxM6j/QJGFWOHZyS2Nx.kUyWHjvJs0EIjwcKNJ20qz8ZHnbie0W', '101586', 'admin11', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(146, 'admin12', b'1', NULL, '$2a$10$Q.5Kvimc8CHFTqp4OiEINuy2CZvBETXLycy9TY0y3rcLkILUoOaee', '101586', 'admin12', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(147, 'admin13', b'1', NULL, '$2a$10$ByAeXTnSOcubPAUfg9KWju53DOCy7aRG9Opd8lYDdrirhOjCpW7w.', '101586', 'admin13', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(148, 'admin14', b'1', NULL, '$2a$10$mO9p139WXbrlnckTz9K.ve8NYxWzWyiCKmSQLZZW7aF9Mf/rxfETu', '101586', 'admin14', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(149, 'admin15', b'1', NULL, '$2a$10$2K3gVK7/XIrV9T6bGxx8d.6PpyhTdX9xpHJK4DktQkvJSsrVLCmTC', '101586', 'admin15', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(150, 'admin16', b'1', NULL, '$2a$10$MauuD1u9UAjtVt9g/blljeXLUduTH8oBgAQ3k0R0Pg2jpOHvn8rLi', '101586', 'admin16', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(151, 'admin17', b'1', NULL, '$2a$10$jzrs.eepD3eKK9EP2eShX.uUyXKP1CwsDLvCQ18O5qH3VCjySsuDC', '101586', 'admin17', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(152, 'admin18', b'1', NULL, '$2a$10$ROzl6OHrH/AWHC1NoIDkNesWRQu8UxcE5kJsjPbr/oQ2wdSJhz5zC', '101586', 'admin18', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(153, 'admin19', b'1', NULL, '$2a$10$oxnQFxPXiJLQB8s9E.SVVutd5xxcKS4y/VGscBxjI3lbbY7GkaZ8C', '101586', 'admin19', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(154, 'admin20', b'1', NULL, '$2a$10$NYDICwL6yuKyiw1erSwzmuNukaHXbHh/YSsVLuC5C3OB.PJhdkSH.', '101586', 'admin20', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(155, 'admin21', b'1', NULL, '$2a$10$QRtP.syaZv7jzU0LfHJvOeQphHyRpHXtdPXrmt4T1EdDIxlev9n.a', '101586', 'admin21', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(156, 'admin22', b'1', NULL, '$2a$10$BU36aTn1p1XMYi980Zn1o.DHJRJI45PjsdaqV.Ol2aIgSrxPeiPEm', '101586', 'admin22', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(157, 'admin23', b'1', NULL, '$2a$10$aIgKp.PvVngwHKG0z99Th.Hh11zWzF5yKpJPXdqLWUEa9oMCpfS7i', '101586', 'admin23', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(158, 'admin24', b'1', NULL, '$2a$10$rdWwzlT35MXXXw710r2khOEtIq7O0yBO9IA0ZtdWRVcK2ZK7.u8E2', '101586', 'admin24', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(159, 'admin25', b'1', NULL, '$2a$10$aslIjncfBQxxeFAeNtoyROdf04B6PDr8cG4swPIayEnJjEGZw.pMq', '101586', 'admin25', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(160, 'admin26', b'1', NULL, '$2a$10$lxCeO3yRDrpAV8FDWD1twux8GRtXwoag9hrNR7gWbCMKSfyhrQQ1K', '101586', 'admin26', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(161, 'admin27', b'1', NULL, '$2a$10$VY1.QE9ZG./d/Evroh.Fb.sjo4vDLw6dZ8GI4xGA2aA.jrnCZvctK', '101586', 'admin27', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(162, 'admin28', b'1', NULL, '$2a$10$I2JFO5wEJx3Ux5UjoMm8zuzAxH.kyvqm7Wz/SYif.SN/S8pp2G1XW', '101586', 'admin28', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(163, 'admin29', b'1', NULL, '$2a$10$n/mAIac4N7IgXC553CVKle6TCQFKaJhQXRDLYNk.tHW1tqkvvtIT2', '101586', 'admin29', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(164, 'admin30', b'1', NULL, '$2a$10$UbNbC9/zBZGRvGH8AQGqnuvfUJH4pgbY9adQw52/7u4zYxnqWWQFe', '101586', 'admin30', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(165, 'admin31', b'1', NULL, '$2a$10$DZVdABnMO.OJaXSzStWwLOoZXmdQ70Lgr8JEJEGQBDhbsUGWNZlLe', '101586', 'admin31', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(166, 'admin32', b'1', NULL, '$2a$10$EcBEARhFEKyQVguJrCA8r.QHtndDgIS2GQurhWN5asbheWxLSxzRy', '101586', 'admin32', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(167, 'admin33', b'1', NULL, '$2a$10$0rlwiTq8ZH4YEL/q9Of1q.v.nYAPUSuXXtiKf/yRburgLZUyy8U/m', '101586', 'admin33', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(168, 'admin34', b'1', NULL, '$2a$10$/LpHneuRB7utYkDNE3UsV./IpubkHZCoQsAKnjBs.vq5WBhLgxIdy', '101586', 'admin34', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(169, 'admin35', b'1', NULL, '$2a$10$nNEw8Lan2ZdAuMq9I3xxZu76bWnm5NAHunGyLuypymvpI4NTl3puC', '101586', 'admin35', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(170, 'admin36', b'1', NULL, '$2a$10$VhuwZtwmlzWAmrIMfkIHXu4CgZ0NnWTxJ/gQYatQYe1akL1VJ135.', '101586', 'admin36', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(171, 'admin37', b'1', NULL, '$2a$10$BT28.i5q/5uR7GlvVcduFeoZfazuJPZ3mgm7qU.Wu/lW7QVDfIf32', '101586', 'admin37', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(172, 'admin38', b'1', NULL, '$2a$10$mb.rMdMp5nohz0RDFVNo6e/X.HohGmBWeo79Ijx7USlR12Iq1Om9S', '101586', 'admin38', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(173, 'admin39', b'1', NULL, '$2a$10$bBWkKQAolI1WRPwl5qJJP.zsjoOC0a/gQqj1NXYscIdfdimsBsXoi', '101586', 'admin39', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(174, 'admin40', b'1', NULL, '$2a$10$oXMzEW08HfSgNrrGOTtXzeUeOxn15JncRSNu3yMGQm/mkdfKXswga', '101586', 'admin40', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(175, 'admin41', b'1', NULL, '$2a$10$j2MaINiM.lrxyV9upVcfa.OzP4rnODDlJk4KTvR3ZrIIjxkqpNCbq', '101586', 'admin41', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(176, 'admin42', b'1', NULL, '$2a$10$z1hLST42FxOXHw4xMPAQM.vx3FazU8wJkKho8O3iskiOfMpXXjYdK', '101586', 'admin42', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(177, 'admin43', b'1', NULL, '$2a$10$Xma9mosk70V5QXQqK9s.zOG/GSUju5ex9mo/ZUGeX8L9.quvSDHZ.', '101586', 'admin43', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(178, 'admin44', b'1', NULL, '$2a$10$p6otLc7LKccNrwdrYWqfE.NEstcM0XA.AVnlKUE9CUmXIi7aiarkm', '101586', 'admin44', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(179, 'admin45', b'1', NULL, '$2a$10$ifOqcwxkDbwTyU/6K475Eemj.BjX8nnZpiLWYsRYvfN7rGnGsmRoK', '101586', 'admin45', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(180, 'admin46', b'1', NULL, '$2a$10$5y.Z.pvOKUvSKJrTlAeAb.X.OID/Gu12sIwC9dVkoxRiL2GPCBE1O', '101586', 'admin46', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(181, 'admin47', b'1', NULL, '$2a$10$c.WZHd9XJW3cOA3pCNHaBOUgFXupz0hEjdJ.H04ZY/7hJ3YmtWXiC', '101586', 'admin47', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(182, 'admin48', b'1', NULL, '$2a$10$xV/yCRYpfsNVkksK5pqQhunne1m2ktgkZ9M8chIAa21fvfKyl.ffS', '101586', 'admin48', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(183, 'admin49', b'1', NULL, '$2a$10$mAQk26MFHzsuR2EYXUHAfOZUpaMTrR6b.4ilqNjYtVCGXCYM0b0Ru', '101586', 'admin49', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(184, 'admin50', b'1', NULL, '$2a$10$AML9vG4KYVmh8ekjqXQXkuvMU8R.cnk.DY6/ILFJdxEIhpESOvyX6', '101586', 'admin50', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(185, 'admin51', b'1', NULL, '$2a$10$VW/HSh6mIljljT5RJm4fRebLDiraEd0XX/Ie/ZIm3uyQodSp6Alwe', '101586', 'admin51', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(186, 'admin52', b'1', NULL, '$2a$10$E5IxBiCa4ZC7LMtMG4ypzOlb2efPpz.Hv4SLUpBdC8uJrr.9ChF5y', '101586', 'admin52', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(187, 'admin53', b'1', NULL, '$2a$10$o7my5wDOboWy7QhA4w/Q2u6es2FFEadNJhcNsBxv/BQ/uzEbsLuMO', '101586', 'admin53', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(188, 'admin54', b'1', NULL, '$2a$10$aeQGiyM9.hNWLa7P9QvkbObdCUORgVpkRUAPqVPLyD9YJUJ82aFze', '101586', 'admin54', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(189, 'admin55', b'1', NULL, '$2a$10$JdfX4Qg.P4ldDW.TM2iVN.9uzGtgRxGbO9aaaSu44fUT.NDQcZ5zy', '101586', 'admin55', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(190, 'admin56', b'1', NULL, '$2a$10$oMCkDcIXZeVuv41oSZ2Snu8WinI24cxQSsg59lodj9gwr2O8A47Yy', '101586', 'admin56', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(191, 'admin57', b'1', NULL, '$2a$10$W3GGknGu0qvRZ8K/YEEKEeJ7A5DWmQjjsH4jMGJYhgqM8mPVNZ7ii', '101586', 'admin57', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(192, 'admin58', b'1', NULL, '$2a$10$QhI8xvVCYU16CxXE6uR1D.sjOL5zd84pviawcwJYzKv/VvCNZx7dW', '101586', 'admin58', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(193, 'admin59', b'1', NULL, '$2a$10$UID9OFEAS89VyCSZF0sZvODLMBMkGSx2E7XbUkZDUrmK7BMqNXeKO', '101586', 'admin59', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(194, 'admin60', b'1', NULL, '$2a$10$CMTL2eqYCZAPo0re.ZW3..2KYe4LLBPaci1wh4EGtqkUrLD4S11TW', '101586', 'admin60', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(195, 'admin61', b'1', NULL, '$2a$10$zfrPItYnVQ9wmmCVOhrHh.IBoWTkEYmj.d7UL3wvfUh4BuwDtHbGa', '101586', 'admin61', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(196, 'admin62', b'1', NULL, '$2a$10$GSHlhzIXfRtk3GapndxcoeulW8IXCoICV7nw.BYbBXr6XqGaifiWe', '101586', 'admin62', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(197, 'admin63', b'1', NULL, '$2a$10$Ovba9Aeyl.AfOjGT0ooIzeUrhtGdbRgBlAEW/mIh.8sDJeNdYiH6a', '101586', 'admin63', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(198, 'admin64', b'1', NULL, '$2a$10$RLkomLPRb3dQ5F4kzECqPe9XS0k2vViZ8UQuZkft3FU4.ksoJMxNS', '101586', 'admin64', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(199, 'admin65', b'1', NULL, '$2a$10$goOYFVwSMjPVFi028N2g3.kd0kdBUQA.y3AFlfEdrvFNCstdNPqOW', '101586', 'admin65', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(200, 'admin66', b'1', NULL, '$2a$10$uLpgXkcLL1x38/A7vDnwB.mJHwd.W8K39aQGUt5RTnmWAg3gWnsli', '101586', 'admin66', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(201, 'admin67', b'1', NULL, '$2a$10$0SSeVLZteABXphnUb/85buuOm.LlGpv.QeIOT4ZTPd3l9ZhQiluu6', '101586', 'admin67', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(202, 'admin68', b'1', NULL, '$2a$10$22VchEFdEh5jpG91eeTzde.DXHcsNEZgMsvv4MhQHGT7uA5DxpKHa', '101586', 'admin68', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(203, 'admin69', b'1', NULL, '$2a$10$herhvyKd3nHT24B61M9BBewagYstuKFFghKNGYSGMLR/LE4VzJ2Ne', '101586', 'admin69', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(204, 'admin70', b'1', NULL, '$2a$10$CqHfUnnpk8FhDdVD2cPPmOULPnbxUeeIArRZgnLCy9nfP4tKebwQS', '101586', 'admin70', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(205, 'admin71', b'1', NULL, '$2a$10$HLUzYg662Ol7niDiQqOdN.eM.bNomK6DCvZTIVCXy4WoTLlXt47ta', '101586', 'admin71', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(206, 'admin72', b'1', NULL, '$2a$10$MxV6GxBvsLQBaZ3ibHVnUuF5v.8Yur7ZHkvtlZ3owpkpSJ2.FnjzS', '101586', 'admin72', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(207, 'admin73', b'1', NULL, '$2a$10$oupFlSvuJVkEdH8r.OlqSuOhuSEp.omJItTeG1riqhfiD3EjyjkAS', '101586', 'admin73', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(208, 'admin74', b'1', NULL, '$2a$10$9VIxcQcOVfm6AP32QE.T.uSLD8tDkt.SO3JYLQZ3Vi/M425c9JmTe', '101586', 'admin74', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(209, 'admin75', b'1', NULL, '$2a$10$sAWB4jcylOsnUEDg.NZ3wO6.A2lv4oJ96KkZfFPbYtM08xeCZuaeW', '101586', 'admin75', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(210, 'admin76', b'1', NULL, '$2a$10$dEwoVIYsMnkgkN3jardw5.np.1JQQaJCeUuKwIT564dK48LtOCpyi', '101586', 'admin76', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(211, 'admin77', b'1', NULL, '$2a$10$Cb1RTkQZTQS5DTxYiu3wOeMkUlt.EGGONt74IipTXOd6rA.btpys2', '101586', 'admin77', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(212, 'admin78', b'1', NULL, '$2a$10$SGEewg6atW/UjpDi2VLcLeESJigueR70i/rD5HPw5KN47v5GgVt.i', '101586', 'admin78', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(213, 'admin79', b'1', NULL, '$2a$10$3RMJZdQ/ETIHvfqWa/CMMOvwg1A7IHQkd1NfUfl2qddEbuv9Afj0a', '101586', 'admin79', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(214, 'admin80', b'1', NULL, '$2a$10$RcrKe/WS92w7Sc91nW9gcuc3wU0Q/4C9M/vf5E.f5x2XC54ysu1kG', '101586', 'admin80', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(215, 'admin81', b'1', NULL, '$2a$10$TwGIEm.bDS1VpYD.fLwJ1.OvIlTkj2Ygb21dl1OISXYh0MFqfYXNC', '101586', 'admin81', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(216, 'admin82', b'1', NULL, '$2a$10$TnnmVrdwncIk32UCSE8hYul3LHQWrGkD1pfHtVklnN9PWDhLwlis2', '101586', 'admin82', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(217, 'admin83', b'1', NULL, '$2a$10$EqaOYvtFExMMycnA9dQQDeD0ABI1shU/BfpYlITBYgRL/3A2zIoI2', '101586', 'admin83', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(218, 'admin84', b'1', NULL, '$2a$10$dtOFXbHAAJDsgA67w3V4UepSGNol0pYAcBDX0VBUD8WWlWL0CQZzG', '101586', 'admin84', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(219, 'admin85', b'1', NULL, '$2a$10$vHyaiOJht4QoSbl.yJXi5uOxsleZOC9/oNgC9JEuUvTQ2yv8oAqaq', '101586', 'admin85', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(220, 'admin86', b'1', NULL, '$2a$10$J7oWzz84DmZE0TidkR1QHOJuUOdB9q/eno4UClbpP/cdzzLtxK8ai', '101586', 'admin86', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(221, 'admin87', b'1', NULL, '$2a$10$D4dOfhLzGEfV/GRCK9FTN.cMaF/L8PvVQzfl0qKtQlFUFy3jXiTI.', '101586', 'admin87', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(222, 'admin88', b'1', NULL, '$2a$10$OPh7YqawnYXBUbuSZCqTq.M7G7HQIfrUj1u1TxDZWPRX3H.juaQoW', '101586', 'admin88', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(223, 'admin89', b'1', NULL, '$2a$10$2od7BHWVZeWLSf2jtzt88eqo.koFasm4y4vZ1/b1uvT70/mVME5yq', '101586', 'admin89', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(224, 'admin90', b'1', NULL, '$2a$10$.i6xkomv1WC3tzBMJqHE6.nG/cHCC.SSgrfpmtV5BxpR6Mav7sCkC', '101586', 'admin90', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(225, 'admin91', b'1', NULL, '$2a$10$e/CnlqVHFbmBBKztECkWF.Yx4r6n5ATdk1BZJo7n4KQc2ky0RKVQ.', '101586', 'admin91', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(226, 'admin92', b'1', NULL, '$2a$10$ddvigobP1oqu4OOEKlA1s.9h5JMdBGsldsjLVp/ZfMI1whdkctwDa', '101586', 'admin92', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(227, 'admin93', b'1', NULL, '$2a$10$0igmfJtgF0d46NNDGRnVT.tqzfSTNRAo9z5YgJ3XggJ2oPYMEYPpG', '101586', 'admin93', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(228, 'admin94', b'1', NULL, '$2a$10$YIlad0kPxGaXhPZBcb32fOxu6Eq3VyBIozVSWPw5qvRNYfnHNjLwC', '101586', 'admin94', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(229, 'admin95', b'1', NULL, '$2a$10$BgFsKR26gJciREvP0isSb.C3SFJ1EKOfBep6FTZSDZdeqzkG.n02a', '101586', 'admin95', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(230, 'admin96', b'1', NULL, '$2a$10$8Q.YB0MwfKn5XGfzprac3.8/4l8o9BC3QEfUFCpDD91CSNZ.3k8ny', '101586', 'admin96', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(231, 'admin97', b'1', NULL, '$2a$10$eCEuwx4jsCVG6Aeya6FvgORvRlGpzewkIdHZdpZqjOk3qvENDzCMK', '101586', 'admin97', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(232, 'admin98', b'1', NULL, '$2a$10$.Bs/0i8J1ySZvqcJw39X2O95tHbV3.Jcves3sTBviftGZu9O0T4Pe', '101586', 'admin98', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(233, 'admin99', b'1', NULL, '$2a$10$klZl9vdzxOrGaFC1hwAYqeCb9LeHNR/04vIqefxtodKYE..gbDaTG', '101586', 'admin99', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(234, 'admin100', b'1', NULL, '$2a$10$wRxaE0RWgH0y3jsbabLtiOu0qYU5CqXhlpy3odzsyAPHwy6AcCpLK', '101586', 'admin100', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(235, 'admin1150', b'1', NULL, '$2a$10$fCuybbsbnkIBjnkD2fXKPu/bisn9JFhw1VEM9nkoDK0i/pFgI0.fi', '101586', 'admin1150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(236, 'admin2150', b'1', NULL, '$2a$10$O00GnP8GanJvu3GG2lOkyOC11Qvk1QsOfMXeOA6qbHDu0DCAts2Cq', '101586', 'admin2150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(237, 'admin3150', b'1', NULL, '$2a$10$bcJM9Hl8FluN/JkzM6UV2uhX9p5Pqm6RTSSRaDxng4eVqcGrvRx7e', '101586', 'admin3150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(238, 'admin4150', b'1', NULL, '$2a$10$TvmY1mEFANfb7vRr5yrQNu/Dyf9e9qUV8zgdYigOrXfKfYiTkcbLe', '101586', 'admin4150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(239, 'admin5150', b'1', NULL, '$2a$10$fVJE0PKsHz2hK2DoofVvT.J2W8Xzp3pmpmpzwk14iMnWL42mHRRTC', '101586', 'admin5150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(240, 'admin6150', b'1', NULL, '$2a$10$mE9EXwshDVqJSJYVuakpZ.OX904T2TagE5ZRrv9AMf.GOWBNNhskq', '101586', 'admin6150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(241, 'admin7150', b'1', NULL, '$2a$10$UZAskjB/MQDzDQ9zp6Za5OIO27xwfLy3JPbh25pvsuOA4gEEIRrrS', '101586', 'admin7150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(242, 'admin8150', b'1', NULL, '$2a$10$IUnpwm01UkPJJyNls2V9ZO9LppdBuFhrDvkWKD0AvUu908bCxiVW6', '101586', 'admin8150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(243, 'admin9150', b'1', NULL, '$2a$10$lw2PiF0G6EI44Lt2oJzXZOo2.D4AKtiEct3dsVbMMCEVgPgJ9a6jW', '101586', 'admin9150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(244, 'admin10150', b'1', NULL, '$2a$10$K7h41aID92ex1MXdQ1X.8efveoAswHkzMxLz5/aVxxZJsdH3Lgdh.', '101586', 'admin10150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(245, 'admin11150', b'1', NULL, '$2a$10$8VZ/NwN6Enu1scHhnKg4bOlr9vCA2Yn5pbUbxqDugYiXsdiRWDF06', '101586', 'admin11150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(246, 'admin12150', b'1', NULL, '$2a$10$H1.p.opNspJqWo.ZAMTXIe2PaDLsA8i9lJ.iyuGu2pTWdLHeEUDxq', '101586', 'admin12150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(247, 'admin13150', b'1', NULL, '$2a$10$NFqTiA23GT2UcmPyNOL7nOBEqlKgrc3t9WA2bJhximTwQ6tTLUCNS', '101586', 'admin13150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(248, 'admin14150', b'1', NULL, '$2a$10$Vasa.QYrBAzCdEUAmNl37OGRQ2cMn/ty7s35AtxF3vghV4YBZGNee', '101586', 'admin14150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(249, 'admin15150', b'1', NULL, '$2a$10$aU9YZ1Ic8qTKWIfG3GiXs.Z/gRc8fNMlyVPs73LHswQgIFrD/jc6W', '101586', 'admin15150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(250, 'admin16150', b'1', NULL, '$2a$10$p578b3MFMtMNOF3AGEfYq.sgq3yngIDSt9BFhx1wnWTS/cI0BE8/2', '101586', 'admin16150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(251, 'admin17150', b'1', NULL, '$2a$10$8Ne20jqPn5bLjqHeI7FDjeSlcZ8mVwCqNLv6jSDAsNVIAG05DyNNO', '101586', 'admin17150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(252, 'admin18150', b'1', NULL, '$2a$10$6gvA7ad4ayoEY0yotBlQyeG1nH6iafwfwWUhSB7MfrUKxJPjFmuk2', '101586', 'admin18150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(253, 'admin19150', b'1', NULL, '$2a$10$lza90FrjA0icar6xNwYzkuiZV22WhDaPMg/Kk1INnPr98dIhiYfSm', '101586', 'admin19150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(254, 'admin20150', b'1', NULL, '$2a$10$d8DuClu.j7FNjPsrnNsP.ukXSq.wZKYFiQTC3/l0/pudEM9Jp6i06', '101586', 'admin20150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(255, 'admin21150', b'1', NULL, '$2a$10$Y0LkuwKplfduvcyRTcmcJe.KRAsiIhGNWL3a6yIzQJcR5rDlnxWG2', '101586', 'admin21150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(256, 'admin22150', b'1', NULL, '$2a$10$dAkZwiSjBHXNs0Y.eMN76O/abGgfPse5dHeR..IfE7rUAkQr5YhEe', '101586', 'admin22150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(257, 'admin23150', b'1', NULL, '$2a$10$QhEeuw/dEBmp/GVMSqEZX..3t2pZu/bZP4Yrqi4mbyjJ6NvnkfDy.', '101586', 'admin23150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(258, 'admin24150', b'1', NULL, '$2a$10$zUzbYZ2kCsfZXDPNdaM80uBadDNxiBJHtclbFFqg8wegZ07xMadwi', '101586', 'admin24150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(259, 'admin25150', b'1', NULL, '$2a$10$8Dw9P.FX10vFnVWwmhG8GehZqA7CokBNJc31NSYfROv1XJSzsL2a.', '101586', 'admin25150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(260, 'admin26150', b'1', NULL, '$2a$10$ITu/z20RjJad.etxpYhhA.ToGzfsDaHtJYQVlSZHsLObUNx.n/pMm', '101586', 'admin26150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(261, 'admin27150', b'1', NULL, '$2a$10$MnjPOCZnF8wqRBz9g3C24.I82ePpNjy4Aw9qOWgI5z0cUzR8hPzQq', '101586', 'admin27150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(262, 'admin28150', b'1', NULL, '$2a$10$CswvVwlcn1W80FxXfFQ5eOUvKwoKHz4Yt66JvUb../EOOWkbNkfoC', '101586', 'admin28150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(263, 'admin29150', b'1', NULL, '$2a$10$.J8C8j6/SP3DLWJ.rsYPF.J3Oe6C3H5mLWzkWzKWrQSjrw5m0/Biq', '101586', 'admin29150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(264, 'admin30150', b'1', NULL, '$2a$10$c5JbaCCklx4orVIR6KzDW.X3YXuzvmrGFnnncU4TYgk1XhvdegTqa', '101586', 'admin30150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(265, 'admin31150', b'1', NULL, '$2a$10$IGVrq3h55Tflv9W0T7cEp.5UsSjlJ.PxLyELcOVBWDBbVzf6oXXh6', '101586', 'admin31150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(266, 'admin32150', b'1', NULL, '$2a$10$rFuwO9xLs5gBnhb/xLh8uua56/VZfovRtjrhUxgPVrUJfsXfojIZe', '101586', 'admin32150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(267, 'admin33150', b'1', NULL, '$2a$10$XiLNCrg.tcCXmJRBYTSI2uxMdoDh93J0F3IyPp2KxIsTMPDJRNtIC', '101586', 'admin33150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(268, 'admin34150', b'1', NULL, '$2a$10$ickq55hXgoYqcz1gYp0h5ubcpW5jeoqAtx36XbcJmZw/pH41Q/jUG', '101586', 'admin34150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(269, 'admin35150', b'1', NULL, '$2a$10$UNXKN2VMWD2POKINSaf9p.x0wNzCRftvWLA2.ajEldhBlfwUZP1d.', '101586', 'admin35150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(270, 'admin36150', b'1', NULL, '$2a$10$FB.w0PnGZf6fyfwVt0/7sOnShME8xyM09dhJ2eNYbv2j.vwbWuloi', '101586', 'admin36150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(271, 'admin37150', b'1', NULL, '$2a$10$By7tkjwZ6wMnxm3TJVrque2vXYsKzCluW6BsED.fgN2bJdl.xGI52', '101586', 'admin37150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(272, 'admin38150', b'1', NULL, '$2a$10$4qhu3eZXpMynGtVHUozHy.eq5eXdmdrH7XT1n8/BWVs0m5nCdtm4C', '101586', 'admin38150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(273, 'admin39150', b'1', NULL, '$2a$10$CNPTdw3XXrxpBknC9CWvc.oCahLjjd0449h2gyECdU4B2t9BYXVfS', '101586', 'admin39150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(274, 'admin40150', b'1', NULL, '$2a$10$PVAvzY7H.r6c6N3PWce6yOl/X7dzEUEWGqkrm2sBckAKnlv94w2Ry', '101586', 'admin40150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(275, 'admin41150', b'1', NULL, '$2a$10$zMXjuSgpZHCCbbrNQYvm9OC0578eHub64UinJ5re48Ki0gXptdDaC', '101586', 'admin41150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(276, 'admin42150', b'1', NULL, '$2a$10$cldvwFm6vXvTc5yoERjuZeEtz9TOqr3ya36qU5KeUYHPfcct0o0yW', '101586', 'admin42150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(277, 'admin43150', b'1', NULL, '$2a$10$N295TtGuKelIowYRATNoGOi49mGIWLWwA1DqGUWWtYBGoreHGaOi.', '101586', 'admin43150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(278, 'admin44150', b'1', NULL, '$2a$10$OjXZfZ06w4FbBRV/2KUss.D0v2Ai.bCZlwMGnLjCPe.cYIpyxqVAS', '101586', 'admin44150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(279, 'admin45150', b'1', NULL, '$2a$10$CNgURPGB/mRQlzmd2VXMEeeLAcqvj/BYOBat2tgCJ3V1aPhw.U8mW', '101586', 'admin45150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(280, 'admin46150', b'1', NULL, '$2a$10$HxApc16IZzp671uMKhbMS.uiyb.tpTo5WfzSIwc7LJWtqaENEtdDa', '101586', 'admin46150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(281, 'admin47150', b'1', NULL, '$2a$10$qrhRZ1tzncrEQZ3UhcrjueDYbQjglglkiRxsQarB7kadXNzCe.7qa', '101586', 'admin47150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(282, 'admin48150', b'1', NULL, '$2a$10$tjLqD5ViqYYm.ERHmBLSRe2iQXoKFMa/zcCV.K1QMj42iMTXgLXsq', '101586', 'admin48150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(283, 'admin49150', b'1', NULL, '$2a$10$5ctFAePv2v4f5IEGRKkFduir/NgFmVTiyAAvVWeBKwmfRvC4Mk6Dq', '101586', 'admin49150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(284, 'admin50150', b'1', NULL, '$2a$10$g2jCZ2LGAmvDsIuShdW8IuVqALFQJvCosceOjrqm4F7wqrYM3rxuG', '101586', 'admin50150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(285, 'admin51150', b'1', NULL, '$2a$10$grf5kqJ3Lm1gQQFviitvM.P8KxbwspHmMkIYHxKRYz.Y9NLPGvn0u', '101586', 'admin51150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(286, 'admin52150', b'1', NULL, '$2a$10$QpG.9kkhRbs5dEkrVJ5t1uFw8MrdJ7xyhbKc5kiFxbBZ7T5SMvBqa', '101586', 'admin52150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(287, 'admin53150', b'1', NULL, '$2a$10$8eSo2gJeMD.fINUiVrdnxu2pktJJpLHF48k9FRurvtKzQdG.0.UvW', '101586', 'admin53150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(288, 'admin54150', b'1', NULL, '$2a$10$6JfVEDpGMRNwE.GtNmJ3FO.Gmk7DKx84/UO5rsKZk6MX2IxEcmU/u', '101586', 'admin54150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(289, 'admin55150', b'1', NULL, '$2a$10$uU43dEIpDVwSyjPNz0FNcOnApc93rW3lwg55FILk0/Tsy6qMWrLNq', '101586', 'admin55150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(290, 'admin56150', b'1', NULL, '$2a$10$P.smunX9Q2xqpE.OK.Rb/.fDwWHMcJ4TZNboT/GGrmpYH8nbhutVG', '101586', 'admin56150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(291, 'admin57150', b'1', NULL, '$2a$10$GssCYKIvOdteJbXXDgF6geTVVHhQH6WHKL1oW/1H/FZPPCx.TJJtu', '101586', 'admin57150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(292, 'admin58150', b'1', NULL, '$2a$10$XvVvgTK8DdkEENNbEQcg4Of4RN6OVj4boWNMgnfEDA4hXOJcqSXJK', '101586', 'admin58150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(293, 'admin59150', b'1', NULL, '$2a$10$AB3RbWEbwXz0F3gqaasNou4oRfbr2wbfSJmBhV7V1VV.ed2JFIV0K', '101586', 'admin59150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(294, 'admin60150', b'1', NULL, '$2a$10$0NWCreGsdRpWoeQN9Nb4/uwVICsyb5Q2Na5egsZE1oJhypFKKH4oa', '101586', 'admin60150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(295, 'admin61150', b'1', NULL, '$2a$10$tEs4M5Us2iwhS48w0Jvu0uMU3E7vMySZYI5DJuEsTM/mgBFzSqKP2', '101586', 'admin61150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(296, 'admin62150', b'1', NULL, '$2a$10$pW/7xvGP86m3J8zRQhhksefWhHJN2UCl2LS1Wpc3aF4jmzHp1OBG6', '101586', 'admin62150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(297, 'admin63150', b'1', NULL, '$2a$10$I/oPnvPZFmL23EzRPvGB..I3PLbSvU2LumA6UR1h.mWm7Ksbq6B.W', '101586', 'admin63150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(298, 'admin64150', b'1', NULL, '$2a$10$tn.1phiGZTW3lwfiBhlpEODLd.tG31o8q8tmQb4Ts0DxWi8wKdr72', '101586', 'admin64150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(299, 'admin65150', b'1', NULL, '$2a$10$mZdBXNayElo5Bliyd0/7Qe2FLSvOCL6nAs7WOS.d15fmnZwH0AYvS', '101586', 'admin65150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(300, 'admin66150', b'1', NULL, '$2a$10$pFzHPPTot7c7W.0bHdJhhO5MtuxqGtuEjBlj1nEZXpgr6f2.BewYC', '101586', 'admin66150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(301, 'admin67150', b'1', NULL, '$2a$10$Y/b2QTzKmKfs5F5OxJKAKet75OWPZJyDuZ89fe4NES13QZzMULWMS', '101586', 'admin67150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(302, 'admin68150', b'1', NULL, '$2a$10$6Fql7ZlDvoNs8IJV5m7cKONqPZ.wHLA8sPNXMzb8p40ZZvOPzvhN6', '101586', 'admin68150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(303, 'admin69150', b'1', NULL, '$2a$10$f0F2MYvtWzfRZKHOuCgqzOH3Hg65.pPqAtv7KNOIW1v7X8UE09hAW', '101586', 'admin69150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(304, 'admin70150', b'1', NULL, '$2a$10$6qTsP3mphF80QIeLPFBbp.HxzLGFKKiEot0hzwy1695BnG5PI5Rx2', '101586', 'admin70150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(305, 'admin71150', b'1', NULL, '$2a$10$ualEewdnnO/aaopapi4G.Oq60nkYda95h5iqpwDeoIYLZxET7piZa', '101586', 'admin71150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(306, 'admin72150', b'1', NULL, '$2a$10$fw2CHjD9G2lSsYXsd7fIQuQ1hqN4FRMDvQWcnp1UqvYnNKpNyiOWq', '101586', 'admin72150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(307, 'admin73150', b'1', NULL, '$2a$10$F4al2HBHogU6z1JQiVQVIOk8wIjmNBrJ1DOzwajZ7yAKBRX8O3Swy', '101586', 'admin73150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(308, 'admin74150', b'1', NULL, '$2a$10$5lilAjDP7L8lxEQ198BVrOoIve3J6nTu0W/e7cMOwVak3mMoEsnO.', '101586', 'admin74150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(309, 'admin75150', b'1', NULL, '$2a$10$gj6nZ6ljTkIJEKE2suiGtuSNwsK87wk97vKNXXWcG55DYsIiIOKFK', '101586', 'admin75150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(310, 'admin76150', b'1', NULL, '$2a$10$GO9us3tEyYR42KQMcFKPT.gxX1w3W1VSAnIohkYPRzlcN//T8pQ3y', '101586', 'admin76150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(311, 'admin77150', b'1', NULL, '$2a$10$9QqYD3ZEMLNX/ftpn.jt9etgnZHhKrrnnYeYOO2vZfFbg3RVqmoe2', '101586', 'admin77150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(312, 'admin78150', b'1', NULL, '$2a$10$my2fvghbKOAaixgPs5nwz.2TxTjc9GVGA0ivBIZIBYuqB06KbrxCK', '101586', 'admin78150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(313, 'admin79150', b'1', NULL, '$2a$10$FqKRy/xdmAJqIQ5alOhGCuj3TRDRsUGbiwCGfF9/Cq9GGSucwH8cm', '101586', 'admin79150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(314, 'admin80150', b'1', NULL, '$2a$10$FL7vpDykgxtPtEHA4xH7Z.ik3pHG7CiPcluENK4S8GDiUtBYM1yzC', '101586', 'admin80150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(315, 'admin81150', b'1', NULL, '$2a$10$DgxRw3UyArQrHSnHrVEs7ujZeh57sSz12fmUNNZPXrt9ma/OLJ9Su', '101586', 'admin81150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(316, 'admin82150', b'1', NULL, '$2a$10$7keqggipZTpMAXkughVVOOYBdLMCyhCe//dGaw13Rksde7m3Atb4O', '101586', 'admin82150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(317, 'admin83150', b'1', NULL, '$2a$10$xHB0kw1F37/3.6WfoUw/SOqRiDZJvXSikkrvyAFHDQ8qHxhp2wvjW', '101586', 'admin83150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(318, 'admin84150', b'1', NULL, '$2a$10$xzuUAbbRflPj8H1dcy7Xm.hncvk5MFRsZvqw9OE1UXSc7iPvJrEyS', '101586', 'admin84150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(319, 'admin85150', b'1', NULL, '$2a$10$9.Mh4/cnNMpG4LA0slz5x.5CeVgdQH9Pub5a9vqNUpiIguKqA2B8e', '101586', 'admin85150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(320, 'admin86150', b'1', NULL, '$2a$10$LN75ZAGGlKSiSjI7aFVsKe0aavMzOlZ5xkkBvaNfVl/jTzBWPXYx2', '101586', 'admin86150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(321, 'admin87150', b'1', NULL, '$2a$10$aKESDePU2gTHd9X6XC10SOOZG7J645cuUpiSAfEfiCuUN5JOwPC1O', '101586', 'admin87150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(322, 'admin88150', b'1', NULL, '$2a$10$589FYCrrMn4jLbB6Vzex7uSZION40QjowB5VSn3POAPdwaPMwmTY.', '101586', 'admin88150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(323, 'admin89150', b'1', NULL, '$2a$10$7CtHZWTs5S7pdPzJ8IZdlejGIEIMgrnAByGof45hex7sIDf7c/7Pm', '101586', 'admin89150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(324, 'admin90150', b'1', NULL, '$2a$10$f.5WxdebR6SKh0W3kthXZ.SCom.1tuc3C181Ak0dAPndQV4dL4bTK', '101586', 'admin90150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(325, 'admin91150', b'1', NULL, '$2a$10$izOmCAnFLL2z/SCn/WM1V.MXYAKId5CElxnbemNGXGUSyf9QMJxi2', '101586', 'admin91150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(326, 'admin92150', b'1', NULL, '$2a$10$vJRJmL/b3P8IPozwzbxSXeRlyVR41Gm2PTDRTKlQOB07D1DejVRGu', '101586', 'admin92150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(327, 'admin93150', b'1', NULL, '$2a$10$05dMhvVSud93Isjwwfn6uu.y6eEwz4HmETT0DGDvHRX7HeHJ01c/u', '101586', 'admin93150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(328, 'admin94150', b'1', NULL, '$2a$10$MNbdCBf5qKDYZnt1MXi1Su9aguhqWuEj/SSyPtj.sYTDsRyeL/nRK', '101586', 'admin94150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(329, 'admin95150', b'1', NULL, '$2a$10$Oln.0ZfQwDLEyZWTTHNb9.NOngb.rJpZgOi8z/BumBdpH7Ne6dQi.', '101586', 'admin95150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(330, 'admin96150', b'1', NULL, '$2a$10$mHN/0LnjU8pAplI3chea5.JY2gwSMkQVYPrIdyczf1tjL7whAWDlm', '101586', 'admin96150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(331, 'admin97150', b'1', NULL, '$2a$10$kCRMN2faxA7VwwtYvVVZ2.aHUiK9gS1eG.PFkhC55y6UFvN0eilnq', '101586', 'admin97150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(332, 'admin98150', b'1', NULL, '$2a$10$exoeHQ1J1RNQD0N23NG4e.EE0e8XuURIm7vAuJn.pTR6nTgZZtd/S', '101586', 'admin98150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(333, 'admin99150', b'1', NULL, '$2a$10$y8K7IzHQUD5U/yJBraQyUue/FGtvckwv6kTPvYDkJuX7/dY1LE2ea', '101586', 'admin99150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(334, 'admin100150', b'1', NULL, '$2a$10$i.S/M4buiS5XRLgNAjcsHOAZcNtBQzbhP8Nsn/isFO21U9GOiHb1q', '101586', 'admin100150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(335, 'admin101150', b'1', NULL, '$2a$10$amuIRgj9DkAJ3uOIGXqaZ.kEPAIyWtnLx/CHh05O8nBJOnbq/Wm8G', '101586', 'admin101150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(336, 'admin102150', b'1', NULL, '$2a$10$.7sLaUmL2shJ4LVoMzzJFuood/ZxX4bul7tdk8dQKja9vhke11MQK', '101586', 'admin102150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(337, 'admin103150', b'1', NULL, '$2a$10$j4RitnIOypQb1aOTfB6kAO3wejo75XlUy.snQRYihrhxsiVhcMjoq', '101586', 'admin103150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');
INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(338, 'admin104150', b'1', NULL, '$2a$10$sZF7EFSs/ZK4eyJOkGJRp.FgmHt6rxwJZq.Tj6l0AbEinENvhx8xq', '101586', 'admin104150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(339, 'admin105150', b'1', NULL, '$2a$10$LLRQuKKNlkJuzFrikyrCzeX8CdY3vqIyeVyxN0ULHRF2VxbONRLoC', '101586', 'admin105150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(340, 'admin106150', b'1', NULL, '$2a$10$sWDR4wmUkR5DZEG9LLieFeR.kQSm4Pgb2hVp/bSZkaTwcoI/fSQ36', '101586', 'admin106150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(341, 'admin107150', b'1', NULL, '$2a$10$x1/nUlB2O0qGRfOAECRy4uUnPfrIVa.wwAGHjW0V12ddW8JnA.9Ca', '101586', 'admin107150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(342, 'admin108150', b'1', NULL, '$2a$10$JSs2Y1btm0CDC4YvM/HgnuZ46xC3u6JG6WVeOCStUJrmEGG/.JT0a', '101586', 'admin108150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(343, 'admin109150', b'1', NULL, '$2a$10$pa1nlu.9uGmLBoyfTe1ExeA0zyNbVyFAIOMmNBcXFwq8WCH7ae0li', '101586', 'admin109150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(344, 'admin110150', b'1', NULL, '$2a$10$jXYm//Djk30MNiGyZDeRM.ohlD.rxMhvkCSavHthr5KKrqx0VsXIS', '101586', 'admin110150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(345, 'admin111150', b'1', NULL, '$2a$10$1Ko383HUn21l2v4pOm3OneULoItxAE6HH15MczfuEe1d50RxWh.x2', '101586', 'admin111150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(346, 'admin112150', b'1', NULL, '$2a$10$CTZL.DnAxvIhJ5EcilCGceJOGOQMJKfI9VNmelXVkhvtuWn4iD0e2', '101586', 'admin112150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(347, 'admin113150', b'1', NULL, '$2a$10$AlKKU4ZYKEN/Brw1NXpdmeK7p7J.OQgQB7G16iQBvs3TXkGutc.qK', '101586', 'admin113150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(348, 'admin114150', b'1', NULL, '$2a$10$gkBapasqXeGjBu1vUKn9iObKYuf8AqpGGXXq3ZPBXEkH8qkoRjgWi', '101586', 'admin114150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(349, 'admin115150', b'1', NULL, '$2a$10$mNcJueTzluRdvBKNz82ZvOETgcykfSkaVMpfybJ/6Fw38Cgs.5UtS', '101586', 'admin115150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(350, 'admin116150', b'1', NULL, '$2a$10$R6174gQhO5r1cYll9zwRhODG1fXPCxxL.5jYJcb.vr7VcA/onR4iS', '101586', 'admin116150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(351, 'admin117150', b'1', NULL, '$2a$10$YT8TmKWNuk.ELJepbBEIqesFZUzNheRdrYkc.fuC0P6tZA6EE7rdG', '101586', 'admin117150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(352, 'admin118150', b'1', NULL, '$2a$10$zdecIDDMLEXaSTTYumir4eH0x6gb0OxTYlBInniovUs7kJb11EsAm', '101586', 'admin118150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(353, 'admin119150', b'1', NULL, '$2a$10$FIJ2vdMB0d28pufd1pwz3./xgwe0jf1ttpH8YUqSOJbQJQkqGRTqO', '101586', 'admin119150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(354, 'admin120150', b'1', NULL, '$2a$10$89pBhGkIGIE4/08Gl6VNL.xn1/O0fFag7kOk3ChlTqJQA.rDuBacy', '101586', 'admin120150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(355, 'admin121150', b'1', NULL, '$2a$10$wNKqgDmyfLsgyg1bPgQfneKRLZQubUfSduqTQhvxyZU9cO.CyZ/kC', '101586', 'admin121150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(356, 'admin122150', b'1', NULL, '$2a$10$CMZ8PxIavyEnB5qRGWiyU.Nhc6d34KMhlWGg88gbMf3FfkExc4ZPu', '101586', 'admin122150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(357, 'admin123150', b'1', NULL, '$2a$10$SsjFeXntcr075PnwLIdBjeTvXL/booIJaD4i5VCiTdldTfMzv9hRG', '101586', 'admin123150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(358, 'admin124150', b'1', NULL, '$2a$10$SPJZIH/GKSTj0joP/sGrEeBD522KJ4GL1WX0h9nl1bPwYomzja1/u', '101586', 'admin124150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(359, 'admin125150', b'1', NULL, '$2a$10$.314tpx.7IziFsHIDFEsx.F.GSuc/cJSFQVwPP/i6G84RTY8xrila', '101586', 'admin125150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(360, 'admin126150', b'1', NULL, '$2a$10$MWlLwIqY.PC01WWGfStgIu8lxVEpC5aMp.HAhVphg2kWc/tTAWbw.', '101586', 'admin126150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(361, 'admin127150', b'1', NULL, '$2a$10$q.dsge8MyEV3Pw3wP2EEl.3m496T29ROjmjdlyhmhwmSi0BZyDAOW', '101586', 'admin127150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(362, 'admin128150', b'1', NULL, '$2a$10$1HQLo83kmhD..pLpBu8eGeklW3/Ttak64iXt2x3dBalP95bxvuSJS', '101586', 'admin128150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(363, 'admin129150', b'1', NULL, '$2a$10$DD/paRVQUXjNtsVg3ZIQdeNtQk1B45LLm8Lpv.Eys6oFMxHrxA5nC', '101586', 'admin129150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(364, 'admin130150', b'1', NULL, '$2a$10$87ZsK4Es0CqvTJDY5oRko.AkUTzjDHqI5iW.ib4FqkoMTF8nmV3z2', '101586', 'admin130150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(365, 'admin131150', b'1', NULL, '$2a$10$/.Zq9zPIqo7WweTTdDlIIOM9rZVZOt2G1gU5M6pssqe1WOS1ZDnDW', '101586', 'admin131150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(366, 'admin132150', b'1', NULL, '$2a$10$udlY6zyZq6KA1uugKBgIqeOnN51tuQqsMBHiPaW.UN4fMN6tgRSu6', '101586', 'admin132150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(367, 'admin133150', b'1', NULL, '$2a$10$TrkKbpIZUHtiHw/Ka57bQODOvafbkvENWvqZa4xEfSgK.71QyOpTq', '101586', 'admin133150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(368, 'admin134150', b'1', NULL, '$2a$10$.JlziDQW5JMXLAy4CWHLfOHL4ojlBo3ydEUF8sVfG1FAPGmGWYjlC', '101586', 'admin134150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(369, 'admin135150', b'1', NULL, '$2a$10$f6D8Jl2xx/t6HXukHqduoeRauK0AJQVv0xNRfFETYGfsxsdPGM3p2', '101586', 'admin135150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(370, 'admin136150', b'1', NULL, '$2a$10$oQbxiWRm8KzKjWsqwpCu/uDOefNrF8Iq1jgow0LDVO3fkjfdotPge', '101586', 'admin136150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(371, 'admin137150', b'1', NULL, '$2a$10$BJedzexmae82E9wgB81qVuEcnk4BwcehxkzVFoWBOcp5.pdhV5pf2', '101586', 'admin137150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(372, 'admin138150', b'1', NULL, '$2a$10$O.oiozzMQ7hkxmfGRUgMa.Rgi1Xj61YoVME4gjrLH41/l1QxVJIvW', '101586', 'admin138150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(373, 'admin139150', b'1', NULL, '$2a$10$xjGAY2MKxId3ktCOh/yueuvVdZRlnX8FIhnurrq86PKLCChj5c7.O', '101586', 'admin139150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(374, 'admin140150', b'1', NULL, '$2a$10$HA2JD6QXw7Wv2WTlcjatW.TM/CNwCRpzbdvbsBGtVXWtGleaBcXd.', '101586', 'admin140150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(375, 'admin141150', b'1', NULL, '$2a$10$voxdYRdLVdOGLxSSQM7xV.iy3L18MKyWOrYmioQ7IcuxByXMy0B1u', '101586', 'admin141150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(376, 'admin142150', b'1', NULL, '$2a$10$fq5IMYvdfQ2JHdKtXTFeWemQpEQ3wRzXhoW6ZOCRl6cHhyAaVoTX.', '101586', 'admin142150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(377, 'admin143150', b'1', NULL, '$2a$10$cl5OBCy16dCq.WFuSBTb9eYTY88D4GCblIMNu0rQLQsvP7JFWPN.W', '101586', 'admin143150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(378, 'admin144150', b'1', NULL, '$2a$10$Dz4ysg1F.P7vIdiS8aBmj.452sNguorLlVngzMPmP0sNg35oqXbee', '101586', 'admin144150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(379, 'admin145150', b'1', NULL, '$2a$10$Zy9bhOTD6Oao9dwcGZgZa.sIk2UChyUq686szmOMiYbHuiFRG70dK', '101586', 'admin145150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(380, 'admin146150', b'1', NULL, '$2a$10$PQyRbyZSOvfyPHGoUQgDUOndHqeRmoWi4yqLk2iIc.sffz/LrOPy2', '101586', 'admin146150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(381, 'admin147150', b'1', NULL, '$2a$10$WVVr/TnXToJ.V912JK1BWemFYj/r80xhCNlhQva4uBCCPCBGFk0ma', '101586', 'admin147150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(382, 'admin148150', b'1', NULL, '$2a$10$LcmOd3isS.xIvcnuWOXjsuiOcg6cggcCJYaIok3GjcS.ZglxSdiv2', '101586', 'admin148150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(383, 'admin149150', b'1', NULL, '$2a$10$eu0IosIp.sidhyWR1sQkVOF760yPo7ZbhEUaxcK/NvPVkRVOBtrue', '101586', 'admin149150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(384, 'admin150150', b'1', NULL, '$2a$10$YKKiZj.GnQAgOj1MSXi0YeaOH0bv4EUBKkJ4r5NO3E7ebnB.yB7ha', '101586', 'admin150150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(385, 'admin151150', b'1', NULL, '$2a$10$/FzbjElvPcjEMm/lAEmoV.wfowit9gsjC5XpR60Zzw082xPQfiw7e', '101586', 'admin151150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(386, 'admin152150', b'1', NULL, '$2a$10$LdloiZfwjLMH7Rte84MPdukpnzcKKsIPB5NsoQ4XhYQK5rUp7kPxq', '101586', 'admin152150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(387, 'admin153150', b'1', NULL, '$2a$10$i/zfbTR.2RXGl10yb5dSeuOgi2GfgwIz5LRoN3BcexodIJMEZ5zza', '101586', 'admin153150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(388, 'admin154150', b'1', NULL, '$2a$10$LcY9MpbIcesXOCqjJ/irDOnW6cEjoGuLDCxdBXJ80wkiInBf0XbLu', '101586', 'admin154150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(389, 'admin155150', b'1', NULL, '$2a$10$xVpnV0D29Aqq8nu1qbwUfuU3DeE43GEIU9OOHPrYAgGT26G89.eTO', '101586', 'admin155150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(390, 'admin156150', b'1', NULL, '$2a$10$k2bqIIWziz9ApYu6cjKLQ.w0WKeRm.8wimsNtQtZc131fefusdhb6', '101586', 'admin156150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(391, 'admin157150', b'1', NULL, '$2a$10$Fk73JMGAZTYMYXhGgvzN5uwRJ.dZYcHH9bjFh9UpZaKbVG5UCFsXe', '101586', 'admin157150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(392, 'admin158150', b'1', NULL, '$2a$10$A2xhTcXq3sfrZpVYADi64OZPEi4.z0Kr2o44FYAM3BKg29bp8EcHq', '101586', 'admin158150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(393, 'admin159150', b'1', NULL, '$2a$10$EJJW.WG4PAQScePRzl9Svuwhhd5fO7YRhVScS1mPdDKD1GqCGyZ4O', '101586', 'admin159150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(394, 'admin160150', b'1', NULL, '$2a$10$t2vSy9cuBntoQ6fj6TWSuO3yFGBOaHo7CGfG4nE3X6K0G74TuZwwW', '101586', 'admin160150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(395, 'admin161150', b'1', NULL, '$2a$10$nvsNDGVnotI4l7PojuWB2uccjzXYI6WUfycJy01G5SVnZB.HcXItu', '101586', 'admin161150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(396, 'admin162150', b'1', NULL, '$2a$10$eA0WUXlVVR7dwsnIQUirTuT6iKXkFyXNqJNPVf/e.84euB6yuLlSy', '101586', 'admin162150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(397, 'admin163150', b'1', NULL, '$2a$10$4sVwEmgXYFyAaR8zrX5qH.G1QkCwCFiUBZ/k.Hi93SZZG2mYiZjkm', '101586', 'admin163150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(398, 'admin164150', b'1', NULL, '$2a$10$HI3vA7GSh3bhVhx7MzJ8H.WYwvpGVLHx3WirLb5c5cfCNCFFgtITW', '101586', 'admin164150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(399, 'admin165150', b'1', NULL, '$2a$10$UDOJU3W2Xu8s31AJS1OaV.XGUpyaosRIwLQrZWbcmdNuK5S7OA6VG', '101586', 'admin165150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(400, 'admin166150', b'1', NULL, '$2a$10$hENYMpJyjUVmIClTE.LJuuGXKSew.Qtyh8Dk7ZgeFv0rXG2iHoA9W', '101586', 'admin166150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(401, 'admin167150', b'1', NULL, '$2a$10$SciqdnPgOYGa61DA2ejqqePJoq5q04r3eb4/z0Bg9cN.t665yCGTW', '101586', 'admin167150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(402, 'admin168150', b'1', NULL, '$2a$10$nsvMNGtl9Q36XlDngX5lO.E90zT1xj.LKVwjb0cyhM9NJ4h8By/fi', '101586', 'admin168150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(403, 'admin169150', b'1', NULL, '$2a$10$e2c7YxLGxMcu/xU/vjTfUuaEWbGpuNdJHfKNq87DGjHrDWI5Jtkhm', '101586', 'admin169150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(404, 'admin170150', b'1', NULL, '$2a$10$hI/Gu0W0Zd0pjhqjAoKKCeZU2L1gv6imaRTBAgosbdT/X5e9JAQyW', '101586', 'admin170150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(405, 'admin171150', b'1', NULL, '$2a$10$gcMulUzNrgHpkGaQXoLnOe7UjyoJ09Dbz5gf0tIMSsmSHaG9adajG', '101586', 'admin171150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(406, 'admin172150', b'1', NULL, '$2a$10$kJFYqCrxfyE6rh5P9rP9S.h5XLXrtdrX7gJ1t5164H5z4iGI2fD0.', '101586', 'admin172150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(407, 'admin173150', b'1', NULL, '$2a$10$HHQT7R4gj5s2UDdw757AmOVJQq0G70JioUgbBj9m.lZe5mGbBlNVK', '101586', 'admin173150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(408, 'admin174150', b'1', NULL, '$2a$10$GwyEqFxbTSfD5XO/og0dveKsh79MSeR4hk15gvb7JdVBmt7VUxC7C', '101586', 'admin174150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(409, 'admin175150', b'1', NULL, '$2a$10$ZJSzGwi39KtpNOQlFinZceZKNG2noxTXhyiCFnyPP7xLbYpiAteG2', '101586', 'admin175150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(410, 'admin176150', b'1', NULL, '$2a$10$17BEd/sjOz7yUfYvkA2czOlN7N3UonAAFrbTtexpLyfDJmmwySxbm', '101586', 'admin176150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(411, 'admin177150', b'1', NULL, '$2a$10$S57PJ2uOG9GEqWFaJx00G.xyCqo602bFAGS0vrB3g/QKHVGgLAniu', '101586', 'admin177150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(412, 'admin178150', b'1', NULL, '$2a$10$AqcYYYF3pNgZX.M7wVBXJumvfqwD6qTuIq4i3vXYTAtqY3eEjQt9a', '101586', 'admin178150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(413, 'admin179150', b'1', NULL, '$2a$10$esutsX8WrsLAldW95mCqNOCYKwuZTqR28rHHYjCE0aukQMjfmAAmK', '101586', 'admin179150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(414, 'admin180150', b'1', NULL, '$2a$10$uhBLqY7XDZ83/toun4qz8OczyJPDnCjFIlG2.FEzsjSFZ8goP7ocq', '101586', 'admin180150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(415, 'admin181150', b'1', NULL, '$2a$10$Y2luq6FkSrzEvZsMzzlbo.iMCxes9udISu3n8aTLOMcNSK.YEJzie', '101586', 'admin181150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(416, 'admin182150', b'1', NULL, '$2a$10$JfY.ClYSUrO9PJaPndikdeJ62AcuxhSrrHMDxEkMLjCcGM1k/duPi', '101586', 'admin182150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(417, 'admin183150', b'1', NULL, '$2a$10$qBbjOOF6/AUAarAORzdxsu.oN5j1.kiCMem0I8WXqm3hUVt4opoOi', '101586', 'admin183150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(418, 'admin184150', b'1', NULL, '$2a$10$mnSmbpK5KsAIBpJCTgNFKeK.Vn8YPjUE/O9KBWx7jDp5ppC3Z7nva', '101586', 'admin184150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(419, 'admin185150', b'1', NULL, '$2a$10$7TD4UlIcCMmZ0m6fGMCq2uedKgtudOAgPxco3ETR2gPlcbUohghJS', '101586', 'admin185150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(420, 'admin186150', b'1', NULL, '$2a$10$4CBX3Id.5AFLZQOLBrFC/ewK0geb60xN8WsySSfcvV0ZuSzm708UO', '101586', 'admin186150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(421, 'admin187150', b'1', NULL, '$2a$10$t7gPLKOXdL.3FfKGN/kuauK1bqhU.2/BVp1pweJS6d4yHq07ifMjC', '101586', 'admin187150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(422, 'admin188150', b'1', NULL, '$2a$10$LxjZeTENVmZIe6FG6eH8wOPW0dwbSbn1ejRM/SxDLqDWum0jOjMR.', '101586', 'admin188150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(423, 'admin189150', b'1', NULL, '$2a$10$b75zQlo7ClDqeKvn7CozxuWGkxMPyypb5qQIjn7im84pcYVj4fEiq', '101586', 'admin189150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(424, 'admin190150', b'1', NULL, '$2a$10$5iHHEWh6I/Bf2FOac9VD7.79UPL45HnCFoMpFa9FrvsPTK45GUBji', '101586', 'admin190150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(425, 'admin191150', b'1', NULL, '$2a$10$5W3VdCBUvihHzrJVT4u4.ukqANoqChIbAeClD3ghMrSGB4/hW9BCG', '101586', 'admin191150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(426, 'admin192150', b'1', NULL, '$2a$10$fHqYM3e1iWy/ft2MHxrCS.4N.HEz4Dh7sz4c4lkuO8s9AVsynprKS', '101586', 'admin192150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(427, 'admin193150', b'1', NULL, '$2a$10$aJQLqq2K3PiSXI9xmV0cX.k3o7QiH0BxsG.ZhHII0HYXKB6a1PtdO', '101586', 'admin193150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(428, 'admin194150', b'1', NULL, '$2a$10$98KsAwcSuMsLopBLOAuQX.5bcovQiQkU4Nph/LkmT4fwmsynVFUDK', '101586', 'admin194150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(429, 'admin195150', b'1', NULL, '$2a$10$JcOpUu5Ebdu6zVqpQfWZFOD3Oo3Qb5v.Ft315kg.zUxn1on1v738W', '101586', 'admin195150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(430, 'admin196150', b'1', NULL, '$2a$10$hV9g4SnH5.sZlD6Pxcffc.6jciOM34pLpHLwSqswcV1YdeXM.0MYS', '101586', 'admin196150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(431, 'admin197150', b'1', NULL, '$2a$10$roclQvpI5kvGyzGVFltjb.m8Dq5Jq7r0Q8CBk3qdFLSi6Bp2jcNiq', '101586', 'admin197150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(432, 'admin198150', b'1', NULL, '$2a$10$fwxqSY1U2IdBJndIrxkSCOZabZkLysqpZ97mOCUA6d/hi2CnygYby', '101586', 'admin198150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(433, 'admin199150', b'1', NULL, '$2a$10$SXS/YYN0BeIiuIe5JYq7eeKSK.lMfGjLRbC1oJJC9hAKsGy2YX7SO', '101586', 'admin199150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(434, 'admin200150', b'1', NULL, '$2a$10$4rvlS8snVRGfJBNTVjc5cOJK6l5/JvcwOC40v0H5jhZ75H6b3vGc6', '101586', 'admin200150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(435, 'admin201150', b'1', NULL, '$2a$10$YdBbp89l2PmykjP96k88Q.giId.Ztc0iR.d0cmFQms7pvWQ51gbc6', '101586', 'admin201150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(436, 'admin202150', b'1', NULL, '$2a$10$icyH1QiteLyQt/CgrJt19uNsjrDq2el7NZnuQWbebEzkV4A5K.cYa', '101586', 'admin202150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(437, 'admin203150', b'1', NULL, '$2a$10$.UZa3g8UD0rdQq3gOso4QOoai7dkQqhtRSYnJAraZNOVsDHaxffUW', '101586', 'admin203150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(438, 'admin204150', b'1', NULL, '$2a$10$ZXrwAJHEVkrpYYFU7rlSVex7YcWi4wnSurpVD59IHvyfHu2kCHjsC', '101586', 'admin204150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(439, 'admin205150', b'1', NULL, '$2a$10$yh4ZFvDz8y5GDzCLP77yrOYb3gEOm.bR/SPirCPzi4IoORAwD55iu', '101586', 'admin205150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(440, 'admin206150', b'1', NULL, '$2a$10$wa7zSo66hbJblMZMQrGf3uukndSSHn0SEh1YC0APe8.DZ1g//u/nK', '101586', 'admin206150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(441, 'admin207150', b'1', NULL, '$2a$10$5T6RcIn2ME6EkaMdACYC.OcWii2JdJFzi4e9/G..wM3jHVEOZbxFC', '101586', 'admin207150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(442, 'admin208150', b'1', NULL, '$2a$10$smWZV9hDhxgeRiFaqFWmGOdis9gbk6ppW8/uyiKuD3wiAhVWGUWJS', '101586', 'admin208150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(443, 'admin209150', b'1', NULL, '$2a$10$Yodo16seK8eeEymAhB7fxektT3qV3qPPBFzlRVi4ObEfqpeUCwC76', '101586', 'admin209150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(444, 'admin210150', b'1', NULL, '$2a$10$Ano8CPeUo6TtEoyBR.mtGOPKDpNW/gV5NFbDlGtE129XXrNw1DRvq', '101586', 'admin210150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(445, 'admin211150', b'1', NULL, '$2a$10$mU2K8xKjwJw9sc3qhU9m0.EGJA86rJuon/Ju4XNWjAluBwjYvBX5y', '101586', 'admin211150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(446, 'admin212150', b'1', NULL, '$2a$10$VTAYr8UKC8ybYLDECBM9x.E8LK909N1Ymak0IdeC263/m/x7g3cza', '101586', 'admin212150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(447, 'admin213150', b'1', NULL, '$2a$10$OtPvJrNa/72zWRupcXU5MubDvB2RyFPsSKxHW7GJonBxkKnX8Hk2K', '101586', 'admin213150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(448, 'admin214150', b'1', NULL, '$2a$10$Sjg7L5ORVoiItXn6cs8g0u99IyIJkZUbh5Q99xleUvnxIyXeQsZ6a', '101586', 'admin214150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(449, 'admin215150', b'1', NULL, '$2a$10$0n.uqBQjNSoryAqIjYO/BeXgRo2qLwWsCriaLeL.rs.XwufBdbUNK', '101586', 'admin215150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(450, 'admin216150', b'1', NULL, '$2a$10$VnkbkuYmeA9di0CgPcyZXuFlrwXNg3VGlj5hhV0Pyzec8MB4VYliG', '101586', 'admin216150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(451, 'admin217150', b'1', NULL, '$2a$10$aj8qXB1Wkx1EletyNxmC3.lsHnx/BslF.YwFsgTe3kJDKdRlisW5e', '101586', 'admin217150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(452, 'admin218150', b'1', NULL, '$2a$10$OdBznkRQNomaSWZ7vcvjC./HV7YOGibyB8xTGDvyZihmlg7TOGO6a', '101586', 'admin218150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(453, 'admin219150', b'1', NULL, '$2a$10$BSqu134bllDJOxA.BYXS0.ajKgGh1E1DD5Xhlgi4whKKsMOT0gJpK', '101586', 'admin219150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(454, 'admin220150', b'1', NULL, '$2a$10$OePuUKy6jcAZFb5UEWCnXegrnoG6Rauvv5XBPj7HP4i4OgBsnJ/ie', '101586', 'admin220150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(455, 'admin221150', b'1', NULL, '$2a$10$7qjTlg.yCnal1NC8np2uduDWdHIyJhHgQAJIH4SiLq68C0jvZIUkS', '101586', 'admin221150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(456, 'admin222150', b'1', NULL, '$2a$10$Lct5NXEvsMWet4GgLOZ2pOwhb8yYncKbhazXLpHWWYIt3GRg6gg3y', '101586', 'admin222150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(457, 'admin223150', b'1', NULL, '$2a$10$s49XK/WXFVjb2q7sDZ5mRuZ.P6HMGeg2HUBaBm6SSgtH6.lRFTghu', '101586', 'admin223150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(458, 'admin224150', b'1', NULL, '$2a$10$b0GN8uGtPW1xjqWEYSX6g.iiF/C7BA9R3IgtNrpYxtho.5r2Hjh3O', '101586', 'admin224150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(459, 'admin225150', b'1', NULL, '$2a$10$kqbn1r12yXC/z5qOl3HWC.7ZdYIw0647SQEpOygeVhRXzAOYWUvHq', '101586', 'admin225150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(460, 'admin226150', b'1', NULL, '$2a$10$AgxqftSZ2f1zkPdNBlg5VeXK8aHLR63cH0Ctc32jsCh2pYJJmkUay', '101586', 'admin226150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(461, 'admin227150', b'1', NULL, '$2a$10$Ks2gQwQgas936Pk9UdzeOubxg2eWPMC9/pLzmdfcrDBrdV9P/GWq.', '101586', 'admin227150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(462, 'admin228150', b'1', NULL, '$2a$10$v8FRZgCpevjS6EtlobOM4ulVb23dCMsVaL7J2NRPhIjPf5Avf5xU.', '101586', 'admin228150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(463, 'admin229150', b'1', NULL, '$2a$10$3HbLpGXbMVRUh.eS7wmXYORFvG8RUzQwhb53SXMt0RtxP2IjIAgJu', '101586', 'admin229150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(464, 'admin230150', b'1', NULL, '$2a$10$0q/IrwKXyhi2Z1EojFwEyOy5S4sGkeUeeDiJ9L7GVQWYTzgJ5nQye', '101586', 'admin230150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(465, 'admin231150', b'1', NULL, '$2a$10$uKYk8DHMFTKoRslnfupFvOK4dQqQ4EH0Apgq7N3F6nqqoEQQn/sT.', '101586', 'admin231150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(466, 'admin232150', b'1', NULL, '$2a$10$Nhy2RGqHhYiLF/P4cYAGNe5DiLXnzZgaZMLDMz75Z8Cp4yQ4rE.uu', '101586', 'admin232150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(467, 'admin233150', b'1', NULL, '$2a$10$1b3lRyKelNC4LS6bFvFlEuCgi8garKnQDLnBDSMteFlHAEC6dJur2', '101586', 'admin233150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(468, 'admin234150', b'1', NULL, '$2a$10$34xpLYfPdNnKh9I9a/OiIexio3/Hrc4KxJU2cKpoQ8LHnoeTvkZ5K', '101586', 'admin234150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(469, 'admin235150', b'1', NULL, '$2a$10$bsq/bHR6tcndsGYxG6om3ecVXNP5S25jLaLSdSsRxh4St36l9uDRK', '101586', 'admin235150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(470, 'admin236150', b'1', NULL, '$2a$10$7XI421A.1rP7XTXpWQ9Yh.Ht7KNUkI3x40qp3OPMa4Aa/WdKOfBja', '101586', 'admin236150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(471, 'admin237150', b'1', NULL, '$2a$10$6pKBKdwI9/fj70QdUl9gmeDQ6yMEskdlZtm16DTzeKl7xV/2v2nTW', '101586', 'admin237150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(472, 'admin238150', b'1', NULL, '$2a$10$vQFa4mYml36WZuM7xXQuJuNdPz0uzc.VqjzeOwmASR05jbOtFKcsW', '101586', 'admin238150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(473, 'admin239150', b'1', NULL, '$2a$10$.RvBxNmoES.Nd/8.U0j4u.lloc1Mzh35w91IQx7yJ9rjzEXD2tgVa', '101586', 'admin239150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(474, 'admin240150', b'1', NULL, '$2a$10$fstx02OQz/LwPbSmvNu2uOPWyQXBmbFHSzK3kVVwxeEikz7GT54g2', '101586', 'admin240150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(475, 'admin241150', b'1', NULL, '$2a$10$hGZ2HW8BB5QloPjsd6WqDeTACL9ENB7gZXnN5eTWmHb.5NjU1C2T6', '101586', 'admin241150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(476, 'admin242150', b'1', NULL, '$2a$10$GrK7TacfWQpARXzHmxtHAuo7MKzqFtVOU0UZEKrn0dloQOGNFNbM6', '101586', 'admin242150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(477, 'admin243150', b'1', NULL, '$2a$10$b2UjFibY1FgnPk6HJhKazeILzA0I9Ddu9oMpg8xvI5LrGMlJ67aM6', '101586', 'admin243150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(478, 'admin244150', b'1', NULL, '$2a$10$5mg14E9dg5vLktq2erX10.741HgNFaeYGJK535fFKvN81Ot0m2jdW', '101586', 'admin244150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(479, 'admin245150', b'1', NULL, '$2a$10$VZ0IxhdVjcen65J1x0wEpODMOnyXhff722g87InkAMgd/2dE7hpY.', '101586', 'admin245150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(480, 'admin246150', b'1', NULL, '$2a$10$BJv6JSc.7xnnerQbRzHaTeIvpGLPcbRcH2QSgcMzduh22lV2yyt1m', '101586', 'admin246150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(481, 'admin247150', b'1', NULL, '$2a$10$MiPy/PIRA0vlvlcJwoYOH.opKeQ.yim2y0NLu77sl81kh.NYhi3dC', '101586', 'admin247150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(482, 'admin248150', b'1', NULL, '$2a$10$TtstD0aj/FjZ/GtGd8Rb/.6XNbqua/UBDwFBRBFG6NKXRaIsedVQu', '101586', 'admin248150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(483, 'admin249150', b'1', NULL, '$2a$10$kTybyvdeW49j1oXq/xSyY.lZhFE3T1zUCiI9sUe0XJPm1Wstkayie', '101586', 'admin249150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(484, 'admin250150', b'1', NULL, '$2a$10$D/wSGGmbhKiMRZ0QEL2DXOkH1BxYk9Zm1stb2CbP2ixEByh/ul9Yq', '101586', 'admin250150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(485, 'admin251150', b'1', NULL, '$2a$10$3pRrvbek9h7YHcY3jYi.oeqIQ93J5X.NdAKczVTYpy0BubDKjR3y6', '101586', 'admin251150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(486, 'admin252150', b'1', NULL, '$2a$10$sQzqhpFEgXU77pH.YGaUz.yKGsAyPLytb1A1jNru29ZEH3bz46OIu', '101586', 'admin252150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(487, 'admin253150', b'1', NULL, '$2a$10$JGxnfKuaGLU.EeJG6CVacO57yJOfMqOy5vLBncUHPlkp3e5bM21XG', '101586', 'admin253150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(488, 'admin254150', b'1', NULL, '$2a$10$X1EG.sCc4tgL43cVj7ec0.Wfdj8eR.zbXtnv8GMD6065uKcB0UGlK', '101586', 'admin254150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(489, 'admin255150', b'1', NULL, '$2a$10$kYHqFIkxiEOsOluCtditMu8Hb3sVejRvpH3ptW3cl26pbvZcugE9S', '101586', 'admin255150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(490, 'admin256150', b'1', NULL, '$2a$10$nn8O3NhiqELH2LUpk1OS7OKOP7nqPO2GjR2cQE8AUrMNSKYE.Qxqq', '101586', 'admin256150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(491, 'admin257150', b'1', NULL, '$2a$10$zaB7Jli0J1zLAKOjhXNO7e1U8ey0vHam7BsMw8UnJ6JUL1dVpXDOG', '101586', 'admin257150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(492, 'admin258150', b'1', NULL, '$2a$10$zS0hiQoY3ZRja9yCiAcfkOKhh27UPI5NV.DEllEHFqLQEqT2ns.HK', '101586', 'admin258150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(493, 'admin259150', b'1', NULL, '$2a$10$4y/kK7xDSBQuRjGw3HaA1uxmwFvmf6Rbxi6jg5nSFLsbjgIspGGQW', '101586', 'admin259150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(494, 'admin260150', b'1', NULL, '$2a$10$.ztvuoudtfVDUJVS2EohO.SZcdIX3V52EHVVfym7nS4rKvF0c6TdS', '101586', 'admin260150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(495, 'admin261150', b'1', NULL, '$2a$10$Xt.EqLrhhMeX8QVXavhJPOcBN4ZhL1bAxbAR7I3TiZpcZlsL45v2K', '101586', 'admin261150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(496, 'admin262150', b'1', NULL, '$2a$10$UOH7gFfXG.Qt.LFoGm2sIuIvMEjZiEmjCKjq8IBql90P9pZ9e.9Ti', '101586', 'admin262150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(497, 'admin263150', b'1', NULL, '$2a$10$n1GaApUHMrDHeYg0HvtfEOzD8YVnpULEAlZuLtZ5We69JAZ9DVLOS', '101586', 'admin263150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(498, 'admin264150', b'1', NULL, '$2a$10$bdvYXXqrZk9k3rO/SKM9mOZbQ0pp00PsIWilSA3VdBEoVP5xVldSC', '101586', 'admin264150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(499, 'admin265150', b'1', NULL, '$2a$10$PbhIx6e8zmgLjCBPw0GGe.hJw/kvbYPC394CgM469UMW1BCgePveu', '101586', 'admin265150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(500, 'admin266150', b'1', NULL, '$2a$10$wAQez8LuVBcGQlClZ5XZSuI2TLG2aJo.s68.XhSMAP2eFQIYyNY/6', '101586', 'admin266150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(501, 'admin267150', b'1', NULL, '$2a$10$lVk5fMI34l3Vkit4APdIdOT4v0hv.2yXPHDtRZ7etxwrX5Nyx0PMC', '101586', 'admin267150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(502, 'admin268150', b'1', NULL, '$2a$10$psqHZTqiXVLLXNSo10g/pelrXi8OTTnPjcU7rcQ6t7xyo1/Qqk7ZW', '101586', 'admin268150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(503, 'admin269150', b'1', NULL, '$2a$10$J7nbUXakdaRUYn09Iiza.OrZRcxnTWdJQ0Oya6ET7U3hnWzwdPCYO', '101586', 'admin269150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(504, 'admin270150', b'1', NULL, '$2a$10$ElPJSXdm05s1KLDa4ypMfexGcacuiZy61RzcUlgcURBAn3jqHcqju', '101586', 'admin270150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(505, 'admin271150', b'1', NULL, '$2a$10$GLCdX8rZnP1SbabONdu2uutynRr85bi950UjLsLdl6qQRbzKkW5/G', '101586', 'admin271150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(506, 'admin272150', b'1', NULL, '$2a$10$VSEh2yI3CrNfShbWuG83LeJZ6w7UBvzl3kFJTFBBhc.moht6F4O0a', '101586', 'admin272150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(507, 'admin273150', b'1', NULL, '$2a$10$UgXJI3SF0ONZuVqXaTdrWe3NL.o5Ja7p2JWEDNljczZCkeFdfDxMm', '101586', 'admin273150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(508, 'admin274150', b'1', NULL, '$2a$10$UxfP.3vyqq1aGhlMgmva0OAuMPCtwEgd4fs1qDU22swJkEgkEYIVW', '101586', 'admin274150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(509, 'admin275150', b'1', NULL, '$2a$10$o2CW43Pn4WH/EM3I2Lcwle7d5y9vTQoHmxr7bwi2CZpYJAFuo2sEG', '101586', 'admin275150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(510, 'admin276150', b'1', NULL, '$2a$10$22kKjYEGkLAj7Y0tXDHJ3.HNAB/TjW1OY1QjwINT1U8lqQIU9iMom', '101586', 'admin276150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(511, 'admin277150', b'1', NULL, '$2a$10$q5s/R32PzHTJlJYijaRfI.YzfrJJdDfOapBBW9ex/QNCW/IIAxKda', '101586', 'admin277150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(512, 'admin278150', b'1', NULL, '$2a$10$kDjuiux7s8P6KpNvDJSb0eaZrJfcJc6DKvkLv83xG/kentEbJ6vHq', '101586', 'admin278150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(513, 'admin279150', b'1', NULL, '$2a$10$U0vtRTz6c2D0bL43OZdIO.xjXsQBAPm7.MegW4/AFa53YRGFew7Wy', '101586', 'admin279150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(514, 'admin280150', b'1', NULL, '$2a$10$2KOoQaCgK6D9pAsvbi/ywOXADIRKBdrH3gBhJ9W22oGt3WNO7WrSC', '101586', 'admin280150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(515, 'admin281150', b'1', NULL, '$2a$10$sowJxdrk4ECyqqk9U2ivGe5BHPQDciucXpF03MmwTIqY90AJLOGCO', '101586', 'admin281150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(516, 'admin282150', b'1', NULL, '$2a$10$iXaqxlLfOOWCdoMYEgdeY..A1R.hgO6F5LyGlu8nAk/tIqwnwRmi6', '101586', 'admin282150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(517, 'admin283150', b'1', NULL, '$2a$10$nm6EPF3luX9vsoMb4MVzdubFOshDRTQbY/7sx9HSSobU0NhrofnPO', '101586', 'admin283150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(518, 'admin284150', b'1', NULL, '$2a$10$RidAnk.G5Q4VA/x6eINpt.FZfE1P5TZJm1fflyN6mygbrsAQZ5LPm', '101586', 'admin284150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(519, 'admin285150', b'1', NULL, '$2a$10$23EcgCvW9MGLx.JbgoEvSuaeQtvCo05cQwvtEYtSRImJq.gdRDBoy', '101586', 'admin285150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(520, 'admin286150', b'1', NULL, '$2a$10$60UtfwjibX.ZJgasUNPfsuSbvn7T2TEYO9NQ7/FxFRs3wYmouO3T6', '101586', 'admin286150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(521, 'admin287150', b'1', NULL, '$2a$10$Hnr40A7ktGxxBtG.469UautoiwchESzpo4n4UCK6MTdmWPilGrM7a', '101586', 'admin287150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(522, 'admin288150', b'1', NULL, '$2a$10$h0B5s3zStGyCcVohUu7GvuR7u2HR.LERJS4AgpPQcRgIO7kM5cdpq', '101586', 'admin288150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(523, 'admin289150', b'1', NULL, '$2a$10$IU4IyddNqpooTaz7agFiCeRkT/Wm63D/u1lR90qN4QOwHTriHc3r2', '101586', 'admin289150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(524, 'admin290150', b'1', NULL, '$2a$10$ovzcZcvpkcIb4NGNzf6s1OFbao9CkZHmD0BqFLxb4YefZJJWEAHW2', '101586', 'admin290150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(525, 'admin291150', b'1', NULL, '$2a$10$V3xcIDezLAR.VEDUOM1Hf.eRIiaso9j.6fwrNj/u0Xdk4kWCdDQ/C', '101586', 'admin291150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(526, 'admin292150', b'1', NULL, '$2a$10$g3.iQO9vJ6AaLvaBB1Q3Du1JotsSU/c1piae5mAzWgQuGHJoa8Ur6', '101586', 'admin292150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(527, 'admin293150', b'1', NULL, '$2a$10$1y03mBcNOS7GZMe4bnPu9.ZhJ0LBXn/g1b4ns8avBcmwrFqz3OWzO', '101586', 'admin293150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(528, 'admin294150', b'1', NULL, '$2a$10$J2QNNxe.r1D5z0Zg2.i05uu1TjBM3iwhONAV93Kz1fAILMNU7ltZa', '101586', 'admin294150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(529, 'admin295150', b'1', NULL, '$2a$10$/k2ZwUivyx46dDTTNHGKY.W0oo2FnMSAQFV0PDgxWsHqGOBy53aTS', '101586', 'admin295150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(530, 'admin296150', b'1', NULL, '$2a$10$5Chctn2KNbuEloxFIEggLeaBC2LwUPNKiaOkUN126TU5ZoUoALjMC', '101586', 'admin296150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(531, 'admin297150', b'1', NULL, '$2a$10$BcbP.fC37O0PW6UfWBh/1OqNGiuGjYdtt5I84LANGvdNjDXj9p.pW', '101586', 'admin297150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(532, 'admin298150', b'1', NULL, '$2a$10$dDj9q4Djnvio9xhLgZS.Puv2.ZyvQYvA.dlb4d2nP.9lek8hxhNMi', '101586', 'admin298150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(533, 'admin299150', b'1', NULL, '$2a$10$hnAWuPlseMspOn1g5VQ1yu/Sb4v/8XigedtGtZX1PHr1jDRQ.wgiW', '101586', 'admin299150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(534, 'admin300150', b'1', NULL, '$2a$10$LOtpXstn8CM.aM9WxCNhmecsr2bAf7.wnczPIA.K4ckm2x2PYlRaC', '101586', 'admin300150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(535, 'admin301150', b'1', NULL, '$2a$10$cUqrD.eC4f2flCCil6IwFOrw0mpgUB1iBRZ6j9Tg5oBxVvhUR.gee', '101586', 'admin301150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(536, 'admin302150', b'1', NULL, '$2a$10$eDOCaxJOGloPQSwITl0GR.GCGizcztQTMsOmQVPlC05omWTiVTHxK', '101586', 'admin302150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(537, 'admin303150', b'1', NULL, '$2a$10$MTSNn2gs2MW.naw3xKppnOheqYUNSLsrCHnFM4MiXIkx922V4CJqy', '101586', 'admin303150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(538, 'admin304150', b'1', NULL, '$2a$10$Mlkzob8N/1luQREepvTdDewy73gMNn3ig19k1PkAIT0TUr5HXwDra', '101586', 'admin304150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');
INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(539, 'admin305150', b'1', NULL, '$2a$10$Xe1BYqyaZlbXTDS6aMDIZO.0Q9IYIeWDPn5CW3uprdYdUYgVOVRw6', '101586', 'admin305150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(540, 'admin306150', b'1', NULL, '$2a$10$4V2CO.Ec7bYIf07G0Wl4x.O7OFBb4vftOSGKU7jLWY.M3tRPQwjqq', '101586', 'admin306150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(541, 'admin307150', b'1', NULL, '$2a$10$tk.lFdq9DGcNUe/IC/eZyurIZDT8Xs7ubC9hun8hnQn7o9MuljXbm', '101586', 'admin307150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(542, 'admin308150', b'1', NULL, '$2a$10$WatLXcnfnZi342zEhxbRJ.PB95OtUYkQy7sNbL0BQlcZ/XdHViBLC', '101586', 'admin308150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(543, 'admin309150', b'1', NULL, '$2a$10$70EAg2Ji/B48M/7FfxAmO.EJ9IAk0aP6Q64Hu3WPoQjw0xw09Du4S', '101586', 'admin309150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(544, 'admin310150', b'1', NULL, '$2a$10$XoGOItU0RqSo4o3XqQ15Ae/JsCoXFGC3JAhcjH1MOyHNh48agewYu', '101586', 'admin310150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(545, 'admin311150', b'1', NULL, '$2a$10$AY8ABWMrIYVmgTTK5f1br.hcl3FglYkvmwnwF5u8fr7UXik86UL7e', '101586', 'admin311150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(546, 'admin312150', b'1', NULL, '$2a$10$gYqQMiJ.Lb7TSxKKpf20l.JpfRQi4QsxY4VYrte71uSNt0bTwmIoS', '101586', 'admin312150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(547, 'admin313150', b'1', NULL, '$2a$10$ZS4qsrbo1TkMbx2rQSGjbesbRDgjuW4aDGTWSn7onJuAxe09dzNJy', '101586', 'admin313150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(548, 'admin314150', b'1', NULL, '$2a$10$ey32Dnq7kQfM.FHK1/noiOZL.2372ocdtGRnyLQamqx60OFfTXpr.', '101586', 'admin314150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(549, 'admin315150', b'1', NULL, '$2a$10$Q71ZlAUsD5W8fHKJEQPqDOkCD3hjOOCqP.PfIsKVdllT/MR2sg7tu', '101586', 'admin315150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(550, 'admin316150', b'1', NULL, '$2a$10$tZ.B8HlRyAsoDkxYtEjKYeKoxsfjrUmkXAN8.cId8oIGHyb9k4dly', '101586', 'admin316150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(551, 'admin317150', b'1', NULL, '$2a$10$wR9oPp5uvRSxGGqBRjd9E.3QIPyv9rP5rDZ7lnD7eIhm9xrrQ5LXq', '101586', 'admin317150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(552, 'admin318150', b'1', NULL, '$2a$10$gnuHYSqbz.9u.28Xf4eCce5ns5Z2wOtAx1uyFXRgCxEfD8RY4dpA6', '101586', 'admin318150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(553, 'admin319150', b'1', NULL, '$2a$10$mlyg5p.nPcgQ/hiRkPF7vuHCfkBtsyjjLI5xZ1LHQVE2oCqBTQCCO', '101586', 'admin319150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(554, 'admin320150', b'1', NULL, '$2a$10$PtBVR4gTDj6y95VMqJdPEeM12IkHlZTnwDMiwYfRyFXfClnjM8pXa', '101586', 'admin320150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(555, 'admin321150', b'1', NULL, '$2a$10$7bqiq/QiieqRxeMfQXolNeHbB32pvdVJti.tmLaDi8CSjb0GZoih.', '101586', 'admin321150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(556, 'admin322150', b'1', NULL, '$2a$10$iYeUqUZPKHwFOn72PLGXuesetcJVS0lC502UWxBD6ioYBgyUPZkde', '101586', 'admin322150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(557, 'admin323150', b'1', NULL, '$2a$10$wqCs1WEQawnIIdoEezBSiuGIUhTLqNnUtCnMWN94Z8FNDsqi2Q7t2', '101586', 'admin323150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(558, 'admin324150', b'1', NULL, '$2a$10$7SWSENcLqL2OUmEU4nL8DuJXPs6owMCRnVNUCKjB7TJavvbuk4XDO', '101586', 'admin324150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(559, 'admin325150', b'1', NULL, '$2a$10$fHxBxjFTIOGThM0kp.1SVOI5YUCJTc.EaXOzxEfpuJDW6Jg7nw/Lq', '101586', 'admin325150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(560, 'admin326150', b'1', NULL, '$2a$10$cRVJzjL/v69tMeX.mLXNJ.Nv43M7wif7Nkrx.y3Bdy6gElmTUuqhe', '101586', 'admin326150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(561, 'admin327150', b'1', NULL, '$2a$10$bAlH7k4eockcJN5NxtnWKeekyduzuh8j8R96K.0c44zzfutQeUyJG', '101586', 'admin327150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(562, 'admin328150', b'1', NULL, '$2a$10$ygfGyKYSB/riXfPTPz/tNuW21gn/haVs6drVy9ytL4sqqkP3VPArG', '101586', 'admin328150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(563, 'admin329150', b'1', NULL, '$2a$10$ea9AA0X9V1lUdbfpNPrO3u8FhsME2MyzdWYuVAYr9ldFOvUsD75CK', '101586', 'admin329150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(564, 'admin330150', b'1', NULL, '$2a$10$Abt11oxCV79NRFc9rSD0euubVBS0Hm1iuS5ldq9PvFwFKFJwRF5yK', '101586', 'admin330150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(565, 'admin331150', b'1', NULL, '$2a$10$9pAWAcqG7ttL7ATrtgDf3.utiKU.5c6aVAAN7BWArcbD1uK3Ogrzu', '101586', 'admin331150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(566, 'admin332150', b'1', NULL, '$2a$10$iIyBvtv.OOPcY8DuVR4FfOTS.JRmaIQqzxyDcKW0bXdQxmIKYhyle', '101586', 'admin332150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(567, 'admin333150', b'1', NULL, '$2a$10$1GI1lpnuuTxctb.Wn8ykdOKvGOwVr7Wi/g30F.SWjkWJ192iiUis6', '101586', 'admin333150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(568, 'admin334150', b'1', NULL, '$2a$10$wOhx7TqJvhLxosUWP8iMfey20Wypsm2oVZZPb2JpMi2tEbBok27Pa', '101586', 'admin334150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(569, 'admin335150', b'1', NULL, '$2a$10$65l97pzhl1BjvNrrQ4r9ROY5ak0MDwuhVTTIpfpPnOnTJ3MHpjzGy', '101586', 'admin335150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(570, 'admin336150', b'1', NULL, '$2a$10$VjyXV40pUS1CChJjEriylexqJHI86.LRuJeFwHdsaNWXqWLMpCbp2', '101586', 'admin336150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(571, 'admin337150', b'1', NULL, '$2a$10$y83Zq6VJbblvVYeCCydO1OiNlRb2llNAnBAwsw3S0LFd/0/QjmfT2', '101586', 'admin337150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(572, 'admin338150', b'1', NULL, '$2a$10$lSBp7qD.5VZvOEO5sLUj..9jmHzONM2Mh4RyJtkkLR7kaAZSliP26', '101586', 'admin338150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(573, 'admin339150', b'1', NULL, '$2a$10$lHv3zLBxfHxY4cSDkaDKHu1OELaR30jc96DklnalGuSSxCS1P.PA2', '101586', 'admin339150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(574, 'admin340150', b'1', NULL, '$2a$10$1NuDkzWw.JKzZF9VEu0pTewblDfNxSnKWdfuP3fo3g0P88hcZa9c.', '101586', 'admin340150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(575, 'admin341150', b'1', NULL, '$2a$10$GaEVN.mDdbFyN2Fp5ENkK.8oJJbz02xRgcCIlJ1wbNCeLZ.WlOJne', '101586', 'admin341150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(576, 'admin342150', b'1', NULL, '$2a$10$3b0/3ulvYq6wEInAVc830.W0v365f7sMecSooAYRL42SVf9E1mIDG', '101586', 'admin342150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(577, 'admin343150', b'1', NULL, '$2a$10$wDic/9cvuM3IxqHkzlmGr.kSvu8S1lgXqC6olscnWLXIq/1.bdLyK', '101586', 'admin343150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(578, 'admin344150', b'1', NULL, '$2a$10$8YhOp.z3R6ii/uVEt3POLO8Qy1RNRYaHnp2QaN/0ZzgesNusebn66', '101586', 'admin344150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(579, 'admin345150', b'1', NULL, '$2a$10$TWTF/Z1qfda5GOJbQa6W7OCO77h6zeLVrG/ZHkRtddqu94XOpsojq', '101586', 'admin345150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(580, 'admin346150', b'1', NULL, '$2a$10$1pWXXu60OPWXeKaUQmLE9OnSDNr.E5nx8KM2WfvmASkwUe/S6WfjK', '101586', 'admin346150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(581, 'admin347150', b'1', NULL, '$2a$10$Bmqn3hA54Ru7CpWP2b0xD.YfZvl6u41OLF8ZSz/vUhZGVyhq9wWBm', '101586', 'admin347150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(582, 'admin348150', b'1', NULL, '$2a$10$rQrKmBRYBXNEg82S37asHudJz1TSNoDwd4PQBtl2BqpWITf9tswPm', '101586', 'admin348150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(583, 'admin349150', b'1', NULL, '$2a$10$JCUtLSVzslyMvoF8tPFxKOnTS.LxPjrFzTGOm4UjxxSwMqkVFAFj.', '101586', 'admin349150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(584, 'admin350150', b'1', NULL, '$2a$10$IOcSS0OZOsADci.wgQY4Euw1e2VH8.FdifO9pYFIG6ptHbXBX1k3W', '101586', 'admin350150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(585, 'admin351150', b'1', NULL, '$2a$10$eYZXTxIWdUqhw/HKH21rjOHzqt.YjBHakd4LdRCkvVYFvc7xchS0C', '101586', 'admin351150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(586, 'admin352150', b'1', NULL, '$2a$10$U/X0mj1zw5t/N3z8ENgpPOenaxw1TIQ1.KO/TF4dLimrvUfO2z3uu', '101586', 'admin352150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(587, 'admin353150', b'1', NULL, '$2a$10$Gm/7SJjnmqN3x1NW0tloduizw0Z1cj9K3.pQtZ4JkW.ee420QGY7y', '101586', 'admin353150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(588, 'admin354150', b'1', NULL, '$2a$10$qOlR66otcdR4e.OHP5Tq5.e0ckaN12tQoMAypv7mz/Di/aLyLHNAu', '101586', 'admin354150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(589, 'admin355150', b'1', NULL, '$2a$10$t02HWv15FWBdoapycJ5l..mCMUjdZCJ9Z66hxZkd1aJPXd9AJ/Vey', '101586', 'admin355150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(590, 'admin356150', b'1', NULL, '$2a$10$dSv3skVlRupOVbogCgv8juMJzSwp0vWulhluGAox2v1rxYG8dpLZ6', '101586', 'admin356150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(591, 'admin357150', b'1', NULL, '$2a$10$b21fBWNCifjwcpxNWG9vDevWDMd3DHXgScfGRyRII9YUzjpgqg75W', '101586', 'admin357150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(592, 'admin358150', b'1', NULL, '$2a$10$EcdSIYVr9jYkm6RVhMQoe.YyPLr7ImI7vhzKd9irVMoSyRTYjqB.u', '101586', 'admin358150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(593, 'admin359150', b'1', NULL, '$2a$10$lP0IqS8FBJdsJTRdUOc76.E5/pyoIPB0HE7LQfBOWC4w77ZGhuaFe', '101586', 'admin359150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(594, 'admin360150', b'1', NULL, '$2a$10$ZyIIMA4rXiqhuhUN.JllaORNJJIQYmVJ0hX8mBAcjr56G0pu9GTdu', '101586', 'admin360150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(595, 'admin361150', b'1', NULL, '$2a$10$irgYMFTBzK10NdgdSYjJ/et0vbpXRYFM4Zewu1qcY3hjqoI49n9ya', '101586', 'admin361150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(596, 'admin362150', b'1', NULL, '$2a$10$t2Y4VuLplygurYyG0EvKpu488RrkCGKe.mDiYxuD3TyN3WYImHW4q', '101586', 'admin362150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(597, 'admin363150', b'1', NULL, '$2a$10$hzHwtY7wtxWu2aEU2T3P0O47paZYm0/NyH4D8pL7zRbV/PnQ8/6lu', '101586', 'admin363150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(598, 'admin364150', b'1', NULL, '$2a$10$YCPN2CobZ7cQi6z6PUSXzO43Nvpi1HR/VuZVj1VSZDptd/xGW01uG', '101586', 'admin364150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(599, 'admin365150', b'1', NULL, '$2a$10$.BHhWhV/pd609ZdSBuMrw.CvbIV3.t8vtpBdATvGeGS0if6GXb3qy', '101586', 'admin365150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(600, 'admin366150', b'1', NULL, '$2a$10$utqQp6Pewdnw5TP6RQYZUeOLEBK/S1/SaFFz1ZQ.CNan.pWLQ1yPC', '101586', 'admin366150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(601, 'admin367150', b'1', NULL, '$2a$10$0ogMny.V/floPCo7rvBcjesEGslHxGPHhYU1Sk0vmgaXa9gbjmT.a', '101586', 'admin367150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(602, 'admin368150', b'1', NULL, '$2a$10$EwVnPsewcFOz6LhnvKTY7.VrGMlwuFCnO3q7myhAxexXkyWMocLFG', '101586', 'admin368150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(603, 'admin369150', b'1', NULL, '$2a$10$b/jyPH/o8UuymrUhIdxam.5/OfMVXSTPm16v8Yy9bx9rRw5yJQ20O', '101586', 'admin369150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(604, 'admin370150', b'1', NULL, '$2a$10$H/1Xf4pFbmVb1TFYqdSnNetb685XTGcs95rfziCQCQQFSjvUy7Vxi', '101586', 'admin370150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(605, 'admin371150', b'1', NULL, '$2a$10$460saFIiAkC9L14xlAYfFejLPiWonP6xGE7wHw/bnM8yoP4yhXuUO', '101586', 'admin371150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(606, 'admin372150', b'1', NULL, '$2a$10$qGJlgeSvdLO5zvhKAPYgG.m0mijim2/2iwAubdD/t/Yyyz6HKnVSO', '101586', 'admin372150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(607, 'admin373150', b'1', NULL, '$2a$10$Tntosk0UAJ22TWk7IuJfruaiXtbu2P3TN7SPo1pNFuXhgvHCeOfYC', '101586', 'admin373150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(608, 'admin374150', b'1', NULL, '$2a$10$D84aLYxpXR0QUuNHJWj.qO9YIXHXEEjOgN8Q1iYNoPqZFCr3YljGS', '101586', 'admin374150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(609, 'admin375150', b'1', NULL, '$2a$10$EmKfT9AJQKowEQ0uFpoil.Gx9TkP/buyCxC02rSB.ZELfmQ7D0mRC', '101586', 'admin375150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(610, 'admin376150', b'1', NULL, '$2a$10$nOazmgLTJrikfPt/F8vYd.JeSMpp9Z5ykQKo9ziZFAz04YBhvT606', '101586', 'admin376150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(611, 'admin377150', b'1', NULL, '$2a$10$VQxldCe9Ci9IEzKTYABEp.ElnkHjwH2yqhhr.4GcU4GidTRCFzH5O', '101586', 'admin377150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(612, 'admin378150', b'1', NULL, '$2a$10$VikkcJ/KhfePRvBVhnufdeIz0yc.l/2uhdRwoMMzR3uwIXaZZ2RGu', '101586', 'admin378150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(613, 'admin379150', b'1', NULL, '$2a$10$Ynr0uPcTxrkhJnW.Cyisn.vAPTGbkzlspCK7GQVjg9hLrtnOwhhH6', '101586', 'admin379150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(614, 'admin380150', b'1', NULL, '$2a$10$.JiG1cWE8jlY5BGhqkMXn.TSRs4qBD2GuKkGRggiGvCXGpO6dxQvu', '101586', 'admin380150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(615, 'admin381150', b'1', NULL, '$2a$10$oKH2DwAdFzQMSXwXKYxIbe9QI.r/NYpbJ.nJ6VmATkX4YgvTA7ZbK', '101586', 'admin381150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(616, 'admin382150', b'1', NULL, '$2a$10$AEUeS3YVpm9rpkhncpos7ezJYNP88ajUhJCeyd9yDutdv8Ua5jCHG', '101586', 'admin382150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(617, 'admin383150', b'1', NULL, '$2a$10$GP8JJkL92P064g0BWpPlR./Filqh.POHb3y5m/JyEVjoT4LmsFjq6', '101586', 'admin383150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(618, 'admin384150', b'1', NULL, '$2a$10$uSWsH/GyL0oGFPIE9nNzzeCETE7YVpH3B9704WdbcdGGFzGwnwkYO', '101586', 'admin384150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(619, 'admin385150', b'1', NULL, '$2a$10$QE0di4Y6UwNhnEBuBe.ux.dSRVWv9ATozSdUyphO8/FhZZnl8Mc3u', '101586', 'admin385150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(620, 'admin386150', b'1', NULL, '$2a$10$eoJ8mLgrcx8yJj03fxWzzu0jZL3n4s0WD9spd2/2GPR6k926yoAji', '101586', 'admin386150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(621, 'admin387150', b'1', NULL, '$2a$10$vK6DVAhMonHJsK73A6J.7OYbpF027uRz0MvDDUk5SeakXLyHKxTsa', '101586', 'admin387150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(622, 'admin388150', b'1', NULL, '$2a$10$YUeD8OOAf3jwAyXvx0ayXemDqFpBDEC57Rv.emTH.W04LeveBjEbK', '101586', 'admin388150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(623, 'admin389150', b'1', NULL, '$2a$10$cKRHkEFrzF5AtCx8QPrM.evsfaygSqKP.KeSFKroJahAyBH2iQTEC', '101586', 'admin389150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(624, 'admin390150', b'1', NULL, '$2a$10$hHdY3ge1xnEytNpYmgdvYeYJMqZTlBVogU4lJyZP4IYdXB8.EPSXu', '101586', 'admin390150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(625, 'admin391150', b'1', NULL, '$2a$10$aQq71hgb9HBU2j58EZl6auevcbQOOsqpoVupFvRuW9c3oFptjK7bK', '101586', 'admin391150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(626, 'admin392150', b'1', NULL, '$2a$10$fvYMVTifvmB2b0UfrHm30OJ12G7BAQIiGG26vpxNU45FoNuu9R./O', '101586', 'admin392150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(627, 'admin393150', b'1', NULL, '$2a$10$jTNm1O7l39VgJmKyGYpRhOG5Vaad3rU1kDOSe5phHUQ1cPTtdkO9q', '101586', 'admin393150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(628, 'admin394150', b'1', NULL, '$2a$10$YM7pUYizBsl6kBCyQlVxlu1K2kNs0TkJVzB9Rd31JOuuVAbN6t0QS', '101586', 'admin394150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(629, 'admin395150', b'1', NULL, '$2a$10$hue0ZYRCnY2T13mnbV6FH.pYxOylkKT2Bb7YA861bKYRDIFPcjA7C', '101586', 'admin395150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(630, 'admin396150', b'1', NULL, '$2a$10$ZfpGetBLgKWsRwj5vKxpLuQyOIxcbFipMTMxlzcYymcCVbUY7.9Hi', '101586', 'admin396150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(631, 'admin397150', b'1', NULL, '$2a$10$1YRV.hVHvNgnoGQNWai6yONKMe.uhy.XzUGhUisHGj.1IpK.VEAme', '101586', 'admin397150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(632, 'admin398150', b'1', NULL, '$2a$10$T35RA0NH1oXaw9UKcqPLOu3htIZlVs4MnJbZM1WqaxKMvMVKEL2we', '101586', 'admin398150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(633, 'admin399150', b'1', NULL, '$2a$10$MVhYUTYT8tJRIpAH7gO9peudBpHluzOgXgLPE1BLpbFzxC2/dM9A2', '101586', 'admin399150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(634, 'admin400150', b'1', NULL, '$2a$10$MmKCFqu9mso0DDzW774.LuixWc1hob8YtS6eLZxNritkjcl6G7Jpm', '101586', 'admin400150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(635, 'admin401150', b'1', NULL, '$2a$10$iz0ZDIQmRuo/qeuJhNSEnOV.jOLcRHBgcyULsM2V2EFww/17lZY6y', '101586', 'admin401150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(636, 'admin402150', b'1', NULL, '$2a$10$3fbHWDE4gb80pV5yCrl53.0Ffgv1D6.knZzhUGFvxcMHZE8f3mtFa', '101586', 'admin402150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(637, 'admin403150', b'1', NULL, '$2a$10$gBvpDy8Zfzak7C7VZpnPA.hMdt1mUFKiysWUVxIc2AOxhv7nUH7OC', '101586', 'admin403150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(638, 'admin404150', b'1', NULL, '$2a$10$qpphUaMtJ.yU2Sqf5js9QekamQnwVT4BjH4v9VGEZcwK47zEaD9nC', '101586', 'admin404150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(639, 'admin405150', b'1', NULL, '$2a$10$6u6Az3jteb0/X7Zqq2i55O6Tzgb4t0p4sD47IerR6b3t/s1boXltu', '101586', 'admin405150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(640, 'admin406150', b'1', NULL, '$2a$10$NBa4nVKkOUXuciKFFeC1rOYu6vnkhwgjUOycySLvWGDf5mr101Pq2', '101586', 'admin406150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(641, 'admin407150', b'1', NULL, '$2a$10$mlQpo30n5Vxj23oKGs/BMuiTzfYqTqw1zfY3DyaqILoSFdfBSQfe.', '101586', 'admin407150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(642, 'admin408150', b'1', NULL, '$2a$10$seXvVvx3vnZGwrgG.rugUul2OQhzzTdRNu85UMk54.GiD/d0tmpTu', '101586', 'admin408150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(643, 'admin409150', b'1', NULL, '$2a$10$gf2jGStU3m4DQLUrenXbsObJoKSpa5Bu/2t4gXjjk667syuVrAUqq', '101586', 'admin409150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(644, 'admin410150', b'1', NULL, '$2a$10$6lemzIDnEyiqAd6CfIv4keTnSMNM4.5MbH.PKU/il.AA7GkAuzceS', '101586', 'admin410150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(645, 'admin411150', b'1', NULL, '$2a$10$BfXlzCWiD8HZNMjO7ikpa.vozc7qaCvSfIZ1m7GesVfCJUZg4VVEa', '101586', 'admin411150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(646, 'admin412150', b'1', NULL, '$2a$10$NT5WlIPzZ3oWNzCiJYs1a.a1KwtwBukUdL4PJJwPsn2eQZxmgoNJ2', '101586', 'admin412150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(647, 'admin413150', b'1', NULL, '$2a$10$NU81dWxOjoKF8wSniEjyBO9GVUuB9z7.azxYW521PoZJhhgzIn4Oa', '101586', 'admin413150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(648, 'admin414150', b'1', NULL, '$2a$10$nlKk8h11f4pplRSTuqvJMOhcWii1p4qTBzvUCBkZqfWCaU5H1SbR.', '101586', 'admin414150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(649, 'admin415150', b'1', NULL, '$2a$10$gD62XSqFYOnimp08/hqFke1qhr1VdPuYxJXkJzJ4J0YHBkx.VZVha', '101586', 'admin415150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(650, 'admin416150', b'1', NULL, '$2a$10$7EGjHzi8cOtPbnG/s47zh.Z.E70rpkTyfHcFlxKfHhGKJgoFLRXYO', '101586', 'admin416150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(651, 'admin417150', b'1', NULL, '$2a$10$UANUg16aFhx5V1.IYVI//elhfhxyAYlpCXk7rXCTSIJ8kWtiLci9u', '101586', 'admin417150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(652, 'admin418150', b'1', NULL, '$2a$10$8Sob3rbDRWHrinNofyhxw.yWBBy5gZsKD43ivhqwjj/4lWuI6B1rW', '101586', 'admin418150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(653, 'admin419150', b'1', NULL, '$2a$10$pOHzXjpDNc0lkA.SCr6rdOvEZzGqfmgcckqeKqhaSOq/DX9Kev4Dm', '101586', 'admin419150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(654, 'admin420150', b'1', NULL, '$2a$10$MmjRYApBU6XSXk/2nTVIZ.HiLRWhCj142DyQUzByPGuChSJcsHMuy', '101586', 'admin420150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(655, 'admin421150', b'1', NULL, '$2a$10$vYlzJZnGArU7PiwYSzMH.uFK3Z.g.n8QvadRjUz39u78aFZF/UwZK', '101586', 'admin421150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(656, 'admin422150', b'1', NULL, '$2a$10$cPopXvPwSJyKBVo.QkVZzuVuEqQpuR.lnApPIHOBDSHMkCvpg.Apm', '101586', 'admin422150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(657, 'admin423150', b'1', NULL, '$2a$10$z7GVsGeucbEc21sG/M25w.SK6dv10JqkYH3RbCO/3lghXAQN5OHi.', '101586', 'admin423150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(658, 'admin424150', b'1', NULL, '$2a$10$3JcfaXZVoE3aEFPhEUt/oOoTY588VhesZEmGF1jAU81YKlPlIi/1S', '101586', 'admin424150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(659, 'admin425150', b'1', NULL, '$2a$10$z8chN6vnI.fahQLSP.N3FeUyfx1FSx0LQ76y9IGOvJ1wjtFoUsZHC', '101586', 'admin425150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(660, 'admin426150', b'1', NULL, '$2a$10$YDiVvWWjayP5sQJ6WoFr..S42z7XA0GmL6ojOAasbgVIWUOfrwaei', '101586', 'admin426150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(661, 'admin427150', b'1', NULL, '$2a$10$iPwak4TVPkM3yLr2zuTmQu2H8aKFVodTfz1Ceb66jzujX5LrOgyUK', '101586', 'admin427150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(662, 'admin428150', b'1', NULL, '$2a$10$ssoj/X.VoYAszKJg3GPDt.Xp9F5loq6etvdsb3wc79gyEc1MebK3K', '101586', 'admin428150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(663, 'admin429150', b'1', NULL, '$2a$10$5KUqOG/.6/b/L941vDkt9uYh4ZBKD1ONlchx1GX.fF9VdKXFV2XnW', '101586', 'admin429150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(664, 'admin430150', b'1', NULL, '$2a$10$uzaI4z1JdyBmQvSlsQsrlOz2WqsDPgvsooQkxwJhQEeE8tfOyveC.', '101586', 'admin430150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(665, 'admin431150', b'1', NULL, '$2a$10$a/9mXpUoNXmST6tMJrtYje6PYD9CISd.pFdJ5YcrCwtpMkvChSO0a', '101586', 'admin431150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(666, 'admin432150', b'1', NULL, '$2a$10$nV2imPKZuWfF2JWT4gO1e.yyH3rD2FvFovIj56ULJKHfdstVh8AuW', '101586', 'admin432150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(667, 'admin433150', b'1', NULL, '$2a$10$SDIBICEZcChj56TwMLS0UuUqvgfOZOSOSGLc8bEtF/zbKCZBo7Gp.', '101586', 'admin433150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(668, 'admin434150', b'1', NULL, '$2a$10$TGCadOMrGnNq38RWwKA3mOu/y8A53YSMAqEOqYQohcXAHK2NasJSq', '101586', 'admin434150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(669, 'admin435150', b'1', NULL, '$2a$10$7QukIHmGjxI3zFdoMi8wauqXn9GOFqUgkULqroU6ywVEmoo2bQZ92', '101586', 'admin435150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(670, 'admin436150', b'1', NULL, '$2a$10$YrAqO2eHpEyLlrb2m27nn.8Zoulq9anXskSL3j8Xow1DSMTXEvtQm', '101586', 'admin436150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(671, 'admin437150', b'1', NULL, '$2a$10$n/24AP7rfE3IisA9QpzrwOLpc34eSCGjruNXI3/nwzB69NA3K/Iaa', '101586', 'admin437150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(672, 'admin438150', b'1', NULL, '$2a$10$Mzsrln8IawKY.BceQm4UZe/mA9DNpMJm7r32ggxnKCwkdiGSS6mem', '101586', 'admin438150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(673, 'admin439150', b'1', NULL, '$2a$10$AGNVXzifPD58xHZzknEQ3uk5PZOhuqr7T1pMSO.16PFuX5Vg3p7PS', '101586', 'admin439150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(674, 'admin440150', b'1', NULL, '$2a$10$rMoqycMsBLY5PGQ/ljxwUe6.toWFy.hZoeRv2Pl3ZPbVZ3zfmaEUS', '101586', 'admin440150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(675, 'admin441150', b'1', NULL, '$2a$10$F8xZS7ZADLuvF2B5w.Y6Eu2h9XHXRFMCVPJLwoFCA.8eDLXAX84PG', '101586', 'admin441150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(676, 'admin442150', b'1', NULL, '$2a$10$e5G4cXEEMP1evQmb03Tk3OOT6FoZ5MiTXkZXMh6rQ3R01PzxEqwq.', '101586', 'admin442150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(677, 'admin443150', b'1', NULL, '$2a$10$r6KTZqBQCRy8YritXrMt.uP4l7J09tIGXJFMNUmS.0iWcKrSj3vmm', '101586', 'admin443150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(678, 'admin444150', b'1', NULL, '$2a$10$WLQOeiUknaWsKVKqES1rKeEaIoN.B568u6pgoJUrDsS797E9Zu8di', '101586', 'admin444150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(679, 'admin445150', b'1', NULL, '$2a$10$unO8wLRteB24wligNr5R.OJr/c3b69cftd6xjuLz6evRT8sZWEwMW', '101586', 'admin445150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(680, 'admin446150', b'1', NULL, '$2a$10$D4divaXYF7SNHGp8B41yw.Xf26kRaH6H5jEcWfymWO/bRjY3GqOuG', '101586', 'admin446150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(681, 'admin447150', b'1', NULL, '$2a$10$yo1HxHgQulGppL91JFV9C.W2K46DJsapV2.OxnRA/zdT7/ZvhBXMa', '101586', 'admin447150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(682, 'admin448150', b'1', NULL, '$2a$10$GgCDmWwyYRopuC71DeDJuetztVm9NCtuvJl6SfPozz0DhYQCtJY0K', '101586', 'admin448150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(683, 'admin449150', b'1', NULL, '$2a$10$dqGpiilst3avvdfsH1TAx..z57G2BhIaxcNFPNrd6OUwCsEHKBfxq', '101586', 'admin449150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(684, 'admin450150', b'1', NULL, '$2a$10$XQ3/swwfRH..0sT/dWuJm.AWT/1MJ9JIQFVQMmt0y8Oklbb/0QQTG', '101586', 'admin450150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(685, 'admin451150', b'1', NULL, '$2a$10$AoBhnVh6BT69k988E0RFNOe5CcCYAgEUBZ/TdqHxt.nXoIXxldUOa', '101586', 'admin451150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(686, 'admin452150', b'1', NULL, '$2a$10$Rg4KWjEXabjNq3SEeOo0xuqvU8GUttxKEDee6ry6ktMX3waCRYjRm', '101586', 'admin452150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(687, 'admin453150', b'1', NULL, '$2a$10$5mqRJYoKDUkEi5.sQqOXYuMPhuHfVmo778SLTiF8b/fsBGhNaRa1.', '101586', 'admin453150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(688, 'admin454150', b'1', NULL, '$2a$10$0qlXPQmGNPWQgkIf6i4OVOi/HGhyrTX6qV9ovsPQcas37D62YD75a', '101586', 'admin454150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(689, 'admin455150', b'1', NULL, '$2a$10$yRscNGNWg/yMXK51wE8B5ub1/Ebcv6RLqtVe5ftZohx94qoeb0WPC', '101586', 'admin455150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(690, 'admin456150', b'1', NULL, '$2a$10$F66baaMWmprBNmr.CszGlu55sGW3WjH2Qit1jI/FqS/AXdSqWoUm2', '101586', 'admin456150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(691, 'admin457150', b'1', NULL, '$2a$10$7n8mcR8I6NWtbCkRy5Hao.bWDJCkedN11sbHbJjPtrmNkFXohvETi', '101586', 'admin457150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(692, 'admin458150', b'1', NULL, '$2a$10$hsCvdkLtOX5r7IkU2zH2q.XMC6TWVM24ux9aLZxPMRf63gj96x81O', '101586', 'admin458150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(693, 'admin459150', b'1', NULL, '$2a$10$iArw6PQVtcBeOJXwFyZec.faSN8LXBKxU5C9qhMNySf3wgWu7LDVi', '101586', 'admin459150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(694, 'admin460150', b'1', NULL, '$2a$10$HjjyeeaIh3Ulq/XnUcIp3OGvHfZ9UAq7VDJCGGcGMbn.0D.7YjSF.', '101586', 'admin460150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(695, 'admin461150', b'1', NULL, '$2a$10$RLiwoHj.gT4GjGYzbtgC2.9XbDBb6pQTWNI8EP4hRg85u6bogY39K', '101586', 'admin461150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(696, 'admin462150', b'1', NULL, '$2a$10$Zfzpr/WtonDxom51mAih9ezBqLBT1nKDaDOl88FldNzW57uY0NA9K', '101586', 'admin462150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(697, 'admin463150', b'1', NULL, '$2a$10$SmO7.FvXUtEL11Oe3qzMs.Z.t10CVeSElVE7Kt.E1YKGcbjtthLAu', '101586', 'admin463150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(698, 'admin464150', b'1', NULL, '$2a$10$zKoClhmGj387Ys4R1oUfNOoGe8mtYYlnndpqDLt0PufbFQDJHPGB.', '101586', 'admin464150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(699, 'admin465150', b'1', NULL, '$2a$10$AChgOhLnN/Jrtzu3cw936eKMZrmpqokwtDDxbFvqZZIRTc13o7yVS', '101586', 'admin465150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(700, 'admin466150', b'1', NULL, '$2a$10$62H62qW/jVFmk7GUoJLVm.CKeG3tHf6Zu.9Rt/LxJNAYV90Bv7K6G', '101586', 'admin466150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(701, 'admin467150', b'1', NULL, '$2a$10$PFN6Na0/InfHDPe82P9iVeuUnKnuwet9L0wto4sd36o.aB5K/6ymq', '101586', 'admin467150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(702, 'admin468150', b'1', NULL, '$2a$10$kwhLXc2dxiIJwr6Gb9SBluYUtJY6BMTDrPAob9jshxkVVTzs/ITXy', '101586', 'admin468150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(703, 'admin469150', b'1', NULL, '$2a$10$4jxtYB1qW4ohcc51jcN0/OTxb5OXXVU/MkgBevJMmCF39LoVe0HIC', '101586', 'admin469150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(704, 'admin470150', b'1', NULL, '$2a$10$x/QYc3IxTFKnahnSnR2U2us.hA2paPmHo1PID/AtVblOFmd.RVn.G', '101586', 'admin470150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(705, 'admin471150', b'1', NULL, '$2a$10$qSXmJKUWQsZREJC1PYlI8uV3iUtqDj4VWiadd1fJasgWnDO9gDSey', '101586', 'admin471150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(706, 'admin472150', b'1', NULL, '$2a$10$3DtlDp/Js8sNMRuwItr.J.nb8yL7ZfVkkwaZY7KcipyBvdHomN7cG', '101586', 'admin472150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(707, 'admin473150', b'1', NULL, '$2a$10$jeB1jgLQlhgOjhILKkz98.DypU4FHIppBZDN44ycBNdoRc0TVYi8e', '101586', 'admin473150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(708, 'admin474150', b'1', NULL, '$2a$10$HE6mUSUmrlCnSRqxzmxVeewQm7EL8bC6ukQ3Yyd.RJiEZ5trDnQpS', '101586', 'admin474150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(709, 'admin475150', b'1', NULL, '$2a$10$o.RYfo4lbL9UbiMp4rLc2eBKU2NtVdNB4bifhyc8QqWDw0H253kga', '101586', 'admin475150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(710, 'admin476150', b'1', NULL, '$2a$10$kwVzh6Uns6Y4JRs4chGpJuBT1Zpo4.RE35U9hlNjEVgQiCvG5Po/q', '101586', 'admin476150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(711, 'admin477150', b'1', NULL, '$2a$10$Ui5KAQT4BtZ2egelpW/7FOv1qgNOLuj3G0Etg7hAVF19zPvzAyx36', '101586', 'admin477150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(712, 'admin478150', b'1', NULL, '$2a$10$4Klpa0uap/lR2EXpIkXFVuvcxW0zDG2H197jKgNK7qvozl4A7.Ggq', '101586', 'admin478150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(713, 'admin479150', b'1', NULL, '$2a$10$cmVYSRdEnxRP/k6LMMKwyOINizQ/tGG2EBK/3t.1fFL6yB/4PA1nK', '101586', 'admin479150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(714, 'admin480150', b'1', NULL, '$2a$10$KobERpQgqsH3F9s2gVrBFO6eN5XMjglRBftEDHvux9ZhqOYevFZKK', '101586', 'admin480150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(715, 'admin481150', b'1', NULL, '$2a$10$EbpoqB9ghW1R8FscmLO6PeavRh8ZJF6nCsvk4HUShF6lwzr/mYpoa', '101586', 'admin481150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(716, 'admin482150', b'1', NULL, '$2a$10$NCyYQ6GV9ZbKLhH7HTvaQOAEDbuPmjAOgXoea9qjftNHq0CUeDime', '101586', 'admin482150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(717, 'admin483150', b'1', NULL, '$2a$10$5jveGbprqVtVYhoNs84Wq.XvGf9yEVVM2t7r5vI/aKcvFzO3Ivuvu', '101586', 'admin483150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(718, 'admin484150', b'1', NULL, '$2a$10$sgMmKua2aObbMdXTD6d2ne2NUkyp4KqyFdXfWg.aSvvIEL2OdpIty', '101586', 'admin484150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(719, 'admin485150', b'1', NULL, '$2a$10$DinZ.EGAmiS7PPzj40xwHeZ3DckrUdZblpXi3Cd0tGM5ne06CpFiy', '101586', 'admin485150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(720, 'admin486150', b'1', NULL, '$2a$10$hs/uVa.BuAr9gP9cIPn.wOQahp5ZMrg9g4Iqth5LdL9syZLkrI4AO', '101586', 'admin486150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(721, 'admin487150', b'1', NULL, '$2a$10$F9gV727C473298kIftXt3u//w3s0La2N40QWkqXeVglci6c909g.q', '101586', 'admin487150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(722, 'admin488150', b'1', NULL, '$2a$10$53bmlwg50QBvpa7u82hE4.u9BLZHWafsUsHUAS/skaYnczpOstGWa', '101586', 'admin488150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(723, 'admin489150', b'1', NULL, '$2a$10$z2oa6/WrgHGNwvrhgrSBFu3Y.5A.R8wI26fSLGs9KN1LDWnWaia1W', '101586', 'admin489150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(724, 'admin490150', b'1', NULL, '$2a$10$xDJ2EFn/8TmKaF4cq80sfekV32CGwT70QMlrgKsWQfa2wJcuLFY0S', '101586', 'admin490150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(725, 'admin491150', b'1', NULL, '$2a$10$q48p/REHpFK0AtqeR49iYuTAeyOtsAM7LnXa8m9ad4K9/2v6Vl2Am', '101586', 'admin491150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(726, 'admin492150', b'1', NULL, '$2a$10$C/xAZW/PmokBK3l1ORRIMuLyOj9Kv2SjH9GRqemj5u09GSDN/v9XS', '101586', 'admin492150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(727, 'admin493150', b'1', NULL, '$2a$10$BdXVbWynFQHnR5Nq6C1fieFpDnDvmo4/GEIpspuzeZ1oQ9ekVIBpq', '101586', 'admin493150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(728, 'admin494150', b'1', NULL, '$2a$10$566JdMYEs1fIKJxZe7zvOOgOk9vj.AKNPhiZKvs2gT29d/iS9Qeke', '101586', 'admin494150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(729, 'admin495150', b'1', NULL, '$2a$10$pJVQa0VvVtPgmxqZrtMieevdMoqk9yfaUYRmVdtPydudu3VTeEL7W', '101586', 'admin495150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(730, 'admin496150', b'1', NULL, '$2a$10$KEIuUDgg.NOLLSFcgbRIBu92nI0D3q8s5M6Ed1Y.CLPCEGU1f/nA.', '101586', 'admin496150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(731, 'admin497150', b'1', NULL, '$2a$10$Zzzwrr6dw5QgsKyTgY.yo.19c91WHzxaEsBDK1znf8oiGulMWz56K', '101586', 'admin497150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(732, 'admin498150', b'1', NULL, '$2a$10$kLmysdJ6jLng3WNpagbVPOfx.zsuTGJQZTf4f.F6POfaDECRLNGg.', '101586', 'admin498150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(733, 'admin499150', b'1', NULL, '$2a$10$V1nevMAy62UScgfFTUF.ke14mR2mspnyplXelj7ksX12M/wAiNkcS', '101586', 'admin499150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(734, 'admin500150', b'1', NULL, '$2a$10$h5Yil2oy/UvsJcR2OrfXOOGn6f6vZyzH.rudnX5aX9yWUWU9M1VZS', '101586', 'admin500150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(735, 'admin501150', b'1', NULL, '$2a$10$FVAMfFHrjtVGdvzpWoI.weE4fT2SqEhggn4ieWHw1lHZIXDRL6N5C', '101586', 'admin501150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(736, 'admin502150', b'1', NULL, '$2a$10$E1uwnBKFV5mfnwaunm6dkuMefKKCeqcS/0nhBLCMMTwwzqjsLqe/G', '101586', 'admin502150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(737, 'admin503150', b'1', NULL, '$2a$10$eBHhc9NPeIub2aeil5.6Nud7rnDWr9h8UPyNfTSaFN1J/HPug7fO.', '101586', 'admin503150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(738, 'admin504150', b'1', NULL, '$2a$10$90o475ldHLl8fyI.NpSQtOo2ADkAxxTQlJQhOhj7J3Hs4aqkX1oNm', '101586', 'admin504150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(739, 'admin505150', b'1', NULL, '$2a$10$as4Z0SeEcPM4QiPfh31Goej.kMwrWLz3/noCDMgxhKTjQNleBosJC', '101586', 'admin505150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');
INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(740, 'admin506150', b'1', NULL, '$2a$10$pFK/M3qC9/fmOE.zI/V0NOyBkM5Y3ymjSnIy74iuwBz1NjZRaZDwG', '101586', 'admin506150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(741, 'admin507150', b'1', NULL, '$2a$10$2v.10I8e15NNsbmVdCJoluSy8GVL7HYv1aKYvib28HHyDADAdmyWi', '101586', 'admin507150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(742, 'admin508150', b'1', NULL, '$2a$10$E8BXMJ2zec8vuTlo0hd.ke/9a8xagsQ5v4KzBAyedz9Q0HI7G41ki', '101586', 'admin508150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(743, 'admin509150', b'1', NULL, '$2a$10$JWMMlwcoXk2cCeN4KD1vmubsMkZGh.cWSETyijpzE0QAFCiu34igS', '101586', 'admin509150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(744, 'admin510150', b'1', NULL, '$2a$10$W4i9enQHFu103b8drMLq5.VOxXYrNAmr5/0a9YDWmNYzoJd9QwSmu', '101586', 'admin510150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(745, 'admin511150', b'1', NULL, '$2a$10$4RjlaU3pda6Kf10QObuuZO.qQyFe8VoADuZP55d3u0eTVm5L5Ihwi', '101586', 'admin511150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(746, 'admin512150', b'1', NULL, '$2a$10$VyLWTPeU.wY/4xQYnwS3SOH2supheaqMwhn8kQpZada/xs1nunBfK', '101586', 'admin512150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(747, 'admin513150', b'1', NULL, '$2a$10$uHpokpH0llFRvuKxnR142OX7XKX2CVZS02pOHq/uDA9t.OouZMtgi', '101586', 'admin513150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(748, 'admin514150', b'1', NULL, '$2a$10$QMzL/h48z0E6LbqZqGiCYuU2Rp0ZuS3yNT0tb3Oy9EfX3xApwD4OS', '101586', 'admin514150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(749, 'admin515150', b'1', NULL, '$2a$10$yOiFapf/5HsAUyoIro/e3eM4IgoGZ1VPnrvsH/AvU0SXIQEC6OMt6', '101586', 'admin515150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(750, 'admin516150', b'1', NULL, '$2a$10$sMOD9RDA7VXH8vdXvz36N.O.ucETU3OeADCocyZ77FHyc5D66ofn6', '101586', 'admin516150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(751, 'admin517150', b'1', NULL, '$2a$10$v8oHjvDiE/hsMd938c9mpuHBgs5TCkOoiJ07ZP7dF/oiwEKeymrZK', '101586', 'admin517150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(752, 'admin518150', b'1', NULL, '$2a$10$wKtWnTRh9Nyl6.GwdC1VquP7j5q1XXCZ2TT3YEFojDmQkD4ItEvQS', '101586', 'admin518150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(753, 'admin519150', b'1', NULL, '$2a$10$uFcp/YGZ4DzdoSpmN9A/Q.sN8s/MLWQwRAn6uyhBAQpI4kS9Pm0ii', '101586', 'admin519150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(754, 'admin520150', b'1', NULL, '$2a$10$ze.Qchq8wPMq4UoKYNuwe.FoeRVfeLHw2Hy4NtDdjRvMAlGmKKiiK', '101586', 'admin520150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(755, 'admin521150', b'1', NULL, '$2a$10$A/em1mkCVZKD0rlt966Iiu6BQsazVoLaiXxqx9uvf4q0YDL.J0hri', '101586', 'admin521150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(756, 'admin522150', b'1', NULL, '$2a$10$vd9mQl4mDpjlM6bFZohfweBH5abC/UD6.cahYnNlacN2L7Z3RhjVa', '101586', 'admin522150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(757, 'admin523150', b'1', NULL, '$2a$10$pkC9zY5cAZKk5GdEGSMuJOivouKqejTI75aRnGZdrsJHLAjI.ruT6', '101586', 'admin523150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(758, 'admin524150', b'1', NULL, '$2a$10$p10duf48Bmt.z09H77SSneul74UZipZUnq/8cS.mfh7BQByRi71Ly', '101586', 'admin524150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(759, 'admin525150', b'1', NULL, '$2a$10$XQe1M2N9z8g4egmWokzgUO8cgR8O.9t9lin2VQu47uSvy4fvznqb2', '101586', 'admin525150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(760, 'admin526150', b'1', NULL, '$2a$10$T96CWlYWVMR2jcTJFjlvNuWA7sLz838LI5D6onccjjfUc85.UefT2', '101586', 'admin526150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(761, 'admin527150', b'1', NULL, '$2a$10$0ykmU9PBJu1WpHkAUWa2seAMVcfyi/hTIe78kcfBecXGqj9DDNPaG', '101586', 'admin527150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(762, 'admin528150', b'1', NULL, '$2a$10$D8g7SV7wwabCAQCgfcYDy.pl7pEX1OX8gifRoCEzvqHxG.0qaw8t.', '101586', 'admin528150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(763, 'admin529150', b'1', NULL, '$2a$10$2s2hX7Y/iJ2v4UqavZ533OIn/oxzqjBfpVTTAfj4nC0h7/v3XGdLC', '101586', 'admin529150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(764, 'admin530150', b'1', NULL, '$2a$10$HE7VSaE.SA9nqlnge2Doh.lfxSz3N2kOyYwdR00eTjXTzi0FaUT2m', '101586', 'admin530150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(765, 'admin531150', b'1', NULL, '$2a$10$iLcCx65LoAT.IDucl3tOE.REhzRJ5i1fAJZAsOxzoJsq77wlFY1tS', '101586', 'admin531150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(766, 'admin532150', b'1', NULL, '$2a$10$kvcKX6.kCS/MTwQbWWhbw.HJpmpEKEY9GwEDWD48EsSpnk2vfY.S.', '101586', 'admin532150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(767, 'admin533150', b'1', NULL, '$2a$10$UT7LoEui6jtj5qOFZ3hxTeSor8BjUdnehzsgnvGWFH1ldOdPJINOO', '101586', 'admin533150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(768, 'admin534150', b'1', NULL, '$2a$10$y3IjAgTazEDb.E5MC0TflO/aVBOvl6Ri0R.TI5UdmjCKmqnjc/8ti', '101586', 'admin534150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(769, 'admin535150', b'1', NULL, '$2a$10$1vwDjd.ne7NLEbmOj2PkIO.97IRoeEEzbU7h0FZ7/325hsH9veilC', '101586', 'admin535150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(770, 'admin536150', b'1', NULL, '$2a$10$D7b4Y39EI90Uqk/FWDSIJuuSFY.jaOUT9IK3X.1Enj2eXQaJx2YxC', '101586', 'admin536150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(771, 'admin537150', b'1', NULL, '$2a$10$PC433/5IsLJD2z6.Rr7qzOc94aFjxfLdSai97DpFXw0UV31AKdDMq', '101586', 'admin537150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(772, 'admin538150', b'1', NULL, '$2a$10$ebw6GvS7tZwyRzX.jqkkFuwDAUiilE0tCzeV1u6JR3XzaLm/z6YwG', '101586', 'admin538150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(773, 'admin539150', b'1', NULL, '$2a$10$yX86vBz1JgQJiXQsMmN7xedqzC4p2NKxgpwaDB8UfVEQypCQt/jRq', '101586', 'admin539150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(774, 'admin540150', b'1', NULL, '$2a$10$xZN0Lhl9rEaXZ1jAx/BikeRK/af7MAmn9zRqbnV.Mgyfz5qtv.Km2', '101586', 'admin540150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(775, 'admin541150', b'1', NULL, '$2a$10$GJZ6pgVYMloV9aV.bm8yDu567W1lqmLYDys7YAqu6N0Oi4RRAgECW', '101586', 'admin541150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(776, 'admin542150', b'1', NULL, '$2a$10$3lFIXtIUGZOXepwQhVHLV.1BxNVR.aT16KcqNimK6LJIhZzGsEskm', '101586', 'admin542150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(777, 'admin543150', b'1', NULL, '$2a$10$DdwUwZvCgbSt1rqXO2G9.OGtySKH0vfior1LrM/PkLwC5SU27DaTS', '101586', 'admin543150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(778, 'admin544150', b'1', NULL, '$2a$10$KZ2IIFrjcQbL/qwDZJ0ZC.DFVK9PHJoA1WFx8wyKSEbfkRarF/7ZS', '101586', 'admin544150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(779, 'admin545150', b'1', NULL, '$2a$10$xcVXf//gPor9Q7Xcwc3qWO4TrsT6gLWTvu68DmfBS1qodYWe5mQ8y', '101586', 'admin545150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(780, 'admin546150', b'1', NULL, '$2a$10$kJYJunX9sxVHQmJ7oXcGbeqs3fIq3wYPsxBb6E7TGny.nZ2q67HUW', '101586', 'admin546150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(781, 'admin547150', b'1', NULL, '$2a$10$E6YDWF9RhN/fom/VCN3t7ewfGHuw5LfhQMZggT5uifluDZ1PvInTG', '101586', 'admin547150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(782, 'admin548150', b'1', NULL, '$2a$10$3bmxuBaezKxWKi59jeGld.NizJNF..cWWuHfpGpFK.SMXHLw3PinO', '101586', 'admin548150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(783, 'admin549150', b'1', NULL, '$2a$10$zK0.uy5pvkaBZBJ6KDNeteS7M7C6AxYIoUQSVtd11.a721PR/VBPy', '101586', 'admin549150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(784, 'admin550150', b'1', NULL, '$2a$10$ClPcuu4/pojw6.E8.Yf8duEZPGZ0DyJG4SRbjgWe/8qlgnrxNPcI2', '101586', 'admin550150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(785, 'admin551150', b'1', NULL, '$2a$10$8YFVmQ9MrbIt8jRVp2.pbOHJ9ZQahe4SpJtFKAkVQH0BCOra9Rica', '101586', 'admin551150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(786, 'admin552150', b'1', NULL, '$2a$10$iE8NtAy4Hld8jiexcfC.7OLyk1XU4gLKM/0.60GGKbkvkoGA4wx5O', '101586', 'admin552150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(787, 'admin553150', b'1', NULL, '$2a$10$DPdbkNGQGP2lwnELc.FHIuY2nK0J/9XCApnYJ.GJK4CoSuDgMupT6', '101586', 'admin553150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(788, 'admin554150', b'1', NULL, '$2a$10$eHWloC.hpPTqA0VCmWBICuAU1lkp7hsWPJJIoftCOxNcX5L7d9tr6', '101586', 'admin554150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(789, 'admin555150', b'1', NULL, '$2a$10$5M94gCSo4Yl.4JJqTzAX4Ol8.s0OUi/adqK6lB8/A.ZeK2w77w1hy', '101586', 'admin555150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(790, 'admin556150', b'1', NULL, '$2a$10$u1iS4Bl0AdGV9lE0FdUJSOEfEJ99GIrUedAZDhPD3iBEkyvkjG8k2', '101586', 'admin556150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(791, 'admin557150', b'1', NULL, '$2a$10$Ek4nJSppMovyvfSgOST2e.JuRJCJjfkLXVnPSVcSN0ckRt6046E3S', '101586', 'admin557150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(792, 'admin558150', b'1', NULL, '$2a$10$X9BHHXqWuaHYvX7tbZBPGulG98ZMJSIQR8M91gW6cf8v5VvEFNc7K', '101586', 'admin558150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(793, 'admin559150', b'1', NULL, '$2a$10$fY8lUo1iOQCfd7YxRfUDLO2xiL9.8DE4omw74Ghgif3BJShy2D6BS', '101586', 'admin559150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(794, 'admin560150', b'1', NULL, '$2a$10$JsY9jg6jGdg/M.LBNYGoLuNJj5k7LyzpWH3hhET8fBsqEMPvyuRIm', '101586', 'admin560150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(795, 'admin561150', b'1', NULL, '$2a$10$mxuDYWC93UgQ8.wI/iuDHe4/XLm8H4HbVR0iMfnPHCzv2XLave6v2', '101586', 'admin561150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(796, 'admin562150', b'1', NULL, '$2a$10$28aw5KRls7JdQpnpMhi1/OgmQSbfYTBNwGlYuydCLYqBPe4Z.Imae', '101586', 'admin562150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(797, 'admin563150', b'1', NULL, '$2a$10$JkIYvjC9csyUYjsqHNo2yuC1ZU0Cdu257EnfW93tqBoONEguG83pO', '101586', 'admin563150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(798, 'admin564150', b'1', NULL, '$2a$10$lwLf3wDsJz9ApDMrQLe8oe2blItPhug0vDzUV37IDbdvZkNVoYOxS', '101586', 'admin564150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(799, 'admin565150', b'1', NULL, '$2a$10$WN6o.TZC5GTITv4kM4oW1.jMjRmJ76SD/ZItZqbfsdHzPARakh2A2', '101586', 'admin565150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(800, 'admin566150', b'1', NULL, '$2a$10$KV0Yva05Nsi1ZTj1cA0.Q.weoXS4fDkIQFwuoTgJzLv0e9w26CCsG', '101586', 'admin566150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(801, 'admin567150', b'1', NULL, '$2a$10$TX3Z8lwWH0DEye/sjHtVmejAEqlmmGltyL3bKjqGGMWnEseidXKHm', '101586', 'admin567150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(802, 'admin568150', b'1', NULL, '$2a$10$KWeZK6qk2zHslI51XBmXoeF8I0YbAbhpfaj1gsVwAfYeaBqJLL9ZC', '101586', 'admin568150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(803, 'admin569150', b'1', NULL, '$2a$10$mH5xTsqBGmSZBBlI18mQhueYp/W4Qvr7nSQYYKIaYjZMMTDNztH2W', '101586', 'admin569150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(804, 'admin570150', b'1', NULL, '$2a$10$hUkBT3WR8H/fNPA5qsFftOOLHWMivAWKTCcO8h3M8xa6pqzxbB6He', '101586', 'admin570150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(805, 'admin571150', b'1', NULL, '$2a$10$Zn3FvT57.lImKaQl3FFR0.9Ekhi9bS9Fk71C7CBmqFtsp9ZgrbmDO', '101586', 'admin571150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(806, 'admin572150', b'1', NULL, '$2a$10$j4ryFfHI.R36E1yt8waj3OjudjjcetPRa1I.aPO8GyspKPLCPz0zm', '101586', 'admin572150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(807, 'admin573150', b'1', NULL, '$2a$10$8oR5388Z7hzNm216tZtdOOaBf5Q1G6yh3wgCJ7/2qi1z2NG5uTfe2', '101586', 'admin573150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(808, 'admin574150', b'1', NULL, '$2a$10$n3FnkIB1SZDc7GclEJPxlumbhHEJMjbLlCDvahK9/rRrWxz0pmSV2', '101586', 'admin574150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(809, 'admin575150', b'1', NULL, '$2a$10$5OIjh2HTnky1lut8GYfNfOL0st0tJSG6BhEnV6N08MRwV9llib1MG', '101586', 'admin575150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(810, 'admin576150', b'1', NULL, '$2a$10$Mh1l07O5LnbFC0DnY3CZa.o.kv1aM5oIQy4xlQsOT2R1RZPSPXi6O', '101586', 'admin576150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(811, 'admin577150', b'1', NULL, '$2a$10$3poto/jNom2/s.yyajAWBuM2abhNrbX9h/JG85yyhDyxFza9UCpSW', '101586', 'admin577150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(812, 'admin578150', b'1', NULL, '$2a$10$HTg4pgGyzMx9.4ec4LVV0.lWy4VQD//xfRpV1CJLC92brpzv7GYHy', '101586', 'admin578150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(813, 'admin579150', b'1', NULL, '$2a$10$tIDW8wGHGbbZggst9tSuPONNQbXD9Gpd3UEpMYIk3Mb/TcQ2.J7dW', '101586', 'admin579150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(814, 'admin580150', b'1', NULL, '$2a$10$86h4oY3fmtKzoQE5MnIi5.Szu7IdO1C37jtbP1M5OwnSNpjlEUS5S', '101586', 'admin580150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(815, 'admin581150', b'1', NULL, '$2a$10$AgvRoANrYQ8mefzmOo6d8eG9dE9Nz.YGsQYP70qZsA8n2Gc30NKpO', '101586', 'admin581150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(816, 'admin582150', b'1', NULL, '$2a$10$f/K4Y.rGg89BHz6MtHb2JuPfWuIoT9quMGc10YRY9JZ7YYXcneQle', '101586', 'admin582150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(817, 'admin583150', b'1', NULL, '$2a$10$oQJ.0T26lpRJsAqzTeigIuiFtP7AW41TnbLIkhMj0sKDGrUqJ5ChW', '101586', 'admin583150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(818, 'admin584150', b'1', NULL, '$2a$10$1A/FeYPKsWKFYiJJ.PkNE.VAljsfQBkeA7JsaFy9/y/z9hStMDmTK', '101586', 'admin584150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(819, 'admin585150', b'1', NULL, '$2a$10$9YK9UWOR6ovbj07CpiksMOtC4lWJtVKfyYELrVZfy2kVNBJ.Hf0p2', '101586', 'admin585150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(820, 'admin586150', b'1', NULL, '$2a$10$KQtecKnHtksehEIP4NvbheMCL0TF0.QvyTSSOrCipvINXhoNg5pJK', '101586', 'admin586150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(821, 'admin587150', b'1', NULL, '$2a$10$19frS13oesFded22GpqKMO4/2Mq.UhiH9cQToBOYVhd8XRFUEJcdm', '101586', 'admin587150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(822, 'admin588150', b'1', NULL, '$2a$10$L9/2ljkovgBfAg9WGrEnGOrDXvcJVM38R4hSGo2lScdG96KAzV2Iy', '101586', 'admin588150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(823, 'admin589150', b'1', NULL, '$2a$10$nYhLsiwrAjsSGFiTfNjQ7er0WQjLrc9B6OnSB9bP2inkYHVs1PZPS', '101586', 'admin589150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(824, 'admin590150', b'1', NULL, '$2a$10$ZZpOWxs/1uyslbIDvqECiOr5LYMWE8hrGNT7lzBAJll5YNHJ0zAYy', '101586', 'admin590150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(825, 'admin591150', b'1', NULL, '$2a$10$UJb8zyFNP0nj2uQl3H7EcekLxG067JOcVaCdvMAkiZiB.aB2EOPda', '101586', 'admin591150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(826, 'admin592150', b'1', NULL, '$2a$10$osoj4tTHvZhPPTINCpzBve9gNzKJX5zqkpbi1MYxSh57PVANEEeYO', '101586', 'admin592150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(827, 'admin593150', b'1', NULL, '$2a$10$./jaZDJVJ03zhnF/hTefSOwUYQHvI2ZF4CmnvW1xA90On6UVlHPOi', '101586', 'admin593150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(828, 'admin594150', b'1', NULL, '$2a$10$vbzHxal/cA2BQv.kSdir9ur20mfi/WBD.qF21GM9Yus0s9YddDehu', '101586', 'admin594150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(829, 'admin595150', b'1', NULL, '$2a$10$9ryvd/xpm/rifXQ/BYR41uLpYgBXbm4tDhrcLh2J6YdMai9Bsmbpi', '101586', 'admin595150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(830, 'admin596150', b'1', NULL, '$2a$10$gCmW9FBzGvFnXz8NQuSEPeQ7Cfv5CIw4fSDl2SYio.ItJovzJHRma', '101586', 'admin596150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(831, 'admin597150', b'1', NULL, '$2a$10$R1Kd1meErF.Fe9sn09uxMumVqScNoPQDsKkjp.hsHEMN1sc3GyFZe', '101586', 'admin597150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(832, 'admin598150', b'1', NULL, '$2a$10$MnyOPEcPz7oBEHvCzIh24uzMjoCC8BC6Tg/Z6Wj0q8EKXV32hmLmm', '101586', 'admin598150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(833, 'admin599150', b'1', NULL, '$2a$10$bim7YMLztAOWsoGFQcP.U.xbrJwzSfNxAgwRnmmw2Im8hKy.JD2YK', '101586', 'admin599150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(834, 'admin600150', b'1', NULL, '$2a$10$Yyj5cfika./0fJoxVazUyOrHkWGWBLzjmOCWShIjqGp7fN2CNqX1m', '101586', 'admin600150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(835, 'admin601150', b'1', NULL, '$2a$10$vVP/exSFozPCmVdqpddihOO5b6TEnSyknYNhj94lTBjthp20WatXq', '101586', 'admin601150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(836, 'admin602150', b'1', NULL, '$2a$10$QxMp2VlwYCndVACjB8oodeeyV/EqfHCVnOSc6fWlVfVcK1EpPhFEe', '101586', 'admin602150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(837, 'admin603150', b'1', NULL, '$2a$10$itZDt.NE9aty4u9GB7KxO.s6RSKhH1arqEAoaunGjtQukFfE09jVK', '101586', 'admin603150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(838, 'admin604150', b'1', NULL, '$2a$10$hORg3ZDridvZwfHJtp0MOu6X./VRPeX1qYmC8ZRNepvBRznSDeWTK', '101586', 'admin604150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(839, 'admin605150', b'1', NULL, '$2a$10$QJnRG0KqBPzCO8jLq1bL9.L28kFuRFwUxKO2KxmM993jognv/rnOK', '101586', 'admin605150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(840, 'admin606150', b'1', NULL, '$2a$10$2kx4Ci3FqTlIt.spuK7jfuATqIAZ4e9Dna9.h.XIzZ/KsBKaOg1p6', '101586', 'admin606150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(841, 'admin607150', b'1', NULL, '$2a$10$5os36PKvQv1niZ61Vu/ZF.2wIzIUlvRhE.oWoExmGqvY6bW7DmoHG', '101586', 'admin607150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(842, 'admin608150', b'1', NULL, '$2a$10$nsYbP8FLG79DRB1xpGo3heBylBSsH5vhIkhpX9UJ9m7tPT5Y05Fsy', '101586', 'admin608150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(843, 'admin609150', b'1', NULL, '$2a$10$wZxQ/ktXqsZojsjcoIm3UeIXZeeY/y3fmT8Y2EW3y8FZ/3LHHqTqG', '101586', 'admin609150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(844, 'admin610150', b'1', NULL, '$2a$10$mr2G1E6bhIKrHah3nZgeM.zf2g.LpqT5YcCc9frR1YMbGU7pqQ.wq', '101586', 'admin610150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(845, 'admin611150', b'1', NULL, '$2a$10$m05aUEy5rD.feYoDToZjau6ksee/LDwpxEZIO5K033uCrkI6jNmrq', '101586', 'admin611150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(846, 'admin612150', b'1', NULL, '$2a$10$hoIn06uEh1V97HrCWZfSOOEzSroLTFSAEvov0UWFmkFXZTcJF2mZW', '101586', 'admin612150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(847, 'admin613150', b'1', NULL, '$2a$10$yPK2a7PVIR2nZDylSEUo0.e3bz4cnDo3kykfr6H6LA/mXOqzr1wbu', '101586', 'admin613150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(848, 'admin614150', b'1', NULL, '$2a$10$Tnt6OHXZlYxLXVqn0RGopuaQG0Z2HVpIKuixdFJdAACe54lgD6XsW', '101586', 'admin614150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(849, 'admin615150', b'1', NULL, '$2a$10$wKkOW4GbHou4orrU4p.aAeoITZlYhXJTCq.aP2e6EhaihJR9mTSla', '101586', 'admin615150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(850, 'admin616150', b'1', NULL, '$2a$10$qAtTmYsO2mwJYF6YE7Hn6OCA.DlJfu1iWgPiUJgvobm5LEt8iNAmm', '101586', 'admin616150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(851, 'admin617150', b'1', NULL, '$2a$10$pPspFpbKTU62OK7Hcs4Nnuh2hwJPZKqMPjCcNLFfZMjsZwQ/mymse', '101586', 'admin617150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(852, 'admin618150', b'1', NULL, '$2a$10$txK4z5hGybq32oeqGeqMzOXMgXeaW00ilSDSzhJM7ZYYBPKBsQMjm', '101586', 'admin618150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(853, 'admin619150', b'1', NULL, '$2a$10$Cz64G0mxEHp5c4.iJiWVtOUH./5sgnw3xs5rCQdt/1042SWS3yi6m', '101586', 'admin619150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(854, 'admin620150', b'1', NULL, '$2a$10$QLNbF/nw1cxMHpFivP2pTOtsgpGpjhZOncu16iaWx2IgAQjps7hxu', '101586', 'admin620150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(855, 'admin621150', b'1', NULL, '$2a$10$R.eq41SrE0kSr6E1NFb.IukZ3xNbEwfoio21ySe4RLIYtM81GvUqi', '101586', 'admin621150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(856, 'admin622150', b'1', NULL, '$2a$10$td2b/44HG84n8IzpICLd6epNOrq.6zS85NimkigRf/k8RcX2UwKQK', '101586', 'admin622150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(857, 'admin623150', b'1', NULL, '$2a$10$Ww2cYYbZE87DFQVmZnFhle2JS9Cn1cgErQvpujY.BxH3usKxGrjBG', '101586', 'admin623150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(858, 'admin624150', b'1', NULL, '$2a$10$elWbXQ1Gq/qnWmX22erf8Ocv40N/7i6NBlrhdjKf6RaehiaoTtHbO', '101586', 'admin624150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(859, 'admin625150', b'1', NULL, '$2a$10$CXaH0ECx0kyxlIAkxxLs.uNvhXdq./RZJ5aOaPdnkuIen5xlWRXP2', '101586', 'admin625150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(860, 'admin626150', b'1', NULL, '$2a$10$nvnK4/kz63GjlOc8MQi5Ne0H9PmAh5.WQQG9g6ENskEsIg24xzusi', '101586', 'admin626150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(861, 'admin627150', b'1', NULL, '$2a$10$sCixdsLIYZvKYM9GVcHKcedNi519cB8crAZ2z5hNgqZys73rZWzo2', '101586', 'admin627150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(862, 'admin628150', b'1', NULL, '$2a$10$ehQG4yF0Ct.DbO/JqqrsfuzpUob2Gfn7oy3yXo4MTW37//GRtaMO.', '101586', 'admin628150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(863, 'admin629150', b'1', NULL, '$2a$10$2AhVNx05Dk20XoGqsqtxqe/ZDXdkhIDU3uFTQ5BTsqMnYCQ28XTRu', '101586', 'admin629150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(864, 'admin630150', b'1', NULL, '$2a$10$PowSKtxG3Jnsdihcjg5Hye.7daEQkkOrGgj4aXpUgq7NncYFubVcS', '101586', 'admin630150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(865, 'admin631150', b'1', NULL, '$2a$10$etq017KtBAh30b7BcWVfEODWiquwbi.oSLaD1.sF.hhwzNRJZYTjG', '101586', 'admin631150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(866, 'admin632150', b'1', NULL, '$2a$10$7te48OrQmdhvB9n/B2iMTu2pJfyTShojc9rAOwrUkad5pi4YuqhkW', '101586', 'admin632150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(867, 'admin633150', b'1', NULL, '$2a$10$VK0MX1FR8cfxuP2fBsLjfu0e2IFDCMbocRYXys9XxYllngF9QTazi', '101586', 'admin633150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(868, 'admin634150', b'1', NULL, '$2a$10$9WLq5LwNsyPX7xBBZ8kt.emooFL541w/Zjq2nDwufJH/zQO7GkYv.', '101586', 'admin634150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(869, 'admin635150', b'1', NULL, '$2a$10$lQQD1bw3OlVa3mw0KHqZl.Lau13WVkKgvdOJbkgzF4zcSVOOCp3li', '101586', 'admin635150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(870, 'admin636150', b'1', NULL, '$2a$10$zWBayLCFrArSMlJx0HKPy.XhJolillk3EFVKD3DM5XcZCNovsr806', '101586', 'admin636150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(871, 'admin637150', b'1', NULL, '$2a$10$0B6vlzwmB1oZmvjGgF3gKOOYpua2Q6e0t9a0nDS3wrFVIUu.EwEd6', '101586', 'admin637150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(872, 'admin638150', b'1', NULL, '$2a$10$uDgcFJpHPJ3o8odJkm4RD.qG/MWbwZpYTh70VhwYabIiPC67gRBgO', '101586', 'admin638150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(873, 'admin639150', b'1', NULL, '$2a$10$wGUr7wTbWSo84NCfxLtBNer28jMLrGOkkOilulgd89N5L7KqOxi0W', '101586', 'admin639150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(874, 'admin640150', b'1', NULL, '$2a$10$6YrKuKuFbHamcPnFo.9xmOfSiVqNBDcZxTA5F7c9V8oJx7Cg3VjVe', '101586', 'admin640150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(875, 'admin641150', b'1', NULL, '$2a$10$BrM4uTXIZbJNQRLRMcnn..E3eYCVRMUF/laOJVDA9vrHBfAZqXCFm', '101586', 'admin641150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(876, 'admin642150', b'1', NULL, '$2a$10$O8DYhNYk6CgjIXk0tUA0yOBgVaX2sjQe2/2SRd9a8qmsOpB85kroC', '101586', 'admin642150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(877, 'admin643150', b'1', NULL, '$2a$10$eGF.nrcyec33Hv48uhPJNe6XVZ798i5dptmrc4GtMHwJmgCmKcUtG', '101586', 'admin643150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(878, 'admin644150', b'1', NULL, '$2a$10$QZiYNhSLmX1WLrkEtSOnquTrD2HclpyuO.0zULB8ULeOJm34bbxyC', '101586', 'admin644150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(879, 'admin645150', b'1', NULL, '$2a$10$KOZS36o2dp5YmmB2/zeS/./9MGzF.QYYbnGwEf2d.scbEH5Gaei.6', '101586', 'admin645150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(880, 'admin646150', b'1', NULL, '$2a$10$eFFSv9pxunc6AESUDYsixOKtAQEEH/6Q8ZlGbPnlWKJf2EWXsgnym', '101586', 'admin646150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(881, 'admin647150', b'1', NULL, '$2a$10$dYH7Lg5CKLLNDCyC1OndO.HEFJ/mzmfKBd1RMUWeXVbICqwpPm5sG', '101586', 'admin647150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(882, 'admin648150', b'1', NULL, '$2a$10$1Mq.dffR2fwrimWfwU1qRuD64kbG2tMCY1k/p2di3z1FY93URqoAm', '101586', 'admin648150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(883, 'admin649150', b'1', NULL, '$2a$10$4N9PD673RcTth/L6aztL9.iDLYhKueEodp5hqPt8kY7IHy62Y23PK', '101586', 'admin649150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(884, 'admin650150', b'1', NULL, '$2a$10$BRoXqvDsytLeVEMdqOz/o.RTfhw9TP0WL3LHJDXusbr7w2cgFIybe', '101586', 'admin650150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(885, 'admin651150', b'1', NULL, '$2a$10$EG6PDHuM0NvHepaIbZ3o2eNkxhvMSPTNGssCXMuBWLNfC7Fni2DrG', '101586', 'admin651150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(886, 'admin652150', b'1', NULL, '$2a$10$342ypMekdV1PEDhpx5Avw.Hm9R9EwS9PrUROqVFxc2pfYt/bzYZqS', '101586', 'admin652150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(887, 'admin653150', b'1', NULL, '$2a$10$6nq9IJjd7HS8E2YEaiuZwujph7ae7/37O4NzhEbf9iVRxoYOIsPli', '101586', 'admin653150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(888, 'admin654150', b'1', NULL, '$2a$10$uuaY2cbQfBFwgJzdrYskdOjjxToqxSbdB8TOL8770GjBOBxVdvSP.', '101586', 'admin654150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(889, 'admin655150', b'1', NULL, '$2a$10$XayMIQiYuIp91GEOU/ZC7eYanDejDuacG3dJ086XiXZeH.b/AGK9O', '101586', 'admin655150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(890, 'admin656150', b'1', NULL, '$2a$10$dS7gkcYs6JuQqANmuyX7ru6y5s315sDJDnUgHSIVbLUckTUJoKoou', '101586', 'admin656150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(891, 'admin657150', b'1', NULL, '$2a$10$Kt2ennIrZg9zHGp7b.h3LOYGI1BhhvAaPVrDaClXX1NORL3GMYWea', '101586', 'admin657150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(892, 'admin658150', b'1', NULL, '$2a$10$Dvz5/zRpj.2DQyk2qiTXtOEJvPVGRBu9gbkQj9cLRkdodMKp9OIrO', '101586', 'admin658150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(893, 'admin659150', b'1', NULL, '$2a$10$2XWvQvuUJ9/gfaisCXSGkugwHvkssyCNWI61dB7wECXTPH4mH/y4W', '101586', 'admin659150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(894, 'admin660150', b'1', NULL, '$2a$10$KWRarTh3NeRAnmAegmetlekrPyL6MfdA3y7TLTy1sYuAHCxkrtBbC', '101586', 'admin660150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(895, 'admin661150', b'1', NULL, '$2a$10$6q5xf6YfEwotyFjc8sGBp.B/X9sHTvh1vRREDmZNktPAmgYpAPaQa', '101586', 'admin661150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(896, 'admin662150', b'1', NULL, '$2a$10$Eu.DpXTNuHgVXFMfHi/kDuMfxNEkuI7giLuiW5fE.P12lcNI9fBkG', '101586', 'admin662150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(897, 'admin663150', b'1', NULL, '$2a$10$MabYjGAdsGOY2LezU2sEcOuSLI5r1MYpvGgTsjBTC1BL.NQEs52Ku', '101586', 'admin663150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(898, 'admin664150', b'1', NULL, '$2a$10$Bx88ucia2qS5CO6VA0jdlOeJkMOP6zR/FWavncmipsVVNEJcRNpGS', '101586', 'admin664150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(899, 'admin665150', b'1', NULL, '$2a$10$67QsvKq/aH/47GVTwv4NAujyye0sLKB4mRK2HGhvGsrmL9DIc95hi', '101586', 'admin665150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(900, 'admin666150', b'1', NULL, '$2a$10$u12F0DXS91JXBrueewqmXOsIxktovtoEPXvKW8JyrBCPKfw8GMFJe', '101586', 'admin666150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(901, 'admin667150', b'1', NULL, '$2a$10$i.KOtLJs8mQsUXldAXNMEu24Y/btu27MvjMAXxMJW4BWqWaFU1U02', '101586', 'admin667150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(902, 'admin668150', b'1', NULL, '$2a$10$GypZBZCD.YaCWek3OTLoIuguSIsMid7OiLXo9pHfNZtnELIGvyk.e', '101586', 'admin668150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(903, 'admin669150', b'1', NULL, '$2a$10$TrSOTyQ9Et.0p2wA0NCTu.hVRdfoO8ZN/wD7kNZZJUADu7GzbixQC', '101586', 'admin669150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(904, 'admin670150', b'1', NULL, '$2a$10$wXQZAFgY4O04YfloCNxwAu22JM3vihp0grRmQX1pmuGCW4ZATrbyi', '101586', 'admin670150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(905, 'admin671150', b'1', NULL, '$2a$10$dyGL3PK4MIpQFG60cgybyOkgr5QlOj8vKJ1v5o11n0yjffcqJJLdS', '101586', 'admin671150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(906, 'admin672150', b'1', NULL, '$2a$10$6W/btQr5RX9yOprPuU4e8u4aThEKgxKA99bH.PepNtlB8HhtfCjQm', '101586', 'admin672150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(907, 'admin673150', b'1', NULL, '$2a$10$vfqRsjvlaKvsg49L8tV0TuVpwjlytcXeBK4jrwHArOLzm7wvBf6/O', '101586', 'admin673150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(908, 'admin674150', b'1', NULL, '$2a$10$jQnuC4t.qTxANhVz5NXJuunBdE0iys.MBf3nbMwmHn2ZwcuOPNebi', '101586', 'admin674150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(909, 'admin675150', b'1', NULL, '$2a$10$g.1epcqxiRLROM3CHMWseukc4sKgBCSoJMsykdXgRT0buDdlprkmS', '101586', 'admin675150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(910, 'admin676150', b'1', NULL, '$2a$10$T7olXNXaOjrQthiGK.kKt.V7lAdx4Fd4jHVrb1osfRS63YOli7Vl6', '101586', 'admin676150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(911, 'admin677150', b'1', NULL, '$2a$10$frqFKKK3NdF5cFcdJpSe6eATZE5YtyfecV0e.9QBR5cBI9W6snMZa', '101586', 'admin677150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(912, 'admin678150', b'1', NULL, '$2a$10$j/Kopy86/gPd8pTjW9dU2eyuuOQoxNJl.hILoRKi.avUwbpTIqAe6', '101586', 'admin678150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(913, 'admin679150', b'1', NULL, '$2a$10$HCAbbPtmipO4yDYA01dYTuyRaweeY1XxvscUzFwnzbUtTrUXFFg9q', '101586', 'admin679150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(914, 'admin680150', b'1', NULL, '$2a$10$a7H78bZaW9LT/elxkoGIduShscCtNWNG5xoCg6LePMFTamz7lqHFS', '101586', 'admin680150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(915, 'admin681150', b'1', NULL, '$2a$10$AE3cvpMwk25OTsS.O1RtReqoCah69FxyAWpUAxhhuCvoFWbOKwwmy', '101586', 'admin681150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(916, 'admin682150', b'1', NULL, '$2a$10$WLs4zD..NDZLDVNoQxk8yuNzxMkeHmroYOZtutaMnatfdYrB30DIy', '101586', 'admin682150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(917, 'admin683150', b'1', NULL, '$2a$10$H0WMm6D8KEyZrlETbIHUMOo1jDbCjdEgJ/82LqDWLCPrBJgVrnnjm', '101586', 'admin683150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(918, 'admin684150', b'1', NULL, '$2a$10$FK6uk4jKQDD5IO5..UTQJ.SJyAeTEyrnVTDn8YzbFscEFPOX6owSq', '101586', 'admin684150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(919, 'admin685150', b'1', NULL, '$2a$10$BzvN7mQe4goe6ykdJTfzA.lgd27uUJjLiZDFkfDk/NuWNDxguMnSG', '101586', 'admin685150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(920, 'admin686150', b'1', NULL, '$2a$10$Bf3QmyZdXoBzFoS2/5y.M.fUkCgqMEdNnwPYz3xFHyc6WyF91oMbu', '101586', 'admin686150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(921, 'admin687150', b'1', NULL, '$2a$10$kaT54uREoOdkBVwhE0iPYe/968Q8xDMYT6QImhCHk3H8CJnsNX9hq', '101586', 'admin687150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(922, 'admin688150', b'1', NULL, '$2a$10$c.ytCMMTqaQkd5mtb6t4me4m1zzNNrPI91GcckE4gziG.YKUpKrlq', '101586', 'admin688150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(923, 'admin689150', b'1', NULL, '$2a$10$CPEGBXmx7Rr2o54aJfdHHe5lfizOQ.63aIUmxKplfEwaTNQhfKuUi', '101586', 'admin689150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(924, 'admin690150', b'1', NULL, '$2a$10$Ngl/CBrjJSvHmrJIDbmTFu5uAGekOeFZ21hd5WURJd6QTLxT6ERIu', '101586', 'admin690150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(925, 'admin691150', b'1', NULL, '$2a$10$NnCheeaInJKakkM/nXWpjOkCZ.AUs56aM1ZizcJP3NliDiBw.znQm', '101586', 'admin691150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(926, 'admin692150', b'1', NULL, '$2a$10$H9TQFOXiq8GUK2FsVfdHqO3i9bUmmE0qR03XnC1akfJfCpy9IL2wi', '101586', 'admin692150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(927, 'admin693150', b'1', NULL, '$2a$10$JjVXm7dqxYTuobFU4qL89Oo.ZQmj15NHOUPHeLs8wyiIAcBtOVTkq', '101586', 'admin693150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(928, 'admin694150', b'1', NULL, '$2a$10$Gxh8WMmVhHi74Mn44WrX5u4.eqZkuqJGi3C477ugXL9ZAICCK3Xo2', '101586', 'admin694150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(929, 'admin695150', b'1', NULL, '$2a$10$Zl8AhrQfwj51hMhAr.8oZuN.qTPhl4tO0Nr6LHgspARWlREstiWNi', '101586', 'admin695150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(930, 'admin696150', b'1', NULL, '$2a$10$lRGONzoHCkJzpHuqcrtj3O/E0eTa/NqZ5F.UvoO79XJ1lCBmYZaCC', '101586', 'admin696150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(931, 'admin697150', b'1', NULL, '$2a$10$D9qGapGrLdhhDy7TT6JvheCcp6LvE/jQT7vDsF1q9GQ/xBW9CQEO2', '101586', 'admin697150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(932, 'admin698150', b'1', NULL, '$2a$10$ipc4UKr0mIz4uOOSLcNxauGKTIUROTpKo6I/VA/djBNgIfJH3d43K', '101586', 'admin698150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(933, 'admin699150', b'1', NULL, '$2a$10$tWJplBGm0n9DzxNyD5AKXOdNvZu/Imu4mxFMt1864Fi/cG2lwMzGy', '101586', 'admin699150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(934, 'admin700150', b'1', NULL, '$2a$10$eQU5tSs3SAIuxNyfqBCicukr7.pdaZcGekHCpz7fGOj4sxwIjfK36', '101586', 'admin700150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(935, 'admin701150', b'1', NULL, '$2a$10$gX0BoTU66ue7pHh/pGcFaOSZfQuqYr0j173YGnl065Um3q2W868Ci', '101586', 'admin701150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(936, 'admin702150', b'1', NULL, '$2a$10$pbfVkx2l2qZbONwbS2SbBOfoHZfIjq3AffedIqajzAofmEA8tVcgK', '101586', 'admin702150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(937, 'admin703150', b'1', NULL, '$2a$10$bLarUm6fdi1fqHOvJQ.xLekD4.mWG7ROlTnmWJFvGcGZmrILrCllq', '101586', 'admin703150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(938, 'admin704150', b'1', NULL, '$2a$10$KLPcJzM2gknLYY/MVqSGceubJI.VAHHymhrtOMt0QNRV1hkRiKY.a', '101586', 'admin704150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(939, 'admin705150', b'1', NULL, '$2a$10$CQY8A1orsofwgIOHpzbrCe.b0zT1lrtbzpO/D1sCiMCZjh9r9djI.', '101586', 'admin705150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(940, 'admin706150', b'1', NULL, '$2a$10$ul4rdmpuFa/dZAzL0YEgDupOeg6oIpJjwWcXNP.e5oIraJWHPpaMC', '101586', 'admin706150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');
INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(941, 'admin707150', b'1', NULL, '$2a$10$RQLHhQaK.avOPVXscCtyBuhKiMcvKDVd9kTmyU6.UaXj87Lpm9jta', '101586', 'admin707150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(942, 'admin708150', b'1', NULL, '$2a$10$czA3.n5bbqfo6YMgt/EQ5OBCvvo5.c92/UuhhqqKN0thKRpU/922.', '101586', 'admin708150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(943, 'admin709150', b'1', NULL, '$2a$10$uB1a.B1bDhm7jHbzYvinb.fjHiE5yYGI81hG.wcdFzbnT2iTuFicG', '101586', 'admin709150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(944, 'admin710150', b'1', NULL, '$2a$10$QWO7Tt58L8NLUWf8eo/GneuTG.1BjIG76nAKOe4p6XJ57hUz4uAve', '101586', 'admin710150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(945, 'admin711150', b'1', NULL, '$2a$10$vMDLgyTPQk.c.oSO9kJCLe1AyBQT1AGb/AmYOkF4HpHTvJTTGcS3W', '101586', 'admin711150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(946, 'admin712150', b'1', NULL, '$2a$10$1SaKeUUKEphBlgMw8kxpb.99DTkuKwXa2vJya/lzgrQTKl2eJT7.a', '101586', 'admin712150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(947, 'admin713150', b'1', NULL, '$2a$10$2v9RMIOZX0RDjnsLDrfUO.ZTdDviR.R2gGyoSa9HVtRNQH9JOIk.K', '101586', 'admin713150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(948, 'admin714150', b'1', NULL, '$2a$10$1XCRYqFIkM3pxHEAUfscbO5HgdFusJ7VE25ASNHpeP1ZOeNpsoANu', '101586', 'admin714150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(949, 'admin715150', b'1', NULL, '$2a$10$iwTsXNxN8inx20oimrG2ZuwAywWCsW/3HMCdVkLL4V7qgpx9BgJ02', '101586', 'admin715150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(950, 'admin716150', b'1', NULL, '$2a$10$esr2sJScZDDudx.IQ5R6/epuF6M/hlsh04vhLDR38DUb3a0x6LiEe', '101586', 'admin716150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(951, 'admin717150', b'1', NULL, '$2a$10$qbUnUxAVCBJaturPGosF0OXbBzHDgETvdYErwv9HSmB1kDjGaD4QO', '101586', 'admin717150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(952, 'admin718150', b'1', NULL, '$2a$10$FuBZLSXALWTX4UTEcPbDleFxzlaW806Q6gfbreHFuqlSkwyGiutme', '101586', 'admin718150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(953, 'admin719150', b'1', NULL, '$2a$10$wu9DLjfQs.E5Jbh1Rz6BsO3clREmuFcurPTl8TC/2FtP3ZBP/jdiO', '101586', 'admin719150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(954, 'admin720150', b'1', NULL, '$2a$10$r2IudUxJYCH0mT7yTymVBeMuBZ7qPTs3CupDMJhL78UK2bqPyzXUS', '101586', 'admin720150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(955, 'admin721150', b'1', NULL, '$2a$10$KNJwdtdL4YWMrM9M1J9QtuXEE7I5wFUf5dqB1MlcaJhsnWnmIu1uO', '101586', 'admin721150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(956, 'admin722150', b'1', NULL, '$2a$10$ylx5aiMxNow9IOfBehJU9eH31GaJi.18aAjBrcBzPzbGNW6VKM2QO', '101586', 'admin722150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(957, 'admin723150', b'1', NULL, '$2a$10$lBRGgcE8NW4MaUxicFrtx.D11wU2cDxVocgfQ63rOJYt.SxZbEagW', '101586', 'admin723150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(958, 'admin724150', b'1', NULL, '$2a$10$UYZxgtFfN9Mn/8ANmRDDgeYSB2R7za92a4r2p.Io5P16hTUQcEshi', '101586', 'admin724150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(959, 'admin725150', b'1', NULL, '$2a$10$Q35Asq3rkXqc1mGZ6e36beeqLhS3zVh4/W6lcgL7y6l019g8DuzUe', '101586', 'admin725150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(960, 'admin726150', b'1', NULL, '$2a$10$4NgWtNhbgdahrsBRfNadV.ikEemKjdrZxMBb0MD2.LefBKzBrIqAy', '101586', 'admin726150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(961, 'admin727150', b'1', NULL, '$2a$10$1Q.L6SZ57CSeZP1AsQej1.cKv2oTNxUyBO9DsXv7Y3tQlD6iqb24S', '101586', 'admin727150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(962, 'admin728150', b'1', NULL, '$2a$10$IAdpACb5TOvN7C6g7plbxeQ9pJQBx0fdgkD/.jCk5afS8FcWK2LOq', '101586', 'admin728150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(963, 'admin729150', b'1', NULL, '$2a$10$efzyCdV2lsj5nchUwWcJV.h5qPreuSNkyOYBTMvKul9ehG/pqY4Oa', '101586', 'admin729150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(964, 'admin730150', b'1', NULL, '$2a$10$W7p0SrjtqLnI96J3JfBhoOFOtOJvvgJ968PacsZFThsAQ1r1U41ay', '101586', 'admin730150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(965, 'admin731150', b'1', NULL, '$2a$10$/F/1JreY5L1tQdwpPauDb.M75wbqIPkXxgUAp2.4k665g6kTz2EF2', '101586', 'admin731150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(966, 'admin732150', b'1', NULL, '$2a$10$u/v0nNoAFXJwgsbwRI1ZBuuFFLFRCvp4aedDpho0XuOFG2clxxzc.', '101586', 'admin732150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(967, 'admin733150', b'1', NULL, '$2a$10$EZUUsPAM2isp2mWDPpeN2ungyn1HCK8pRIm8s.d6pS7qVGhZ78hZW', '101586', 'admin733150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(968, 'admin734150', b'1', NULL, '$2a$10$/TbokEc.TIRaU3rOkOsCCOaSW3otwqRFj7onm2zsI5uJp8RzdsZ0O', '101586', 'admin734150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(969, 'admin735150', b'1', NULL, '$2a$10$U7Cd.4t49uma2nt.cxi/hu3BYwsAexBQUN5a9DNZRdfxIB.yZWgry', '101586', 'admin735150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(970, 'admin736150', b'1', NULL, '$2a$10$gwu1kpfgZMY2R9VGdAtJGu1cFLwSkvsZfU0GI155q4Vjp853AEXla', '101586', 'admin736150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(971, 'admin737150', b'1', NULL, '$2a$10$yfnPuSfz5zVgIrbjfgbJKunnL.juVaPN0gKW0Nl1yJs/1EmUvGag2', '101586', 'admin737150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(972, 'admin738150', b'1', NULL, '$2a$10$1.Wre/gf09Sx3M4smHvCVOqfyaMa1Vr/uXdDln15pjJYID6sdLyt2', '101586', 'admin738150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(973, 'admin739150', b'1', NULL, '$2a$10$/5rXyAy8aY0vmze3BJnA0OEYM26XKkmxLlrblaETkElgEUuO4K3gS', '101586', 'admin739150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(974, 'admin740150', b'1', NULL, '$2a$10$ZP7Ip7c1X2H1AQA1eUa.b.eOVX81p44SiqUFdJf9p4DyfOWgzoJYK', '101586', 'admin740150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(975, 'admin741150', b'1', NULL, '$2a$10$orjUFGPlWZqcPjB9.R8H/..C0UnA5uYtr5F9rMkQUPBPDxNSDSmQq', '101586', 'admin741150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(976, 'admin742150', b'1', NULL, '$2a$10$2/A5XDpjbP8VjLXlrBLr2Olom2GzxeFt/Sc889I4vCebi6y5J842G', '101586', 'admin742150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(977, 'admin743150', b'1', NULL, '$2a$10$v7yQe8TAvw9mazxw/v7mb.B2YVcaN8QuxrQoMof/NZKhTOuMax8xa', '101586', 'admin743150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(978, 'admin744150', b'1', NULL, '$2a$10$0H53cGjOGuTr/Duu0n0wS.SjdJWnsjL2eJTuLwZsryX6iEK00WpzK', '101586', 'admin744150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(979, 'admin745150', b'1', NULL, '$2a$10$qdHWIEsDcJh5/BQoJs6Oz.p8p/FhmRSTut5qvJ6PoXRjhMFfgJXem', '101586', 'admin745150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(980, 'admin746150', b'1', NULL, '$2a$10$7DzKHlED0LJR4fjyKr3SPuLylJ6fyJAwO521AIhBGV0EsJzdC.h..', '101586', 'admin746150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(981, 'admin747150', b'1', NULL, '$2a$10$4cxlYve39nmWeb23Iuo7Bu/3bNsnzu2oc5p9UiR6u0GqzDGYQEKuK', '101586', 'admin747150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(982, 'admin748150', b'1', NULL, '$2a$10$F5lirM/zp4/8Y1GwrhAfHO4VjqxqAndphniCXmtZAXNjFY6UpzHj.', '101586', 'admin748150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(983, 'admin749150', b'1', NULL, '$2a$10$aZPg4AWPNoB6UVfs6u42lOr1nOdfRm4LfxTEJCrGDk8nOdZmfljpO', '101586', 'admin749150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(984, 'admin750150', b'1', NULL, '$2a$10$E0GMkLCQhJhbgaC9/AyHvuVygLnwEh.t.juq3YL1O6xKlQuqx8o0a', '101586', 'admin750150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(985, 'admin751150', b'1', NULL, '$2a$10$/FMn2tlxrmNn6Pusv.40EOoTWvCRAiN9Z2/E36IGGpU/1W3BU5ZQu', '101586', 'admin751150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(986, 'admin752150', b'1', NULL, '$2a$10$Ptkb8QKrGpd2XVoaj/yW7e1R.OFNJXvS2kUyOz4.IdUk3m.m1mVZu', '101586', 'admin752150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(987, 'admin753150', b'1', NULL, '$2a$10$pRAvtR5lVnSCPqotMwaaA.ATnsRzrGDI9UbhkfNB/1Q9ayQA1A946', '101586', 'admin753150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(988, 'admin754150', b'1', NULL, '$2a$10$brulr/BMB0qSSfri6IG0I.5SE1F8oMeUObF7PFRjfcJUtHVMev9NO', '101586', 'admin754150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(989, 'admin755150', b'1', NULL, '$2a$10$7hNPZrd6AJWW8Fom3q0iu.RtMp4ZMNnluc3nZDAQ1xWx4mQPALXLO', '101586', 'admin755150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(990, 'admin756150', b'1', NULL, '$2a$10$HybEfrHZUI77Q0kOqhtVgeeGlRZuXHK7WtpQcf9MhS55KnNqbsDrK', '101586', 'admin756150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(991, 'admin757150', b'1', NULL, '$2a$10$Kvv931yzXYo/90H25Am3dejKUPxKcPAFThz5EDGwiJAnVFa2utHva', '101586', 'admin757150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(992, 'admin758150', b'1', NULL, '$2a$10$u6zYv7p97F2MFBmR6frMa.xcfc0bk.3BYqj.nBf0pT8vyX9Tdju9y', '101586', 'admin758150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(993, 'admin759150', b'1', NULL, '$2a$10$5DNopxfeaJbVQ198Q7Xqw.J7QOwaSwEf4U3rt.yBaUPbw84pt4IRS', '101586', 'admin759150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(994, 'admin760150', b'1', NULL, '$2a$10$RHd/Smqcp8mNacskTga4UuKb0lpuw2OvPILJgAjKNgInDpihYlnPm', '101586', 'admin760150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(995, 'admin761150', b'1', NULL, '$2a$10$M5JJtUH/Ho/esZVb.6M2B.cQ4iGM9lWE3jcEQtF02zIOC77kNyU86', '101586', 'admin761150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(996, 'admin762150', b'1', NULL, '$2a$10$qeX/neKctzzSZ2aKJSpbY.JtNEI4ohFS7TpX.8T.zGiypZVyWW4VS', '101586', 'admin762150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(997, 'admin763150', b'1', NULL, '$2a$10$u.uEde77IZH5QvWKHZniuOaPtnX6T3aWeCl3sL5j96zYZI25uQ3IW', '101586', 'admin763150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(998, 'admin764150', b'1', NULL, '$2a$10$DLpeVCivFgbdFP7rskr03er5MBlPdgjb517V6TvUxN2YOHJcytiOO', '101586', 'admin764150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(999, 'admin765150', b'1', NULL, '$2a$10$t3tL1FTs.bkFbuF6LCFZ0eRJyGWSzbfosA9M3Oo/wtMmDYsw7lXjq', '101586', 'admin765150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1000, 'admin766150', b'1', NULL, '$2a$10$FXIra/Bi6UzkR77XCE0l5OU5WJvAU75H3BxBhjr9ojfIHEfKa6FLC', '101586', 'admin766150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1001, 'admin767150', b'1', NULL, '$2a$10$qEyn2.w7eNthayiS8CkKGO6ORhDYdLiEvKMxK4hT0oGn1AqE7z652', '101586', 'admin767150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1002, 'admin768150', b'1', NULL, '$2a$10$jvLaVU6UnVfCOMHkt0WcGei7ppkTqwMoPVrp2yrSBzPaqfV0X.30i', '101586', 'admin768150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1003, 'admin769150', b'1', NULL, '$2a$10$jUJoaFpe.wFkiTZEr4edXOSTQ30mqFw2D7KxUdWgU4EQBGyVzr1m6', '101586', 'admin769150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1004, 'admin770150', b'1', NULL, '$2a$10$9IAuxE5QBqhpZ73P8IA8T.syOpZIbR.7TH3J6xMDxxN3XYuTDZg3.', '101586', 'admin770150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1005, 'admin771150', b'1', NULL, '$2a$10$EelBBgcpuRUldk0UBB9PVejKjo9U69ozI1ZRObA0dgsCKvSSxqaUC', '101586', 'admin771150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1006, 'admin772150', b'1', NULL, '$2a$10$qPKveHCYwrgFXEbpcVTFhOmzMg6ngmdaf4mBs3ZQ/3I.VHzQhchdi', '101586', 'admin772150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1007, 'admin773150', b'1', NULL, '$2a$10$4fSNtUFxF7REYb8DpDuUEe3yXXkeRtrqJ4MgZStNo85r1dExFdg.S', '101586', 'admin773150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1008, 'admin774150', b'1', NULL, '$2a$10$ITyakZEkM0.OUpXIKOhKweb0z67FEFInpzv09gt7umPEt9Iqvzwk6', '101586', 'admin774150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1009, 'admin775150', b'1', NULL, '$2a$10$u0j73ZNsXi0ZjA.GCigFeOjxVJ/i00Kp79dh28IZxgSRA8cmovGjK', '101586', 'admin775150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1010, 'admin776150', b'1', NULL, '$2a$10$zGuHQj0VOvhoiMQHGlNjmu/H/wLjAnRCxHTds.eoHI00a.rIbUAJW', '101586', 'admin776150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1011, 'admin777150', b'1', NULL, '$2a$10$KeSzq6a0AoaDMbIC9G/VRe932MxWqmqOP6/kCxISWFaR66.9SANv6', '101586', 'admin777150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1012, 'admin778150', b'1', NULL, '$2a$10$H.9Qjx3FRgOeZYag0VSBReMaLc25tQqnQAUGmVbMeDCzgTzE89LRe', '101586', 'admin778150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1013, 'admin779150', b'1', NULL, '$2a$10$qvBqX4h8Bm66n5ThcjAWz.Bdk6opIBaNDVdar6m0qmIzNG5JpYwoS', '101586', 'admin779150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1014, 'admin780150', b'1', NULL, '$2a$10$LNmyKRkvTshEuoe9KIxmJOWT1q5pBUzDs3ggV/x25pJ5xpRCIiqiy', '101586', 'admin780150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1015, 'admin781150', b'1', NULL, '$2a$10$.COjn1InqxNOxXfuyc2rIeqYK.Gu/pz8D6VWinBnzv2aetQvOWvLC', '101586', 'admin781150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1016, 'admin782150', b'1', NULL, '$2a$10$EJzJ35XM4XJL7ci7EZkDRunBl103Cb/osnjPKc1yLMlNXoMD0/n8y', '101586', 'admin782150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1017, 'admin783150', b'1', NULL, '$2a$10$22jacHt7oSYYAhET00ww3u1WX499fO.cLjIuWwQr.eA9mV2KsRUhS', '101586', 'admin783150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1018, 'admin784150', b'1', NULL, '$2a$10$9hRmt9dnkh/HdCkiXGNvD.soGbRTRmGXu/8PGrZuTUb0aZLEHUwXO', '101586', 'admin784150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1019, 'admin785150', b'1', NULL, '$2a$10$r6QgBDsSeTX9WaQ558dBxex1zlCIzqiK.BD0eQG3zw38kPmRpUe.6', '101586', 'admin785150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1020, 'admin786150', b'1', NULL, '$2a$10$BzmZGl1/tB14OVYWoBcjVeIGQZRPtorUk6j4d0pcKjXOUtbVSK0V2', '101586', 'admin786150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1021, 'admin787150', b'1', NULL, '$2a$10$A29LOPWwuH8CP0SinPYxGeQPVfnE/PUDhccpUaQk.oePHP.LNRu0q', '101586', 'admin787150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1022, 'admin788150', b'1', NULL, '$2a$10$.9HtaqGVe/CB0yKE/LvvGeIXO5r00IXN5s.1EtJpdFwIvjxmao6Y2', '101586', 'admin788150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1023, 'admin789150', b'1', NULL, '$2a$10$vXpcJciCc/FzNP0SQwaSPe.8t7PEqpQux2wg1riV3J7UVwxsMRreW', '101586', 'admin789150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1024, 'admin790150', b'1', NULL, '$2a$10$f6MnYt/htCriApTzxoNqFOWFBaeiWfognPfwurUbOoOal8f0z43ta', '101586', 'admin790150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1025, 'admin791150', b'1', NULL, '$2a$10$Oo/KgK0eKd2O5TnX55934egBUn715rFq1SDgyRMSnC4cjpwMCWGiq', '101586', 'admin791150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1026, 'admin792150', b'1', NULL, '$2a$10$AR1gg/F5f2l5..sJz/6xIeIWKWmSOm7A/yGpsFAY9Az3UyDOTZRBO', '101586', 'admin792150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1027, 'admin793150', b'1', NULL, '$2a$10$z1DuiKBqZ1uaxb6locRTfuAB4rty76eDb4hlLtF09XlXZkNxh7Ul2', '101586', 'admin793150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1028, 'admin794150', b'1', NULL, '$2a$10$.DhIDzw.ZEXsNyuw8/mC6.vB6OIcwo0Sx/JRU/7tu.q5AoH7AqtGC', '101586', 'admin794150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1029, 'admin795150', b'1', NULL, '$2a$10$4csFDZxwGbO0HlQiEbtkM.tFSf25k07xc7F5Su6qFRXc//ysFPPEe', '101586', 'admin795150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1030, 'admin796150', b'1', NULL, '$2a$10$o0UKrfhHyHymd52bt27Pp.N8tHiYyff7wkUPZQUQ8b1lQW/GODYiu', '101586', 'admin796150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1031, 'admin797150', b'1', NULL, '$2a$10$27m5XMShEOBGL/ln5VVLqeAXe/r0AOuWoynUJiG/MXYaTgtg7Tusy', '101586', 'admin797150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1032, 'admin798150', b'1', NULL, '$2a$10$N48TOWLU4gLtTT9ArBpzDuQYl7jyrBN3t6TluwJWtjYkDYUZZU5sa', '101586', 'admin798150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1033, 'admin799150', b'1', NULL, '$2a$10$FiUiTBO8qP5DNjEtqeFEPOoviIqnto9Vvvcfv1KyLM3nIjuONyE6G', '101586', 'admin799150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1034, 'admin800150', b'1', NULL, '$2a$10$U51MQGqt3mMAZxgvm0fbbelCG9qhlKQ2d8OH2.9Wyg49ffeTnmCHq', '101586', 'admin800150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1035, 'admin801150', b'1', NULL, '$2a$10$XeIJvGIzorEnRs5UFVXgjez.8XAs83WwOms2H85RsCO13FP6a9Uum', '101586', 'admin801150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1036, 'admin802150', b'1', NULL, '$2a$10$Gl9Sg7I37c7cjz0ltNlxZ.TAJkp0oVswLVMY5AYpc9SAE8BgqzsH2', '101586', 'admin802150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1037, 'admin803150', b'1', NULL, '$2a$10$ts3g9JQjTmRoxI3tEz7/5.yUTro8/.nHkf8kp/L2/rQgi/hOUtqk2', '101586', 'admin803150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1038, 'admin804150', b'1', NULL, '$2a$10$5af.E7Wqjc3OqsC/CY6x8u7kKLVjeCg3ocNl.fnOFrR6aq30rp6Au', '101586', 'admin804150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1039, 'admin805150', b'1', NULL, '$2a$10$qaFEo44DA4Ojpagy0Prd3uTSZJKoeN7tm3XCVyicsoWREa8ndpb7y', '101586', 'admin805150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1040, 'admin806150', b'1', NULL, '$2a$10$./jKMokoe8CY0JXOYaQDkeuntjo38WA4UT7BO2Vv2DqcbwcNiFA7O', '101586', 'admin806150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1041, 'admin807150', b'1', NULL, '$2a$10$Rp2XRLeAc1gguhqn8P1luOy/nPIrFMQdbqVSLytRevlDpgBwkF0NG', '101586', 'admin807150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1042, 'admin808150', b'1', NULL, '$2a$10$KCoApHiY27dSrFjjpXqpc.x.DyMTfULxuib/C4y.obx2Yj5ZBjQUW', '101586', 'admin808150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1043, 'admin809150', b'1', NULL, '$2a$10$quwg9KyozqFajYyJjYsag.Ph.cWY3yeLdQDnETW0dr3vQOgL.kwuG', '101586', 'admin809150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1044, 'admin810150', b'1', NULL, '$2a$10$maN6h7fFKcEGOI8HuQXpDO/SXPCgtTFMBCjZa7mSSHXj.GDraBgRW', '101586', 'admin810150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1045, 'admin811150', b'1', NULL, '$2a$10$zZKOBfJQbkoG9xlbQM3hduVc/vqIZGPjbjpZTPw9DJZNX7NsAy6vu', '101586', 'admin811150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1046, 'admin812150', b'1', NULL, '$2a$10$GdAi.ASJj8ChjtXq.718E.0Jbxblrb1BfZHV/niigYyH1Lpw6FP0a', '101586', 'admin812150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1047, 'admin813150', b'1', NULL, '$2a$10$JaU/w2s5DU2k/pDnINsA5OWAU.K..j67QnGTsM4zRAJEpwWwR0Va6', '101586', 'admin813150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1048, 'admin814150', b'1', NULL, '$2a$10$Z.LC2fs0CDFRlooiCDFwH.J/sAOjsIAoqf1f9Q/0dFl.HBo1UZL9q', '101586', 'admin814150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1049, 'admin815150', b'1', NULL, '$2a$10$JVa.n09K/9/T4YIoxfFkzutY8xU2caG3KQPwYZaVPmNkn3ZGMWCf.', '101586', 'admin815150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1050, 'admin816150', b'1', NULL, '$2a$10$n36oLcHXgdNldxfyD1qxXu/A85XR7wdYjdLMOsNNGYPB6SGEGDrLy', '101586', 'admin816150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1051, 'admin817150', b'1', NULL, '$2a$10$wT5QUzR9E/SLk3T9CylMJuHsY3Ubm0szJVqGOi3WTnfFyBg.eZRuG', '101586', 'admin817150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1052, 'admin818150', b'1', NULL, '$2a$10$4XF8YsdK7WLTJ4A8Vk4Gj.y.MuA9qUXV3DSkZyNspkPxzeM/o2/Sy', '101586', 'admin818150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1053, 'admin819150', b'1', NULL, '$2a$10$Hvg7vWAksIFCgP0TyvJktuaWCLku2PRaINJgTAxWwe9RDd8adJ3.e', '101586', 'admin819150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1054, 'admin820150', b'1', NULL, '$2a$10$qc7s/CHLt19ZvgyAK8T8/uW3a7dfJvU/KBZpybg8JQRTTnOzXYrYK', '101586', 'admin820150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1055, 'admin821150', b'1', NULL, '$2a$10$CMlQDeqshaHHBVtH5bRkX.DOPWTNMkfsbYO9spKGjdkSWdHc83gQS', '101586', 'admin821150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1056, 'admin822150', b'1', NULL, '$2a$10$kM9.dR3lJmmEhIlE7NSE4eXEkojZmwceeIQvGmH9k7OkiQqoHDeeC', '101586', 'admin822150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1057, 'admin823150', b'1', NULL, '$2a$10$ThkLusQMoSJBqesVLrQmwuq20FCaLGJzLpMRj6RBh.qAlAXdyVosu', '101586', 'admin823150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1058, 'admin824150', b'1', NULL, '$2a$10$UZWiO94izgB6sfzfGyTOqeBDCOTG7O77axoOpG9tVvMp4k8I8rGCG', '101586', 'admin824150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1059, 'admin825150', b'1', NULL, '$2a$10$OkUQU3hhoImHf421graF.u687q/xlC5ZcWj0cfjory2naxkG6cjfe', '101586', 'admin825150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1060, 'admin826150', b'1', NULL, '$2a$10$fyeXOCClXkv.8rxzTqwrd.H5Lr/zlPEaM6iE/6fmYMR4Qn5TFh6qK', '101586', 'admin826150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1061, 'admin827150', b'1', NULL, '$2a$10$G/9.H6pk5HhiJxWU5yZspuIkpCutCeRlcB86UWHJFRDnDTOx4VS86', '101586', 'admin827150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1062, 'admin828150', b'1', NULL, '$2a$10$zxaqN5C8/A8NLB5NXyoPTeDDvSh831aydNOt98el//PNgDg6HEKBS', '101586', 'admin828150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1063, 'admin829150', b'1', NULL, '$2a$10$Z.7XUo/kq2Hbj132Z3uWNu7GvD1alVbLNUGgDtHGYkm1kLK9lSjVC', '101586', 'admin829150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1064, 'admin830150', b'1', NULL, '$2a$10$Ht8J6HDkkThAZwCnmg61M.anNagNCyH0U3cSJPbe2X21r8urY/N9i', '101586', 'admin830150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1065, 'admin831150', b'1', NULL, '$2a$10$hF1cZqp.4j1UfFdz1xRULebsG2Qi2A7C4qQ5Xz/tMJ7xgR7yJsy/u', '101586', 'admin831150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1066, 'admin832150', b'1', NULL, '$2a$10$csAPwIfkuisFs.ZON4FL8eAzluZuoiooYhrcSr5kfRJBNlaJ6LES2', '101586', 'admin832150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1067, 'admin833150', b'1', NULL, '$2a$10$fZ0ASZAjRZCXDp8LC10B8.9AUw4HO2ZG728oSdK5fB9lud20HKSsq', '101586', 'admin833150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1068, 'admin834150', b'1', NULL, '$2a$10$buvOMDtwaq6T3ALKdO8hWeJeHJHIM9R3oV/Mdc1xG9stgRlB3/.a.', '101586', 'admin834150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1069, 'admin835150', b'1', NULL, '$2a$10$kSj3esGSiAJkMZiN6irg4OlNuUIkrFPW0H6GHafczLvXxa//Zl586', '101586', 'admin835150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1070, 'admin836150', b'1', NULL, '$2a$10$IVizl.0Ds0Gx4GZVnqA9Zu02ZHoG951BfzaUHW.Gi4blLoIUqtRXO', '101586', 'admin836150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1071, 'admin837150', b'1', NULL, '$2a$10$7mBHxuwXPKHUsUPI.DaiqOkozwQhjvxa2g0q3DamKf0Lsmzz.lsgi', '101586', 'admin837150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1072, 'admin838150', b'1', NULL, '$2a$10$l5w0vOJlxmtcUy1LNPhu1O3LQC5PcUyoPNARLnx27udDWEXQgIOqW', '101586', 'admin838150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1073, 'admin839150', b'1', NULL, '$2a$10$38tA/ukCLFOHELgLwJ55.OCArkC3INJETc/JAwbbO.HaJuOJlisXS', '101586', 'admin839150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1074, 'admin840150', b'1', NULL, '$2a$10$tFZpeXqkZSHXRVQE5/6xZui0zz9M7wJQoEh0ifxs.aQiKIol0l14G', '101586', 'admin840150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1075, 'admin841150', b'1', NULL, '$2a$10$7VLumfa5WBEcASBs/b57leSOfz7YCc06dHbgToC8Zwp3Z9DUF/F4O', '101586', 'admin841150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1076, 'admin842150', b'1', NULL, '$2a$10$SFvzcYDUfeLpLasNPbqpyeuMxLh/jyqsrPMGWfM.1KNpbqu5WeILe', '101586', 'admin842150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1077, 'admin843150', b'1', NULL, '$2a$10$EYlLjcmx6vYmr9S2kStAsO1a7WniyGZl3yUU55lKvKh/KvYgRQRxy', '101586', 'admin843150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1078, 'admin844150', b'1', NULL, '$2a$10$47Rc0bc69Fit5.aYf4xWPu/i5f68tKdT.P7hYZQ9XVlcpDv/IuBEC', '101586', 'admin844150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1079, 'admin845150', b'1', NULL, '$2a$10$b9BDX1YarmNaUob3Yrhrn.IpRaFRGKQMIqVus3LffplG05.hCKsfC', '101586', 'admin845150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1080, 'admin846150', b'1', NULL, '$2a$10$WCZDhK1Fl8r9QnTS4WIBy.ZWgkVM7ofDbi700wOQxYjkWCjis8VaC', '101586', 'admin846150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1081, 'admin847150', b'1', NULL, '$2a$10$11iIxFWBYlAETsMCgUOTBOw/7RABChHD7YZhEoU2l2/DzwzX7Eu0i', '101586', 'admin847150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1082, 'admin848150', b'1', NULL, '$2a$10$hyHKE8K34umSMBgfjQBX1Oq2fTiJa/t1lO.P9zr1ZehEmvSfYu7yW', '101586', 'admin848150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1083, 'admin849150', b'1', NULL, '$2a$10$Kx9l8CS4ueH03NBEUrCwvOBAG9aW68HNlXb81ex40B3sYJr7GHW36', '101586', 'admin849150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1084, 'admin850150', b'1', NULL, '$2a$10$GzD6W3RcGEVUzms11lE8KuEZZJWXakT4d.okhvOAbqgpUwqN3Kapi', '101586', 'admin850150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1085, 'admin851150', b'1', NULL, '$2a$10$fQ2vMRCYAYAamxAEIbZIHuYdduiKE0hj9tJhA0DAHQnYEJOfOPYQC', '101586', 'admin851150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1086, 'admin852150', b'1', NULL, '$2a$10$JrOkbZuQQGM19RDihiOXSeu8PVVEHdhxtpZTWI97MpvV4FnISv1hS', '101586', 'admin852150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1087, 'admin853150', b'1', NULL, '$2a$10$Y4PPn8c.GpmtlpWsVxmdmenWQT4FjrvH0ylvCn5pdJ3l2qSh266Lm', '101586', 'admin853150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1088, 'admin854150', b'1', NULL, '$2a$10$csKlJy7k0N4Fe6fygBzNUeiXyNQ2HWPyeO5kcNDFegII9Ult7Io2i', '101586', 'admin854150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1089, 'admin855150', b'1', NULL, '$2a$10$4lzjB6lbISbx8aLUPRASwOEmTfJMOKGcHsAbWV55g1tDywo142SW.', '101586', 'admin855150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1090, 'admin856150', b'1', NULL, '$2a$10$dL8GbTzv49DqSmQlFzofau9ZUluZ0EIIz3yFbo6y6mDp/nNBm0NsW', '101586', 'admin856150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1091, 'admin857150', b'1', NULL, '$2a$10$YdQpjXnrlaFtBNb89/i/deH5yES2HCHdP2tHUV2AJK0lTmUwyZCDe', '101586', 'admin857150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1092, 'admin858150', b'1', NULL, '$2a$10$BY99bYXEg3Y6hqvRSBpQdOqjyIRK4sP7kSIdY2bR7.ZPFivOTxxpy', '101586', 'admin858150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1093, 'admin859150', b'1', NULL, '$2a$10$K6CqfDAv4Qwj2YbBZlgd3uVzmu4cUqQQAjr2JqvNhyPM5Iek0Urry', '101586', 'admin859150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1094, 'admin860150', b'1', NULL, '$2a$10$/TRB/oyBwudI1mbAd371SOpUhbAtoCAXEaVVDA7rZXAwNLPyqcxue', '101586', 'admin860150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1095, 'admin861150', b'1', NULL, '$2a$10$b/fTH09VsPV4aHx1yeUpg.7ITRcWvUOQPI4FnMeBS0MKK3CBtcT/C', '101586', 'admin861150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1096, 'admin862150', b'1', NULL, '$2a$10$shw0lotIJYAdA/hC/2W.jeaIkwxXQPS.DK5YqreuKCfihkeCGtNu2', '101586', 'admin862150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1097, 'admin863150', b'1', NULL, '$2a$10$2xMl1MwKlxHIGhqqFQZzueGbZxDLO9T3dUl7wVl3gfLMqXXmWuovS', '101586', 'admin863150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1098, 'admin864150', b'1', NULL, '$2a$10$LLDLZgSE.6d7eppNVCzU3eN9XTrx1VcnGOcUJZH36EpmfCgZzOTjS', '101586', 'admin864150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1099, 'admin865150', b'1', NULL, '$2a$10$MScPFZv4pAVXiBQOcgVEnObsX8tAwqB2l5bsW73Rh7hfD/vQJj2WS', '101586', 'admin865150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1100, 'admin866150', b'1', NULL, '$2a$10$syaJQCHoseJ1THwkGuuXN.dc61/VEkzv7wM0Ymocxh01T8R0pkwi6', '101586', 'admin866150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1101, 'admin867150', b'1', NULL, '$2a$10$iSKnqtkB.RSwdL/lHzRGY.kGlozWBZEg0wQ04x5zD6IGqUTFxmsO2', '101586', 'admin867150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1102, 'admin868150', b'1', NULL, '$2a$10$jvK6b6RZiUbzRSmcI6X1yeEbTq5b1AVfkZR/YjSju8rWUgMryeyUu', '101586', 'admin868150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1103, 'admin869150', b'1', NULL, '$2a$10$.DfXZGEzPHNuZT9qlvAkGenSxKS7z65QNy4VJtWMMCdlbyV.w4Vla', '101586', 'admin869150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1104, 'admin870150', b'1', NULL, '$2a$10$DLfLqQY5p4wrK1naNk1hmu2Mn3t9ihE6l8Md2TRCTkZhOxW3MvP3W', '101586', 'admin870150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1105, 'admin871150', b'1', NULL, '$2a$10$593NEk5fZetrYqD.6B.we.HXi6914Ylo9RsHFJo5ifxQa5Ku4eGvu', '101586', 'admin871150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1106, 'admin872150', b'1', NULL, '$2a$10$y5y3B87tWwa3sPH/yWP1nOdJJSPcATU.IAnfMbQBp.l4qjHpB6/sW', '101586', 'admin872150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1107, 'admin873150', b'1', NULL, '$2a$10$qPwj/NqEDPR.Do2pEmjfAexoqAcpwPHtEyrPFy/fTE9Jz5yEovmmq', '101586', 'admin873150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1108, 'admin874150', b'1', NULL, '$2a$10$GrfJZI5SiOtKyRnO906GouSHbK3E6sgHQjA.klRALHAjG9T8tLO8S', '101586', 'admin874150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1109, 'admin875150', b'1', NULL, '$2a$10$QwVo5qpWm8wa5zri8Is.MO5u2hPD0SLLivYc5ISX68Z6sdQdA4RRm', '101586', 'admin875150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1110, 'admin876150', b'1', NULL, '$2a$10$5oEu1qv/sPeImK8AfbAuy.vWZ.4wiTEVBqhfUEXVS71A4E87FHB2O', '101586', 'admin876150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1111, 'admin877150', b'1', NULL, '$2a$10$Ufv1uYnEMbRxN7CqDnbZP.vghyL47wmBlisQ9XT5jIKPiDIuOOC0C', '101586', 'admin877150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1112, 'admin878150', b'1', NULL, '$2a$10$tcipMFw83RM5CxWh5bJz7.KnSh7tYZl.LexoKg1aNZ2ieKiG0zo6u', '101586', 'admin878150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1113, 'admin879150', b'1', NULL, '$2a$10$0qc0axLdy.lp30tvlatq3eY0sEi4oif57Y0WRY3PaHKCx6Wgx.TcK', '101586', 'admin879150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1114, 'admin880150', b'1', NULL, '$2a$10$k1FqTVdMPuOKUakPWjiS9e1UfB5BNMmlXImc/AY6gxnoowdQRCJNm', '101586', 'admin880150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1115, 'admin881150', b'1', NULL, '$2a$10$IqHzRgXyTcS4/aJj.gyVdeB4PR8DdUK9HPs08AUn7xg7G4TDLW3ta', '101586', 'admin881150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1116, 'admin882150', b'1', NULL, '$2a$10$ZmUMXCcal06/ibU7eKX7ZOfjh.VOHmPqWT6XHuBHfNo23N2pEsR2K', '101586', 'admin882150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1117, 'admin883150', b'1', NULL, '$2a$10$c7uHaMZn3yamBitXeWfjxeZRQ/r6gLCDl4lKetBdi947LVTuvwB3.', '101586', 'admin883150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1118, 'admin884150', b'1', NULL, '$2a$10$K2x1tRNxaNjoephMSPkFTeLOeY.TCVNXZSCj4/fQ.CLoMlPSlgIRK', '101586', 'admin884150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1119, 'admin885150', b'1', NULL, '$2a$10$fn/CtcLqm5KTxJlWYgn/3ud.3dABDtzDmLUenRTRnfQlkrb7Q.cRK', '101586', 'admin885150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1120, 'admin886150', b'1', NULL, '$2a$10$MoY.nDD0i3PH1ZTggDOJ7uV9sfnLTg4H7gCkZk8TWzmBftlS.XE.q', '101586', 'admin886150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1121, 'admin887150', b'1', NULL, '$2a$10$8/GnGopIP8pJ/zOZpvyAq.k4RPA6P3ESreD94GIh77yC8p/GJcDpu', '101586', 'admin887150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1122, 'admin888150', b'1', NULL, '$2a$10$BJ7WZq2ti5TVnBuASrgKH.nzkFnPJU/TflQQKaq0cNwAAWcd6vGzK', '101586', 'admin888150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1123, 'admin889150', b'1', NULL, '$2a$10$l5sbwkhfY7oqjA2DwektmeZjOir75AfN1UWo8uTuUqsn4cfgz5BkG', '101586', 'admin889150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1124, 'admin890150', b'1', NULL, '$2a$10$H0CbDMonJmiRcLC5UkW78OJYLyAgb5RCZFOk5XgBSIwQsuhFmk/kG', '101586', 'admin890150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1125, 'admin891150', b'1', NULL, '$2a$10$BS3LtZWq9XfNfp1mX6uvWOSAkxr4rxGT7pA54bR5L.gl6E5Xs..gu', '101586', 'admin891150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1126, 'admin892150', b'1', NULL, '$2a$10$yODxsfqerJMMG1I7eRNtBOBbOgg3hqe6kOJKZWO/EqjxNw/VJEE4e', '101586', 'admin892150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1127, 'admin893150', b'1', NULL, '$2a$10$WNpx.TkhUBbg8bmMb.znBesybYHNx0BjIaeQNtwzM/p3pJX7Jlz42', '101586', 'admin893150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1128, 'admin894150', b'1', NULL, '$2a$10$2fd96iVIPkFto6t0AL6Hyujo.baDs4brwxXpbEUOkeORtY/wUNhFu', '101586', 'admin894150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1129, 'admin895150', b'1', NULL, '$2a$10$aiQ9fdDkApCX9Sl.zCHCOOFkpjJouCAtQq3Dio1XRj8acoV2bmBF6', '101586', 'admin895150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1130, 'admin896150', b'1', NULL, '$2a$10$FjlUnHwez7ixP1V0bid3xeSdIGXYTyfG3Vc6r5NQDzwdqwK1oKeX2', '101586', 'admin896150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1131, 'admin897150', b'1', NULL, '$2a$10$qrfWWJQYRoAoF7VwJSL1uOGNr2uauQRozgsSOlGk7l3y85lu3YtFO', '101586', 'admin897150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1132, 'admin898150', b'1', NULL, '$2a$10$nJCwFTBmt4ZuKVzhaNeciO0.dfxBKW.WFWyySOtkyQ0nQpc2hBM8W', '101586', 'admin898150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1133, 'admin899150', b'1', NULL, '$2a$10$21mbJ573UcyVXICB3WNP.uXTazOlF95Oj1uleROLSB8tiXPBf8z2W', '101586', 'admin899150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1134, 'admin900150', b'1', NULL, '$2a$10$t28k2ayp4w7pT7Uxk9ONbuWEboDAVfSDGBnorJqWQi9jVTTcIDh7u', '101586', 'admin900150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1135, 'admin901150', b'1', NULL, '$2a$10$5rXuC6c1NrIacGqTgMP4o.neM0rOn.9MvKasUKYa4NJOyUZUkDM0u', '101586', 'admin901150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1136, 'admin902150', b'1', NULL, '$2a$10$/cE0/a5HRmt0VTVQa0Kf1OMuDX5vIrFHq5fECYFOJ7Y.iRneMtFd6', '101586', 'admin902150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1137, 'admin903150', b'1', NULL, '$2a$10$m/HCnU7SSNoYdGtEjF6TIuFZ6N6k6QZqoPqAGshy8mM/GwCAaptTu', '101586', 'admin903150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1138, 'admin904150', b'1', NULL, '$2a$10$sYkX.qSVnJLS1/VsRr6WTurCAEY8OTK6d1htRRYVYkRfOoF.GaJiS', '101586', 'admin904150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1139, 'admin905150', b'1', NULL, '$2a$10$ITw/zgcGlOhZAFF52iBQEOziaoZRjZbCfmiyxK5CiM3vNxtI/TFk.', '101586', 'admin905150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1140, 'admin906150', b'1', NULL, '$2a$10$dwwWxzVqV/y6TgeVsUdare/eX.rr9Futx9uVMTI/E8CGval7LN4YC', '101586', 'admin906150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');
INSERT INTO `user` (`id`, `first_name`, `is_enable`, `last_name`, `password`, `user_name`, `user_id`, `emp_name`, `designation`, `department`, `work_location`, `company`, `email`, `mobile`, `joining_date`, `ext_no`, `reporting_to`) VALUES
(1141, 'admin907150', b'1', NULL, '$2a$10$RmeNYEqLYzyDyIy6NdL6suQcwLRmLkrkzHea1LvhASAR5BghVIC6y', '101586', 'admin907150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1142, 'admin908150', b'1', NULL, '$2a$10$Bfj1SmuQr9jlcTW.GONTHeEn5ttIWoS/rq.o3wUaxTXgAW0h17OTa', '101586', 'admin908150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1143, 'admin909150', b'1', NULL, '$2a$10$4NOB22zVzRp0tElxChJO9OmQsDrrejUCCozbmID0gFZULa4WtYihG', '101586', 'admin909150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1144, 'admin910150', b'1', NULL, '$2a$10$q9r4N1fNVvnkGiyI29xfLulIwg9etddKV/qNn4PUehN0Z9ubx.g8m', '101586', 'admin910150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1145, 'admin911150', b'1', NULL, '$2a$10$ytk7FrMSN5SEDvNTH2U.0.FG.ue9UKfhb3DhTBCKF52jDvpHtW7O2', '101586', 'admin911150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1146, 'admin912150', b'1', NULL, '$2a$10$2W5YLAaMgvA7/hpl1OLDEObGbB3RPifStdwKE5P4TZmmUg.k/NpgG', '101586', 'admin912150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1147, 'admin913150', b'1', NULL, '$2a$10$M2QoN266BSaVmBjHa4bZGu97bkoyqpVX615pj/jcr/H7P3qdduAwK', '101586', 'admin913150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1148, 'admin914150', b'1', NULL, '$2a$10$/e5zEWNsp4.tDusOtOdwcuS6BJOI2ecysVFE2qjOQz53STmxhuUS2', '101586', 'admin914150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1149, 'admin915150', b'1', NULL, '$2a$10$ebQPcLqP4h36cncUFg1UKOFkbp3KkfpGCitl..umEsVvIRbZymXpK', '101586', 'admin915150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1150, 'admin916150', b'1', NULL, '$2a$10$0DBIwmpjLsRImrtBhZdIEOGZruH6xUWoc53k.2YKIH/LFa7v9TlZe', '101586', 'admin916150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1151, 'admin917150', b'1', NULL, '$2a$10$RQA4Gfh63VOx90UpyQCkD.tVsqfEbGeTDeE8yOWspm2xz9wPFDSQu', '101586', 'admin917150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1152, 'admin918150', b'1', NULL, '$2a$10$KwtaygIaCw83OsHQzjvsaugTzySQ4nF8BoeWQm1mrPWGqNJ8qd01O', '101586', 'admin918150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1153, 'admin919150', b'1', NULL, '$2a$10$38pbXv7vmVVbmkG5LU7Qi.alumzc570lZ40cQAIZXMTb4lEFNpsx2', '101586', 'admin919150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1154, 'admin920150', b'1', NULL, '$2a$10$watu4KsT9E1lA2bayUwrhu7cIgJXn.ccXWHFulwJyevni7n/I5nbW', '101586', 'admin920150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1155, 'admin921150', b'1', NULL, '$2a$10$HOtv7Dk8cvQd9sWatHn95uiExmI3hPrrTIhH7JoilDVN7K4lzSwsK', '101586', 'admin921150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1156, 'admin922150', b'1', NULL, '$2a$10$6vNgWzeyse4u9wirmcIGteMaB4nfXLX2krjb0fi/o/B93C65GAiua', '101586', 'admin922150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1157, 'admin923150', b'1', NULL, '$2a$10$.1gioEH15lI3W2OVurU80OnWtmw04S0zr4H4Tp436TofacCy4PclW', '101586', 'admin923150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1158, 'admin924150', b'1', NULL, '$2a$10$EeM.uUi8HoyQV.upRu.iIetdDt1VtFgCjtsJ8E6WD7gqteakaq1WS', '101586', 'admin924150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1159, 'admin925150', b'1', NULL, '$2a$10$nm95/hvGWTymbZCWpy494.iY1wm5JsESvTC/DBQhHSgSKQGHas41G', '101586', 'admin925150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1160, 'admin926150', b'1', NULL, '$2a$10$VeMBq5kIQomWclicrka0Ce/WzobV0HJbDnmCdhW8jd8yPmK0I6ljO', '101586', 'admin926150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1161, 'admin927150', b'1', NULL, '$2a$10$.PnoutiJZsXjxuQMgDHo2Oyc9WxLvWcUnZRwz0NaPrxwijzdnqUvq', '101586', 'admin927150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1162, 'admin928150', b'1', NULL, '$2a$10$vF2PC1sM0ZpOqqwx5HlUr.234dUQjOg67s26FviANqwvLqhPD85Mm', '101586', 'admin928150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1163, 'admin929150', b'1', NULL, '$2a$10$F.ZIrUtbNP6eia5b.0qELu9XbPfdAxVpe5b.utevey4goSXdtkXIq', '101586', 'admin929150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1164, 'admin930150', b'1', NULL, '$2a$10$Gu1MoTn3T8Qsjrl8khmCSenQP9gnDRUATpwCHizs89IiWyNKmye/q', '101586', 'admin930150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1165, 'admin931150', b'1', NULL, '$2a$10$HeYcsw3UNNoqTHgPE91ZMefP0rJedvHSOvtoTU.tlyMaPs7piKm8a', '101586', 'admin931150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1166, 'admin932150', b'1', NULL, '$2a$10$KjnfjAJpd1S1ereKBeUrjujXTopBba4IwgU6T6tin86wsa/z/t3MK', '101586', 'admin932150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1167, 'admin933150', b'1', NULL, '$2a$10$MRD52njcuGpBSDZKHSO2JeWRH8mwrsSugIs7zKIqrYozyUAD35fuy', '101586', 'admin933150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1168, 'admin934150', b'1', NULL, '$2a$10$gijhTOscr6Kw.ZJDpuBmpeKmlSoMasPN0L/nWqUtY1CcLPTvn38WG', '101586', 'admin934150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1169, 'admin935150', b'1', NULL, '$2a$10$HtCQQLLQShVxDkpcWfgpOOEB4Gci68XcX72HikcEKksyGauXBsS02', '101586', 'admin935150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1170, 'admin936150', b'1', NULL, '$2a$10$uCXq5fa0RoGH51p.LtZ/1.0ckNyrwvK9aONCqNI18frtM4oXLOKse', '101586', 'admin936150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1171, 'admin937150', b'1', NULL, '$2a$10$ESuedh/Z337MtHh2ALDA7.vg9f8NIUumUyNobOC/Yfjzr1HYl4LJ6', '101586', 'admin937150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1172, 'admin938150', b'1', NULL, '$2a$10$uA7KsqIK9eviFmT5r3Aa9.kv9Ac71GLDdfyxgHjf60XghdHdy5qB.', '101586', 'admin938150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1173, 'admin939150', b'1', NULL, '$2a$10$0eD6XFWfxZ69KK9WBGsao./jCcVreS4sNlhumi8ufjDXJL1FsG5C6', '101586', 'admin939150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1174, 'admin940150', b'1', NULL, '$2a$10$fK.KX2wc06JYD.G9Z4IHa.0nZGxm1RYuFqNJRWJdkKokwZstfto8i', '101586', 'admin940150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1175, 'admin941150', b'1', NULL, '$2a$10$20tXBeeNggxLCBDN67HfE.tzL9dJXhBxNRAGOJ2eE42hFPv.2daPy', '101586', 'admin941150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1176, 'admin942150', b'1', NULL, '$2a$10$GkswOZA2OKTTGStpTxjMmeAK7IABSfRVjEdf0BkK2l5sSxZG8ajla', '101586', 'admin942150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1177, 'admin943150', b'1', NULL, '$2a$10$/5EUAjnazPHnbNtawHLTTu1/AcEzMCtAvZTDyk7Vq7mBUki.SP9Y.', '101586', 'admin943150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1178, 'admin944150', b'1', NULL, '$2a$10$wwC5QKJdJb0QPGG4hGVFQuljlzJL7pyJezwVliRK5nWr5Pb7yJtXG', '101586', 'admin944150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1179, 'admin945150', b'1', NULL, '$2a$10$/SgJPB21.s58jTskIHrhFOMuSwyAvjE4HIyOyRJw8eMox7jPS7HCK', '101586', 'admin945150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1180, 'admin946150', b'1', NULL, '$2a$10$ESAxoTE2F0CHSHqURczu5O4g0N3Vgw9PkIJezj/ZrDgFeWbQr2NH2', '101586', 'admin946150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1181, 'admin947150', b'1', NULL, '$2a$10$3y5RJkYOP1ttslUq4.fcDO69NsZnFHlwEqdgn4VMw07vKU9Z4Pf/a', '101586', 'admin947150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1182, 'admin948150', b'1', NULL, '$2a$10$Lw7nzxUbhf7koDN88aBiieEbbEHZ07ALY.Lk89WMXBI4g/gabvlSW', '101586', 'admin948150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1183, 'admin949150', b'1', NULL, '$2a$10$C1BNx3wB3JQFczzKfyqN.eQ3OwX4tLVyKHxZGhyA8M1BJXYv7TE.y', '101586', 'admin949150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1184, 'admin950150', b'1', NULL, '$2a$10$/7Q8oHumwyS147ZBlY2etOLRBFPqRTsV4qflrpCLl2nddpVKUrMRq', '101586', 'admin950150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1185, 'admin951150', b'1', NULL, '$2a$10$suEX22rK4.3JJgp6Ule7oelGhoV8bO.SNZWzjg/YvURtYwocWcEWi', '101586', 'admin951150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1186, 'admin952150', b'1', NULL, '$2a$10$v8.akDtRSCocVkGpv6Ngau7KD/1yexly7lJZeL0SvkEi7qfoszMrm', '101586', 'admin952150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1187, 'admin953150', b'1', NULL, '$2a$10$iL2bZYru31t7q1DKe0OF0uFN3ztvnYECwW.ONLJ4uwOpfZIzPblJO', '101586', 'admin953150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1188, 'admin954150', b'1', NULL, '$2a$10$vX9rBg0hLPx4rAYLUNmzIuhbBtqi2wazKbt..fst5SxN.9t1U8Scq', '101586', 'admin954150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1189, 'admin955150', b'1', NULL, '$2a$10$TL0N1MTtr/x24b5aO4rMZOIIF9cmzYcU98SOPT5BjrxmZDPrYfu26', '101586', 'admin955150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1190, 'admin956150', b'1', NULL, '$2a$10$fHNoTnSIuvHhvt..3fYT.uN2ChwPiDK18So9sPJ4F1GyTMwDGCWtO', '101586', 'admin956150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1191, 'admin957150', b'1', NULL, '$2a$10$hhHed3QBjb0QUCUsDSBsqu/ojGDzFi6hvRyqwh/aFE9z.7O9UUmIG', '101586', 'admin957150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1192, 'admin958150', b'1', NULL, '$2a$10$ywXRY6fi3Le3zc6aB0ejdefyzcRw2TucE2HdVucEVMZipy7vTlBBu', '101586', 'admin958150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1193, 'admin959150', b'1', NULL, '$2a$10$YPI3uDycPGo0os8hMDctn.RKX9PhIeGjGWI.PbbklknaG6Vdy2DHS', '101586', 'admin959150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1194, 'admin960150', b'1', NULL, '$2a$10$QAapAdiAzz2SkCAs.rrPuu5HPRl2p9tiUKWePYroL.j6cdguEhgXy', '101586', 'admin960150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1195, 'admin961150', b'1', NULL, '$2a$10$G0mednWrUSmhH3at9EWJ6.Ub27lMlz34NcYcO//iLP5BaFJdffv0e', '101586', 'admin961150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1196, 'admin962150', b'1', NULL, '$2a$10$Y0Uw2r8ZKPqyj77ZdPysXOF6h9fxKiVthrgBQcfsN4Z0Yc/bnQ2dO', '101586', 'admin962150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1197, 'admin963150', b'1', NULL, '$2a$10$poklEr2s/45vPPIHdRNDf.dZvwPhdiCSmoklGbpxTCWml88HKhJIO', '101586', 'admin963150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1198, 'admin964150', b'1', NULL, '$2a$10$V6WmGQF9BoeMeZzT.x5XuecmbyeKtgQ7sAy.FTSA7DfhacLw0e.Mi', '101586', 'admin964150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1199, 'admin965150', b'1', NULL, '$2a$10$nI/naqedsw4MsmgwSgVdDuCdFxDdy9pJVRU8okri9NyWNUqH.R9zS', '101586', 'admin965150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1200, 'admin966150', b'1', NULL, '$2a$10$Or/HHxgnesALfRzxpqkfTeivu35iFoN/V350dRad0KmKaFhrsSyJW', '101586', 'admin966150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1201, 'admin967150', b'1', NULL, '$2a$10$fiQGZtVyeNFj3Afr/Woj5uF6l3Ln887m7bX9CelDCRUKXqJgVyUUC', '101586', 'admin967150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1202, 'admin968150', b'1', NULL, '$2a$10$osdQqaQAciJw9Gy5EmTvweCeKIwtWynG7vZQQDf8/KHBJlAu3DNUW', '101586', 'admin968150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1203, 'admin969150', b'1', NULL, '$2a$10$Wde9YNhNcOLkIUFYOm.YoebVYg5L/AKTFt9EuXa.yhUpUnCNE7xDu', '101586', 'admin969150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1204, 'admin970150', b'1', NULL, '$2a$10$MWCZ2OJ7YXqI2fnmPyjLWej4dDFhsUvAVvitqoqq3dpBfYi5.da7e', '101586', 'admin970150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1205, 'admin971150', b'1', NULL, '$2a$10$FkM8LpLRR5xndmEE9zuDB.KEuG9khhB1DZljCW4lYHHd5bJLw9s..', '101586', 'admin971150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1206, 'admin972150', b'1', NULL, '$2a$10$xWB8Q0mu4KfSmitS8DQidumaK0PG1nJU9Q8YFSoYCpNlNFGkSZ3VC', '101586', 'admin972150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1207, 'admin973150', b'1', NULL, '$2a$10$FV7xHm73./li98saHwdzeuEjV2rFgClxw2kUL1hE4u4z.DJxW9sm2', '101586', 'admin973150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1208, 'admin974150', b'1', NULL, '$2a$10$MDtYQa.OAiVfOG.Kn1mqee29oC0WPbpXam1MrQBD.OwGf4MB6/Yk.', '101586', 'admin974150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1209, 'admin975150', b'1', NULL, '$2a$10$rq7G2nWE55Qz5cRBt5SHQu2yrRtoYM.2cc73vtbJ1YxY7iMarwhGK', '101586', 'admin975150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1210, 'admin976150', b'1', NULL, '$2a$10$Er5kEptMwKfhedRaHXFJ0eIN7Hz/6CzxBMIcklrhb.feXVEnrIhuy', '101586', 'admin976150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1211, 'admin977150', b'1', NULL, '$2a$10$SEDfsvmQn/Zj/Vq589UmF.g21zMQZdXMQ0qSAoemNIsw3KgbpD2q.', '101586', 'admin977150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1212, 'admin978150', b'1', NULL, '$2a$10$Bq3eTsDB90vL6rj9Jg3CzuAaxAIhGNF.aG.pi8j9VZfQ8XNxk831y', '101586', 'admin978150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1213, 'admin979150', b'1', NULL, '$2a$10$DniI/6XARO6OrHdCuhpEYubq2k7P79FLLyAAhH4wjR8YnzU0Uzs.q', '101586', 'admin979150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1214, 'admin980150', b'1', NULL, '$2a$10$HvJF/5PUU.Cy7fQgKADeCe8M94yJdoorPUs9VWqU9ER4pm2QdsiwG', '101586', 'admin980150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1215, 'admin981150', b'1', NULL, '$2a$10$sZRpXVwcNpGFri9R.k37kO.CUccVtlOLCU5KT.mu/1haUFZDte/ni', '101586', 'admin981150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1216, 'admin982150', b'1', NULL, '$2a$10$.9UnxCTO81uPQzuVkD8xf.xqxHBE2zlRq4uB0xV6XP0g.gpeKvOaO', '101586', 'admin982150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1217, 'admin983150', b'1', NULL, '$2a$10$Ey2hhO/yBaNyArPm8bClb.Zot28.QAdE0yMa/KzTFkg1HRuL3SCvy', '101586', 'admin983150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1218, 'admin984150', b'1', NULL, '$2a$10$HS5iHK/OK05uqgPLjky9G.nZkIpQ/JbTBv/BhP4X3FPXwj1lE4tWS', '101586', 'admin984150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1219, 'admin985150', b'1', NULL, '$2a$10$.bIUIvD50ohpy53MdQLrZeg7Y8lok5jYPLtM4.AddflQQVr6ncx9G', '101586', 'admin985150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1220, 'admin986150', b'1', NULL, '$2a$10$renWwP0Rpr4rTiMsvHDnR.21QZK2gBfVoLSpdjwRx.aeG1Bh0Zu6q', '101586', 'admin986150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1221, 'admin987150', b'1', NULL, '$2a$10$qZjciYW795HiOfNJRy7rbOM/DZxmrE7an2zc0cEtj.WtSvYKnWN.K', '101586', 'admin987150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1222, 'admin988150', b'1', NULL, '$2a$10$PhWDOUtU.iEKvutfY.MEE.0puYqMFgqBNuM3UPZwiUM9DzRo2yAUi', '101586', 'admin988150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1223, 'admin989150', b'1', NULL, '$2a$10$A.7LW9NU2ocYkjiH7mv7Zu9PEnxwir8CUAI.WR.OdNK4wUp1nKcIe', '101586', 'admin989150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1224, 'admin990150', b'1', NULL, '$2a$10$SoNgbIo2zTD7MkMscuE8Pujo4eEikZLrmkdktPRao0XdOAM.S3pFK', '101586', 'admin990150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1225, 'admin991150', b'1', NULL, '$2a$10$dgpwcrOknOKi4AcUZjN6iek.D4eoCqrtXwkld6FFGWCcMhYQqBAIq', '101586', 'admin991150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1226, 'admin992150', b'1', NULL, '$2a$10$o4CadklXR2Q.2DZd9AOfh.ds0sw4.Rt28afk95LZb0OYgbA7UZV7C', '101586', 'admin992150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1227, 'admin993150', b'1', NULL, '$2a$10$tXhP21hGZ3E9M2lnYAOqjen2WlmElYeEm.Z9bCNx7IiFz71USAsQe', '101586', 'admin993150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1228, 'admin994150', b'1', NULL, '$2a$10$4An.ncrsE8MGaRKubyS6.eOlRj4k3H5DeLLwMcALTfZPPj3EAx54W', '101586', 'admin994150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1229, 'admin995150', b'1', NULL, '$2a$10$vgPguZnzUYV1jSSR9aVkQupNrLJBBSDkE5neu0wpjgaEIMRSY/Iui', '101586', 'admin995150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1230, 'admin996150', b'1', NULL, '$2a$10$X2Xd8RfaPtSxncVjygctEekoTktbUdIcTAR4umMmWTe82kGBV5Qxq', '101586', 'admin996150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1231, 'admin997150', b'1', NULL, '$2a$10$90.U2U0BjvnhcEehf97aAuy/yTxXOyFM.pjtqvE7Y7wO6/n38zOJK', '101586', 'admin997150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1232, 'admin998150', b'1', NULL, '$2a$10$/IdB6yC6imLF.Mi/OzeNQ.0XTKUfxTpQ3FBPEnUjFnjkewYWDYseG', '101586', 'admin998150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1233, 'admin999150', b'1', NULL, '$2a$10$sR/FdyccKnMBjdZT..mOg.fzXq5J5j1JSCUL16cn4PB7hBtEHZ7Li', '101586', 'admin999150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR'),
(1234, 'admin1000150', b'1', NULL, '$2a$10$/gBPLzS7AdQeF0yxgTj7uOuADpHJKfdoJWl4PcU97wRi7PCwqwTMO', '101586', 'admin1000150', 'Md Reazul Haque', 'Software Engineer', 'System', NULL, NULL, 'software@apexholdings.com', '01787694391', NULL, '123', 'SIR');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reporting_to` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `department`, `designation`, `reporting_to`, `user_id`, `user_name`) VALUES
(1, 'System', 'Software Engineer', 'Md Reazul Haque', '101586', 'Md Reazul Haque');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(28, 1),
(34, 2),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(715, 1),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(730, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(762, 1),
(763, 1),
(764, 1),
(765, 1),
(766, 1),
(767, 1),
(768, 1),
(769, 1),
(770, 1),
(771, 1),
(772, 1),
(773, 1),
(774, 1),
(775, 1),
(776, 1),
(777, 1),
(778, 1),
(779, 1),
(780, 1),
(781, 1),
(782, 1),
(783, 1),
(784, 1),
(785, 1),
(786, 1),
(787, 1),
(788, 1),
(789, 1),
(790, 1),
(791, 1),
(792, 1),
(793, 1),
(794, 1),
(795, 1),
(796, 1),
(797, 1),
(798, 1),
(799, 1),
(800, 1),
(801, 1),
(802, 1),
(803, 1),
(804, 1),
(805, 1),
(806, 1),
(807, 1),
(808, 1),
(809, 1),
(810, 1),
(811, 1),
(812, 1),
(813, 1),
(814, 1),
(815, 1),
(816, 1),
(817, 1),
(818, 1),
(819, 1),
(820, 1),
(821, 1),
(822, 1),
(823, 1),
(824, 1),
(825, 1),
(826, 1),
(827, 1),
(828, 1),
(829, 1),
(830, 1),
(831, 1),
(832, 1),
(833, 1),
(834, 1),
(835, 1),
(836, 1),
(837, 1),
(838, 1),
(839, 1),
(840, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 1),
(845, 1),
(846, 1),
(847, 1),
(848, 1),
(849, 1),
(850, 1),
(851, 1),
(852, 1),
(853, 1),
(854, 1),
(855, 1),
(856, 1),
(857, 1),
(858, 1),
(859, 1),
(860, 1),
(861, 1),
(862, 1),
(863, 1),
(864, 1),
(865, 1),
(866, 1),
(867, 1),
(868, 1),
(869, 1),
(870, 1),
(871, 1),
(872, 1),
(873, 1),
(874, 1),
(875, 1),
(876, 1),
(877, 1),
(878, 1),
(879, 1),
(880, 1),
(881, 1),
(882, 1),
(883, 1),
(884, 1),
(885, 1),
(886, 1),
(887, 1),
(888, 1),
(889, 1),
(890, 1),
(891, 1),
(892, 1),
(893, 1),
(894, 1),
(895, 1),
(896, 1),
(897, 1),
(898, 1),
(899, 1),
(900, 1),
(901, 1),
(902, 1),
(903, 1),
(904, 1),
(905, 1),
(906, 1),
(907, 1),
(908, 1),
(909, 1),
(910, 1),
(911, 1),
(912, 1),
(913, 1),
(914, 1),
(915, 1),
(916, 1),
(917, 1),
(918, 1),
(919, 1),
(920, 1),
(921, 1),
(922, 1),
(923, 1),
(924, 1),
(925, 1),
(926, 1),
(927, 1),
(928, 1),
(929, 1),
(930, 1),
(931, 1),
(932, 1),
(933, 1),
(934, 1),
(935, 1),
(936, 1),
(937, 1),
(938, 1),
(939, 1),
(940, 1),
(941, 1),
(942, 1),
(943, 1),
(944, 1),
(945, 1),
(946, 1),
(947, 1),
(948, 1),
(949, 1),
(950, 1),
(951, 1),
(952, 1),
(953, 1),
(954, 1),
(955, 1),
(956, 1),
(957, 1),
(958, 1),
(959, 1),
(960, 1),
(961, 1),
(962, 1),
(963, 1),
(964, 1),
(965, 1),
(966, 1),
(967, 1),
(968, 1),
(969, 1),
(970, 1),
(971, 1),
(972, 1),
(973, 1),
(974, 1),
(975, 1),
(976, 1),
(977, 1),
(978, 1),
(979, 1),
(980, 1),
(981, 1),
(982, 1),
(983, 1),
(984, 1),
(985, 1),
(986, 1),
(987, 1),
(988, 1),
(989, 1),
(990, 1),
(991, 1),
(992, 1),
(993, 1),
(994, 1),
(995, 1),
(996, 1),
(997, 1),
(998, 1),
(999, 1),
(1000, 1),
(1001, 1),
(1002, 1),
(1003, 1),
(1004, 1),
(1005, 1),
(1006, 1),
(1007, 1),
(1008, 1),
(1009, 1),
(1010, 1),
(1011, 1),
(1012, 1),
(1013, 1),
(1014, 1),
(1015, 1),
(1016, 1),
(1017, 1),
(1018, 1),
(1019, 1),
(1020, 1),
(1021, 1),
(1022, 1),
(1023, 1),
(1024, 1),
(1025, 1),
(1026, 1),
(1027, 1),
(1028, 1),
(1029, 1),
(1030, 1),
(1031, 1),
(1032, 1),
(1033, 1),
(1034, 1),
(1035, 1),
(1036, 1),
(1037, 1),
(1038, 1),
(1039, 1),
(1040, 1),
(1041, 1),
(1042, 1),
(1043, 1),
(1044, 1),
(1045, 1),
(1046, 1),
(1047, 1),
(1048, 1),
(1049, 1),
(1050, 1),
(1051, 1),
(1052, 1),
(1053, 1),
(1054, 1),
(1055, 1),
(1056, 1),
(1057, 1),
(1058, 1),
(1059, 1),
(1060, 1),
(1061, 1),
(1062, 1),
(1063, 1),
(1064, 1),
(1065, 1),
(1066, 1),
(1067, 1),
(1068, 1),
(1069, 1),
(1070, 1),
(1071, 1),
(1072, 1),
(1073, 1),
(1074, 1),
(1075, 1),
(1076, 1),
(1077, 1),
(1078, 1),
(1079, 1),
(1080, 1),
(1081, 1),
(1082, 1),
(1083, 1),
(1084, 1),
(1085, 1),
(1086, 1),
(1087, 1),
(1088, 1),
(1089, 1),
(1090, 1),
(1091, 1),
(1092, 1),
(1093, 1),
(1094, 1),
(1095, 1),
(1096, 1),
(1097, 1),
(1098, 1),
(1099, 1),
(1100, 1),
(1101, 1),
(1102, 1),
(1103, 1),
(1104, 1),
(1105, 1),
(1106, 1),
(1107, 1),
(1108, 1),
(1109, 1),
(1110, 1),
(1111, 1),
(1112, 1),
(1113, 1),
(1114, 1),
(1115, 1),
(1116, 1),
(1117, 1),
(1118, 1),
(1119, 1),
(1120, 1),
(1121, 1),
(1122, 1),
(1123, 1),
(1124, 1),
(1125, 1),
(1126, 1),
(1127, 1),
(1128, 1),
(1129, 1),
(1130, 1),
(1131, 1),
(1132, 1),
(1133, 1),
(1134, 1),
(1135, 1),
(1136, 1),
(1137, 1),
(1138, 1),
(1139, 1),
(1140, 1),
(1141, 1),
(1142, 1),
(1143, 1),
(1144, 1),
(1145, 1),
(1146, 1),
(1147, 1),
(1148, 1),
(1149, 1),
(1150, 1),
(1151, 1),
(1152, 1),
(1153, 1),
(1154, 1),
(1155, 1),
(1156, 1),
(1157, 1),
(1158, 1),
(1159, 1),
(1160, 1),
(1161, 1),
(1162, 1),
(1163, 1),
(1164, 1),
(1165, 1),
(1166, 1),
(1167, 1),
(1168, 1),
(1169, 1),
(1170, 1),
(1171, 1),
(1172, 1),
(1173, 1),
(1174, 1),
(1175, 1),
(1176, 1),
(1177, 1),
(1178, 1),
(1179, 1),
(1180, 1),
(1181, 1),
(1182, 1),
(1183, 1),
(1184, 1),
(1185, 1),
(1186, 1),
(1187, 1),
(1188, 1),
(1189, 1),
(1190, 1),
(1191, 1),
(1192, 1),
(1193, 1),
(1194, 1),
(1195, 1),
(1196, 1),
(1197, 1),
(1198, 1),
(1199, 1),
(1200, 1),
(1201, 1),
(1202, 1),
(1203, 1),
(1204, 1),
(1205, 1),
(1206, 1),
(1207, 1),
(1208, 1),
(1209, 1),
(1210, 1),
(1211, 1),
(1212, 1),
(1213, 1),
(1214, 1),
(1215, 1),
(1216, 1),
(1217, 1),
(1218, 1),
(1219, 1),
(1220, 1),
(1221, 1),
(1222, 1),
(1223, 1),
(1224, 1),
(1225, 1),
(1226, 1),
(1227, 1),
(1228, 1),
(1229, 1),
(1230, 1),
(1231, 1),
(1232, 1),
(1233, 1),
(1234, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_list`
--

CREATE TABLE `warehouse_list` (
  `id` bigint(20) NOT NULL,
  `warehouse_code` varchar(45) DEFAULT NULL,
  `warehouse_name` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `incharge_name` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL COMMENT 'Value in Tonnes',
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouse_list`
--

INSERT INTO `warehouse_list` (`id`, `warehouse_code`, `warehouse_name`, `address`, `location`, `incharge_name`, `capacity`, `status`) VALUES
(1, 'WH-001', 'Warehouse-1', 'Dhaka', 'Dhaka', 'None', '10', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `wfheader`
--

CREATE TABLE `wfheader` (
  `wfheader_id` bigint(20) NOT NULL,
  `wfheader_name` varchar(255) DEFAULT NULL,
  `wfheader_group` bigint(20) DEFAULT NULL,
  `wfheader_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wfheader`
--

INSERT INTO `wfheader` (`wfheader_id`, `wfheader_name`, `wfheader_group`, `wfheader_status`) VALUES
(1, 'WO-Creator', 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `wflines`
--

CREATE TABLE `wflines` (
  `wfline_id` bigint(20) NOT NULL,
  `wfline_name` varchar(255) DEFAULT NULL,
  `wfheader_id` bigint(20) DEFAULT NULL,
  `wfline_next_group` bigint(20) DEFAULT NULL,
  `wfline_serial` bigint(20) DEFAULT NULL,
  `wfline_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zone_list`
--

CREATE TABLE `zone_list` (
  `id` bigint(20) NOT NULL,
  `zone_code` varchar(45) DEFAULT NULL,
  `zone_name` varchar(45) DEFAULT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone_list`
--

INSERT INTO `zone_list` (`id`, `zone_code`, `zone_name`, `division_id`, `district_id`, `status`) VALUES
(2, 'Z001', 'Zone1', 1, 2, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`certifications_id`);

--
-- Indexes for table `contract_details`
--
ALTER TABLE `contract_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_farmer_fk` (`farmer_id`),
  ADD KEY `contract_officer_fk` (`officer_id`),
  ADD KEY `contract_office_fk` (`office_id`);

--
-- Indexes for table `contract_input_details`
--
ALTER TABLE `contract_input_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_input_category_fk` (`input_category_id`),
  ADD KEY `contract_product` (`product_id`),
  ADD KEY `contract_input_contract_fk` (`contract_id`);

--
-- Indexes for table `contract_payment_details`
--
ALTER TABLE `contract_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_payment_contract_fk` (`contract_id`);

--
-- Indexes for table `contract_season`
--
ALTER TABLE `contract_season`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_season_fk` (`season_id`),
  ADD KEY `contract_crop_fk` (`crop_id`),
  ADD KEY `contract_crop_variety_fk` (`crop_variety_id`),
  ADD KEY `contract_land_fk` (`land_id`),
  ADD KEY `contract_season_contract_fk` (`contract_id`);

--
-- Indexes for table `contruct_cash_details`
--
ALTER TABLE `contruct_cash_details`
  ADD PRIMARY KEY (`contruct_cash_details_id`),
  ADD KEY `contruct_cash_contruct_fk` (`contruct_id`);

--
-- Indexes for table `contruct_details`
--
ALTER TABLE `contruct_details`
  ADD PRIMARY KEY (`contruct_id`),
  ADD KEY `contruct_user_fk` (`contruct_startby`);

--
-- Indexes for table `contruct_fertilizer_details`
--
ALTER TABLE `contruct_fertilizer_details`
  ADD PRIMARY KEY (`contruct_fartilizer_details_id`),
  ADD KEY `contruct_fertilizer_contruct_fk` (`contruct_id`),
  ADD KEY `contruct_fertilizer_fertilizer_fk` (`fertilizer_id`);

--
-- Indexes for table `contruct_land_details`
--
ALTER TABLE `contruct_land_details`
  ADD PRIMARY KEY (`contruct_land_details_id`),
  ADD KEY `contruct_land_contruct_fk` (`contruct_id`),
  ADD KEY `contruct_land_land_fk` (`land_id`);

--
-- Indexes for table `contruct_seed_details`
--
ALTER TABLE `contruct_seed_details`
  ADD PRIMARY KEY (`contruct_seed_details_id`),
  ADD KEY `contruct_seed_contruct_fk` (`contruct_id`),
  ADD KEY `contruct_seed_seed_fk` (`seed_id`);

--
-- Indexes for table `crop_activity`
--
ALTER TABLE `crop_activity`
  ADD PRIMARY KEY (`crop_activity_id`),
  ADD KEY `cropActivity_user_fk` (`apo_user_id`),
  ADD KEY `cropActiviry_land_fk` (`land_id`),
  ADD KEY `cropActiviry_seed_fk` (`seed_id`),
  ADD KEY `cropActivity_cm_fk` (`contruct_details_id`),
  ADD KEY `cropActiviry_fertilizer_fk` (`fertilizer_id`);

--
-- Indexes for table `crop_grade_list`
--
ALTER TABLE `crop_grade_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grade_crop_fk` (`crop_id`),
  ADD KEY `garder_variety_fk` (`variety_id`);

--
-- Indexes for table `crop_list`
--
ALTER TABLE `crop_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_variety_detail`
--
ALTER TABLE `crop_variety_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variety_crop_fk` (`crop_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dis_div_id` (`div_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dropdown`
--
ALTER TABLE `dropdown`
  ADD PRIMARY KEY (`dropdown_id`);

--
-- Indexes for table `farmer_contruct`
--
ALTER TABLE `farmer_contruct`
  ADD PRIMARY KEY (`farmer_contruct_id`),
  ADD KEY `farmer_contruct_fk` (`farmer_id`);

--
-- Indexes for table `farmer_details`
--
ALTER TABLE `farmer_details`
  ADD PRIMARY KEY (`farmer_id`),
  ADD KEY `farmer_location_fk` (`farmer_location`);

--
-- Indexes for table `farmer_family_details`
--
ALTER TABLE `farmer_family_details`
  ADD PRIMARY KEY (`farmer_family_details_id`),
  ADD KEY `famer_member_farmer_details_fk` (`farmer_id`);

--
-- Indexes for table `farmer_financial_details`
--
ALTER TABLE `farmer_financial_details`
  ADD PRIMARY KEY (`farmer_financial_details_id`),
  ADD KEY `farmer_financial_farmer_id` (`farmer_id`);

--
-- Indexes for table `farm_details`
--
ALTER TABLE `farm_details`
  ADD PRIMARY KEY (`farm_id`),
  ADD KEY `farm_location_fk` (`farm_location`);

--
-- Indexes for table `farm_input_category`
--
ALTER TABLE `farm_input_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_land_detail`
--
ALTER TABLE `farm_land_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmerNamefk` (`farmer_id`),
  ADD KEY `reportingOfficefk` (`reporting_office_id`),
  ADD KEY `reportingFieldOfficer` (`reporting_field_officer_id`);

--
-- Indexes for table `farm_land_planning`
--
ALTER TABLE `farm_land_planning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flp_farmer_fk` (`farmer_id`),
  ADD KEY `flp_farmDetail_fk` (`farm_id`),
  ADD KEY `flp.seasonList_fk` (`season_id`);

--
-- Indexes for table `farm_land_planning_crop`
--
ALTER TABLE `farm_land_planning_crop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planning_crop_farmland_fk` (`farm_land_planning_id`),
  ADD KEY `planning_crop_fk` (`crop_id`),
  ADD KEY `planning_crop_cropVariety_fk` (`crop_variety_id`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`fertilizer_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `input_products`
--
ALTER TABLE `input_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_input_product_fk` (`farm_input_cat_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `inventory_location_fk` (`inv_stock_location`);

--
-- Indexes for table `labour`
--
ALTER TABLE `labour`
  ADD PRIMARY KEY (`labour_id`);

--
-- Indexes for table `land_details`
--
ALTER TABLE `land_details`
  ADD PRIMARY KEY (`land_id`),
  ADD KEY `land_location_fk` (`land_location_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `planning_detail`
--
ALTER TABLE `planning_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pd_land_fk` (`land_id`),
  ADD KEY `pd_contract_fk` (`contract_id`),
  ADD KEY `pd_office_fk` (`office_id`),
  ADD KEY `pd_officer_fk` (`officer_id`),
  ADD KEY `pd_farmer_fk` (`farmer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_manufacturer_fk` (`product_manufacturer_id`),
  ADD KEY `product_category_fk` (`product_category`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`purchase_history_id`),
  ADD KEY `purchase_history_user_fk` (`purchase_by`);

--
-- Indexes for table `reporting_field_officer`
--
ALTER TABLE `reporting_field_officer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporting_office`
--
ALTER TABLE `reporting_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporting_user`
--
ALTER TABLE `reporting_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season_list`
--
ALTER TABLE `season_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seed_master`
--
ALTER TABLE `seed_master`
  ADD PRIMARY KEY (`seed_master_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `union`
--
ALTER TABLE `union`
  ADD PRIMARY KEY (`id`),
  ADD KEY `union_div_id` (`div_id`),
  ADD KEY `union_dis_id` (`dis_id`),
  ADD KEY `union_zila_id` (`zila_id`);

--
-- Indexes for table `upazila`
--
ALTER TABLE `upazila`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zila_div_id` (`div_id`),
  ADD KEY `zila_dis_id` (`dis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- Indexes for table `warehouse_list`
--
ALTER TABLE `warehouse_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wfheader`
--
ALTER TABLE `wfheader`
  ADD PRIMARY KEY (`wfheader_id`),
  ADD KEY `wfheaderGroup_fk` (`wfheader_group`);

--
-- Indexes for table `wflines`
--
ALTER TABLE `wflines`
  ADD PRIMARY KEY (`wfline_id`),
  ADD KEY `wfLine_wfheader_fk` (`wfheader_id`),
  ADD KEY `wfLine_Group_fk` (`wfline_next_group`);

--
-- Indexes for table `zone_list`
--
ALTER TABLE `zone_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_division_fk` (`division_id`),
  ADD KEY `zone_district_fk` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `certifications_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_details`
--
ALTER TABLE `contract_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contract_input_details`
--
ALTER TABLE `contract_input_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_payment_details`
--
ALTER TABLE `contract_payment_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_season`
--
ALTER TABLE `contract_season`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contruct_details`
--
ALTER TABLE `contruct_details`
  MODIFY `contruct_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contruct_fertilizer_details`
--
ALTER TABLE `contruct_fertilizer_details`
  MODIFY `contruct_fartilizer_details_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contruct_land_details`
--
ALTER TABLE `contruct_land_details`
  MODIFY `contruct_land_details_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contruct_seed_details`
--
ALTER TABLE `contruct_seed_details`
  MODIFY `contruct_seed_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crop_activity`
--
ALTER TABLE `crop_activity`
  MODIFY `crop_activity_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crop_list`
--
ALTER TABLE `crop_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crop_variety_detail`
--
ALTER TABLE `crop_variety_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dropdown`
--
ALTER TABLE `dropdown`
  MODIFY `dropdown_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `farmer_contruct`
--
ALTER TABLE `farmer_contruct`
  MODIFY `farmer_contruct_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farmer_details`
--
ALTER TABLE `farmer_details`
  MODIFY `farmer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `farmer_family_details`
--
ALTER TABLE `farmer_family_details`
  MODIFY `farmer_family_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `farmer_financial_details`
--
ALTER TABLE `farmer_financial_details`
  MODIFY `farmer_financial_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `farm_details`
--
ALTER TABLE `farm_details`
  MODIFY `farm_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `farm_input_category`
--
ALTER TABLE `farm_input_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farm_land_detail`
--
ALTER TABLE `farm_land_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `farm_land_planning`
--
ALTER TABLE `farm_land_planning`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm_land_planning_crop`
--
ALTER TABLE `farm_land_planning_crop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fertilizer`
--
ALTER TABLE `fertilizer`
  MODIFY `fertilizer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `input_products`
--
ALTER TABLE `input_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labour`
--
ALTER TABLE `labour`
  MODIFY `labour_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `land_details`
--
ALTER TABLE `land_details`
  MODIFY `land_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `planning_detail`
--
ALTER TABLE `planning_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reporting_field_officer`
--
ALTER TABLE `reporting_field_officer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reporting_office`
--
ALTER TABLE `reporting_office`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reporting_user`
--
ALTER TABLE `reporting_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `season_list`
--
ALTER TABLE `season_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seed_master`
--
ALTER TABLE `seed_master`
  MODIFY `seed_master_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `union`
--
ALTER TABLE `union`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upazila`
--
ALTER TABLE `upazila`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse_list`
--
ALTER TABLE `warehouse_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wfheader`
--
ALTER TABLE `wfheader`
  MODIFY `wfheader_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zone_list`
--
ALTER TABLE `zone_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract_details`
--
ALTER TABLE `contract_details`
  ADD CONSTRAINT `contract_farmer_fk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_office_fk` FOREIGN KEY (`office_id`) REFERENCES `reporting_office` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_officer_fk` FOREIGN KEY (`officer_id`) REFERENCES `reporting_field_officer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contract_input_details`
--
ALTER TABLE `contract_input_details`
  ADD CONSTRAINT `contract_input_category_fk` FOREIGN KEY (`input_category_id`) REFERENCES `farm_input_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_input_contract_fk` FOREIGN KEY (`contract_id`) REFERENCES `contract_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contract_payment_details`
--
ALTER TABLE `contract_payment_details`
  ADD CONSTRAINT `contract_payment_contract_fk` FOREIGN KEY (`contract_id`) REFERENCES `contract_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contract_season`
--
ALTER TABLE `contract_season`
  ADD CONSTRAINT `contract_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crop_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_crop_variety_fk` FOREIGN KEY (`crop_variety_id`) REFERENCES `crop_variety_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_land_fk` FOREIGN KEY (`land_id`) REFERENCES `land_details` (`land_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_season_contract_fk` FOREIGN KEY (`contract_id`) REFERENCES `contract_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contract_season_fk` FOREIGN KEY (`season_id`) REFERENCES `season_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contruct_cash_details`
--
ALTER TABLE `contruct_cash_details`
  ADD CONSTRAINT `contruct_cash_contruct_fk` FOREIGN KEY (`contruct_id`) REFERENCES `contruct_details` (`contruct_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contruct_details`
--
ALTER TABLE `contruct_details`
  ADD CONSTRAINT `contruct_user_fk` FOREIGN KEY (`contruct_startby`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contruct_fertilizer_details`
--
ALTER TABLE `contruct_fertilizer_details`
  ADD CONSTRAINT `contruct_fertilizer_contruct_fk` FOREIGN KEY (`contruct_id`) REFERENCES `contruct_details` (`contruct_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contruct_fertilizer_fertilizer_fk` FOREIGN KEY (`fertilizer_id`) REFERENCES `fertilizer` (`fertilizer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contruct_land_details`
--
ALTER TABLE `contruct_land_details`
  ADD CONSTRAINT `contruct_land_contruct_fk` FOREIGN KEY (`contruct_id`) REFERENCES `contruct_details` (`contruct_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contruct_land_land_fk` FOREIGN KEY (`land_id`) REFERENCES `land_details` (`land_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contruct_seed_details`
--
ALTER TABLE `contruct_seed_details`
  ADD CONSTRAINT `contruct_seed_contruct_fk` FOREIGN KEY (`contruct_id`) REFERENCES `contruct_details` (`contruct_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contruct_seed_seed_fk` FOREIGN KEY (`seed_id`) REFERENCES `seed_master` (`seed_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `crop_activity`
--
ALTER TABLE `crop_activity`
  ADD CONSTRAINT `cropActiviry_fertilizer_fk` FOREIGN KEY (`fertilizer_id`) REFERENCES `fertilizer` (`fertilizer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cropActiviry_land_fk` FOREIGN KEY (`land_id`) REFERENCES `land_details` (`land_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cropActiviry_seed_fk` FOREIGN KEY (`seed_id`) REFERENCES `seed_master` (`seed_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cropActivity_cm_fk` FOREIGN KEY (`contruct_details_id`) REFERENCES `contruct_details` (`contruct_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cropActivity_user_fk` FOREIGN KEY (`apo_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `crop_grade_list`
--
ALTER TABLE `crop_grade_list`
  ADD CONSTRAINT `garder_variety_fk` FOREIGN KEY (`variety_id`) REFERENCES `crop_variety_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `grade_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crop_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `crop_variety_detail`
--
ALTER TABLE `crop_variety_detail`
  ADD CONSTRAINT `variety_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crop_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `dis_div_id` FOREIGN KEY (`div_id`) REFERENCES `division` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farmer_contruct`
--
ALTER TABLE `farmer_contruct`
  ADD CONSTRAINT `farmer_contruct_fk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farmer_details`
--
ALTER TABLE `farmer_details`
  ADD CONSTRAINT `farmer_location_fk` FOREIGN KEY (`farmer_location`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farmer_family_details`
--
ALTER TABLE `farmer_family_details`
  ADD CONSTRAINT `famer_member_farmer_details_fk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farmer_financial_details`
--
ALTER TABLE `farmer_financial_details`
  ADD CONSTRAINT `farmer_financial_farmer_id` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farm_details`
--
ALTER TABLE `farm_details`
  ADD CONSTRAINT `farm_location_fk` FOREIGN KEY (`farm_location`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farm_land_detail`
--
ALTER TABLE `farm_land_detail`
  ADD CONSTRAINT `farmerNamefk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reportingFieldOfficer` FOREIGN KEY (`reporting_field_officer_id`) REFERENCES `reporting_field_officer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reportingOfficefk` FOREIGN KEY (`reporting_office_id`) REFERENCES `reporting_office` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farm_land_planning`
--
ALTER TABLE `farm_land_planning`
  ADD CONSTRAINT `flp.seasonList_fk` FOREIGN KEY (`season_id`) REFERENCES `season_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `flp_farmDetail_fk` FOREIGN KEY (`farm_id`) REFERENCES `farm_details` (`farm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `flp_farmer_fk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farm_land_planning_crop`
--
ALTER TABLE `farm_land_planning_crop`
  ADD CONSTRAINT `planning_crop_cropVariety_fk` FOREIGN KEY (`crop_variety_id`) REFERENCES `crop_variety_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `planning_crop_farmland_fk` FOREIGN KEY (`farm_land_planning_id`) REFERENCES `farm_land_planning` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `planning_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crop_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `input_products`
--
ALTER TABLE `input_products`
  ADD CONSTRAINT `farm_input_product_fk` FOREIGN KEY (`farm_input_cat_id`) REFERENCES `farm_input_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_location_fk` FOREIGN KEY (`inv_stock_location`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `land_details`
--
ALTER TABLE `land_details`
  ADD CONSTRAINT `land_location_fk` FOREIGN KEY (`land_location_id`) REFERENCES `location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `planning_detail`
--
ALTER TABLE `planning_detail`
  ADD CONSTRAINT `pd_contract_fk` FOREIGN KEY (`contract_id`) REFERENCES `contract_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pd_farmer_fk` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`farmer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pd_land_fk` FOREIGN KEY (`land_id`) REFERENCES `land_details` (`land_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pd_office_fk` FOREIGN KEY (`office_id`) REFERENCES `reporting_office` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pd_officer_fk` FOREIGN KEY (`officer_id`) REFERENCES `reporting_field_officer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_fk` FOREIGN KEY (`product_category`) REFERENCES `farm_input_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_manufacturer_fk` FOREIGN KEY (`product_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD CONSTRAINT `purchase_history_user_fk` FOREIGN KEY (`purchase_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `union`
--
ALTER TABLE `union`
  ADD CONSTRAINT `union_dis_id` FOREIGN KEY (`dis_id`) REFERENCES `district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `union_div_id` FOREIGN KEY (`div_id`) REFERENCES `division` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `union_zila_id` FOREIGN KEY (`zila_id`) REFERENCES `upazila` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `upazila`
--
ALTER TABLE `upazila`
  ADD CONSTRAINT `zila_dis_id` FOREIGN KEY (`dis_id`) REFERENCES `district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `zila_div_id` FOREIGN KEY (`div_id`) REFERENCES `division` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `wfheader`
--
ALTER TABLE `wfheader`
  ADD CONSTRAINT `wfheaderGroup_fk` FOREIGN KEY (`wfheader_group`) REFERENCES `group` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wflines`
--
ALTER TABLE `wflines`
  ADD CONSTRAINT `wfLine_Group_fk` FOREIGN KEY (`wfline_next_group`) REFERENCES `group` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `wfLine_wfheader_fk` FOREIGN KEY (`wfheader_id`) REFERENCES `wfheader` (`wfheader_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zone_list`
--
ALTER TABLE `zone_list`
  ADD CONSTRAINT `zone_district_fk` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `zone_division_fk` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
