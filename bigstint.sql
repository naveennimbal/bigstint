-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2017 at 04:51 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `clickjobsnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Userid` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(150) NOT NULL DEFAULT '',
  `Dateadded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Datemodified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Privilege` varchar(50) NOT NULL DEFAULT '',
  `Active` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Userid`, `Password`, `Dateadded`, `Datemodified`, `Privilege`, `Active`) VALUES
('naveen', 'e691cb702f5d25642aa87009ef1948f8', '2016-12-29 00:00:00', '2016-12-29 00:00:00', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cj_ch_edu_spec`
--

CREATE TABLE `cj_ch_edu_spec` (
  `Spec_Code` bigint(20) NOT NULL DEFAULT '0',
  `Edu_Code` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_ch_jobprompt`
--

CREATE TABLE `cj_ch_jobprompt` (
  `Keyword` text NOT NULL,
  `Pref_Loc` varchar(50) NOT NULL DEFAULT '',
  `Yr_Of_Exp` tinyint(4) NOT NULL DEFAULT '0',
  `Car_Level` tinyint(4) NOT NULL DEFAULT '0',
  `Indus_Code` varchar(15) NOT NULL DEFAULT '',
  `Func_Code` varchar(50) NOT NULL DEFAULT '',
  `Alert_Freq` tinyint(4) NOT NULL DEFAULT '0',
  `Prompt_Title` varchar(50) NOT NULL DEFAULT '',
  `Flag` char(2) NOT NULL DEFAULT '',
  `ReceiveType` varchar(10) NOT NULL DEFAULT '',
  `Status` char(1) DEFAULT 'A',
  `Modified` date NOT NULL DEFAULT '0000-00-00',
  `Resume_Type` varchar(25) NOT NULL DEFAULT '',
  `Search_Type` varchar(10) NOT NULL DEFAULT '',
  `Jp_Id` bigint(20) NOT NULL,
  `Salary` char(3) NOT NULL DEFAULT '',
  `Employer_Name` varchar(70) NOT NULL DEFAULT '',
  `Emp_Type` tinyint(4) NOT NULL DEFAULT '0',
  `Emp_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Jobs_Within` tinyint(4) NOT NULL DEFAULT '0',
  `Sort_Result` tinyint(4) NOT NULL DEFAULT '0',
  `Search_Condn_Word` tinyint(4) NOT NULL DEFAULT '0',
  `Job_Posted_By` tinyint(4) NOT NULL DEFAULT '0',
  `SQuery` text NOT NULL,
  `UserId` varchar(20) NOT NULL DEFAULT '',
  `Jobr_Code` varchar(50) NOT NULL DEFAULT '',
  `location` text NOT NULL,
  `url` text NOT NULL,
  `min_sal` varchar(3) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4176330 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_ch_jobprompt_duplicate`
--

CREATE TABLE `cj_ch_jobprompt_duplicate` (
  `Keyword` text NOT NULL,
  `Pref_Loc` varchar(50) NOT NULL DEFAULT '',
  `Yr_Of_Exp` tinyint(4) NOT NULL DEFAULT '0',
  `Car_Level` tinyint(4) NOT NULL DEFAULT '0',
  `Indus_Code` varchar(15) NOT NULL DEFAULT '',
  `Func_Code` varchar(50) NOT NULL DEFAULT '',
  `Alert_Freq` tinyint(4) NOT NULL DEFAULT '0',
  `Prompt_Title` varchar(50) NOT NULL DEFAULT '',
  `Flag` char(2) NOT NULL DEFAULT '',
  `ReceiveType` varchar(10) NOT NULL DEFAULT '',
  `Status` char(1) DEFAULT 'A',
  `Modified` date NOT NULL DEFAULT '0000-00-00',
  `Resume_Type` varchar(25) NOT NULL DEFAULT '',
  `Search_Type` varchar(10) NOT NULL DEFAULT '',
  `Jp_Id` bigint(20) NOT NULL,
  `Salary` char(3) NOT NULL DEFAULT '',
  `Employer_Name` varchar(70) NOT NULL DEFAULT '',
  `Emp_Type` tinyint(4) NOT NULL DEFAULT '0',
  `Emp_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Jobs_Within` tinyint(4) NOT NULL DEFAULT '0',
  `Sort_Result` tinyint(4) NOT NULL DEFAULT '0',
  `Search_Condn_Word` tinyint(4) NOT NULL DEFAULT '0',
  `Job_Posted_By` tinyint(4) NOT NULL DEFAULT '0',
  `SQuery` text NOT NULL,
  `UserId` varchar(20) NOT NULL DEFAULT '',
  `Jobr_Code` varchar(50) NOT NULL DEFAULT '',
  `location` text NOT NULL,
  `url` text NOT NULL,
  `min_sal` varchar(3) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4166940 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_ch_jobseekers_res_det`
--

CREATE TABLE `cj_ch_jobseekers_res_det` (
  `Res_Id` tinyint(4) NOT NULL DEFAULT '0',
  `Res_Path` varchar(150) NOT NULL DEFAULT '',
  `New_Res_Path` varchar(150) NOT NULL DEFAULT '',
  `Res_Type` char(1) NOT NULL DEFAULT '',
  `Res_Stat` tinyint(1) NOT NULL DEFAULT '3',
  `Key_Skills` text NOT NULL,
  `Res_Headline` text NOT NULL,
  `Fs_Path` varchar(150) NOT NULL DEFAULT '',
  `Yr_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `Mth_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `Indus_Code` int(6) NOT NULL DEFAULT '0',
  `Func_Code` int(6) NOT NULL DEFAULT '0',
  `Jobr_Code` int(6) NOT NULL DEFAULT '0',
  `Pref_Loc_Code` varchar(100) NOT NULL DEFAULT '',
  `Res_Original_Name` varchar(50) NOT NULL DEFAULT '',
  `Edu_Code1` int(6) NOT NULL DEFAULT '0',
  `Edu_Other1` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code1` int(6) NOT NULL DEFAULT '0',
  `Spec_Other1` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code1` int(6) NOT NULL DEFAULT '0',
  `Instit_Other1` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp1` int(6) NOT NULL DEFAULT '0',
  `Edu_Code2` int(6) NOT NULL DEFAULT '0',
  `Edu_Other2` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code2` int(6) NOT NULL DEFAULT '0',
  `Spec_Other2` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code2` int(6) NOT NULL DEFAULT '0',
  `Instit_Other2` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp2` int(6) NOT NULL DEFAULT '0',
  `Edu_Code3` int(6) NOT NULL DEFAULT '0',
  `Edu_Other3` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code3` int(6) NOT NULL DEFAULT '0',
  `Spec_Other3` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code3` int(6) NOT NULL DEFAULT '0',
  `Instit_Other3` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp3` int(6) NOT NULL DEFAULT '0',
  `Indus_Exp` float(5,2) NOT NULL DEFAULT '0.00',
  `Func_Exp` float(5,2) NOT NULL DEFAULT '0.00',
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `FileServer_Name` varchar(20) NOT NULL DEFAULT '',
  `App_Def` tinyint(4) NOT NULL DEFAULT '0',
  `Avail_Request` varchar(5) NOT NULL DEFAULT '',
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cj_ch_jobseekers_res_det`
--

INSERT INTO `cj_ch_jobseekers_res_det` (`Res_Id`, `Res_Path`, `New_Res_Path`, `Res_Type`, `Res_Stat`, `Key_Skills`, `Res_Headline`, `Fs_Path`, `Yr_Of_Exp`, `Mth_Of_Exp`, `Indus_Code`, `Func_Code`, `Jobr_Code`, `Pref_Loc_Code`, `Res_Original_Name`, `Edu_Code1`, `Edu_Other1`, `Spec_Code1`, `Spec_Other1`, `Instit_Code1`, `Instit_Other1`, `Yr_Of_Comp1`, `Edu_Code2`, `Edu_Other2`, `Spec_Code2`, `Spec_Other2`, `Instit_Code2`, `Instit_Other2`, `Yr_Of_Comp2`, `Edu_Code3`, `Edu_Other3`, `Spec_Code3`, `Spec_Other3`, `Instit_Code3`, `Instit_Other3`, `Yr_Of_Comp3`, `Indus_Exp`, `Func_Exp`, `UserId`, `FileServer_Name`, `App_Def`, `Avail_Request`, `DateAdded`) VALUES
(0, '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0.00, 0.00, 'nav280720_2', '', 0, '', '2016-07-28 12:48:20'),
(0, '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0.00, 0.00, 'aks081006_2', '', 0, '', '2016-10-08 14:59:06'),
(0, '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0.00, 0.00, 'aks081023_2', '', 0, '', '2016-10-08 14:59:23'),
(0, '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0, '', 0, 0.00, 0.00, 'aks081007_2', '', 0, '', '2016-10-08 15:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `cj_ch_jobseekers_res_det_duplicate`
--

CREATE TABLE `cj_ch_jobseekers_res_det_duplicate` (
  `Res_Id` tinyint(4) NOT NULL DEFAULT '0',
  `Res_Path` varchar(150) NOT NULL DEFAULT '',
  `New_Res_Path` varchar(150) NOT NULL DEFAULT '',
  `Res_Type` char(1) NOT NULL DEFAULT '',
  `Res_Stat` tinyint(1) NOT NULL DEFAULT '3',
  `Key_Skills` text NOT NULL,
  `Res_Headline` text NOT NULL,
  `Fs_Path` varchar(150) NOT NULL DEFAULT '',
  `Yr_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `Mth_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `Indus_Code` int(6) NOT NULL DEFAULT '0',
  `Func_Code` int(6) NOT NULL DEFAULT '0',
  `Jobr_Code` int(6) NOT NULL DEFAULT '0',
  `Pref_Loc_Code` varchar(100) NOT NULL DEFAULT '',
  `Res_Original_Name` varchar(50) NOT NULL DEFAULT '',
  `Edu_Code1` int(6) NOT NULL DEFAULT '0',
  `Edu_Other1` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code1` int(6) NOT NULL DEFAULT '0',
  `Spec_Other1` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code1` int(6) NOT NULL DEFAULT '0',
  `Instit_Other1` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp1` int(6) NOT NULL DEFAULT '0',
  `Edu_Code2` int(6) NOT NULL DEFAULT '0',
  `Edu_Other2` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code2` int(6) NOT NULL DEFAULT '0',
  `Spec_Other2` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code2` int(6) NOT NULL DEFAULT '0',
  `Instit_Other2` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp2` int(6) NOT NULL DEFAULT '0',
  `Edu_Code3` int(6) NOT NULL DEFAULT '0',
  `Edu_Other3` varchar(50) NOT NULL DEFAULT '',
  `Spec_Code3` int(6) NOT NULL DEFAULT '0',
  `Spec_Other3` varchar(50) NOT NULL DEFAULT '',
  `Instit_Code3` int(6) NOT NULL DEFAULT '0',
  `Instit_Other3` varchar(100) NOT NULL DEFAULT '',
  `Yr_Of_Comp3` int(6) NOT NULL DEFAULT '0',
  `Indus_Exp` float(5,2) NOT NULL DEFAULT '0.00',
  `Func_Exp` float(5,2) NOT NULL DEFAULT '0.00',
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `FileServer_Name` varchar(20) NOT NULL DEFAULT '',
  `App_Def` tinyint(4) NOT NULL DEFAULT '0',
  `Avail_Request` varchar(5) NOT NULL DEFAULT '',
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_city`
--

CREATE TABLE `cj_mast_city` (
  `City_Code` int(6) NOT NULL,
  `St_Code` char(3) NOT NULL DEFAULT '',
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `City_Desc` varchar(100) NOT NULL DEFAULT '',
  `Reg_code` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=558 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_companies`
--

CREATE TABLE `cj_mast_companies` (
  `company_name` varchar(250) NOT NULL DEFAULT '',
  `company_index` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_country`
--

CREATE TABLE `cj_mast_country` (
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `Cnt_Desc` varchar(100) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_currency_type`
--

CREATE TABLE `cj_mast_currency_type` (
  `Currency_Code` int(6) NOT NULL,
  `Currency_Type` char(4) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_education`
--

CREATE TABLE `cj_mast_education` (
  `Edu_Code` int(6) NOT NULL,
  `Edu_Desc` varchar(100) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_functional`
--

CREATE TABLE `cj_mast_functional` (
  `Func_Code` int(6) NOT NULL,
  `Func_Desc` varchar(100) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_industry`
--

CREATE TABLE `cj_mast_industry` (
  `Ind_Code` int(6) NOT NULL COMMENT 'Industrty Code, Unique id',
  `Ind_Desc` varchar(100) NOT NULL DEFAULT '' COMMENT 'Full name of the industry',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cj_mast_industry`
--

INSERT INTO `cj_mast_industry` (`Ind_Code`, `Ind_Desc`, `Disp_Order`) VALUES
(2, 'Accounting / Audit / Tax Services', 1),
(3, 'Advertising / Event Management / PR / MR', 2),
(4, 'Agriculture / Dairy / Fishing', 3),
(6, 'Architecture / Interior Design', 4),
(7, 'Automotive / Ancillaries', 5),
(8, 'Banking & Financial Services', 6),
(16, 'BPO / KPO / ITES / CRM / Transcription / E Learning', 7),
(10, 'Chemicals / Polymer / Plastic / Rubber', 8),
(11, 'Computer Hardware', 9),
(12, 'Construction / Cement / Metals', 10),
(14, 'Consulting / Market Research', 11),
(15, 'Courier / Freight / Transportation', 12),
(17, 'Data Processing Services', 13),
(18, 'Education / Training', 14),
(21, 'Employment Services / Recruitment Services', 15),
(22, 'Engineering Services', 16),
(23, 'Entertainment / Media / Publishing', 17),
(24, 'Fashion / Beauty / Fitness / Accessories', 18),
(49, 'Fertilizer/ Pesticides', 19),
(13, 'FMCG / Consumer Durables', 20),
(25, 'Food & Beverages', 21),
(1, 'Fresh Graduate/ No Industry Experience', 22),
(50, 'Gems & Jewellery', 23),
(51, 'Government/ PSU/ Defence', 24),
(26, 'Health Care / Medical Services / Hospitals', 25),
(27, 'Hospitality / Airlines / Travel / Tourism', 26),
(52, 'Import / Export', 27),
(28, 'Information Technology', 28),
(29, 'Insurance', 29),
(30, 'Internet / Dotcom', 30),
(31, 'Leather', 31),
(32, 'Legal / Law', 32),
(33, 'Logistics / Supply Chain', 33),
(34, 'Manufacturing / Industrial / Production/ Machinery', 34),
(36, 'NGO / Social Services', 35),
(37, 'Office Supplies / Office Maintenance', 36),
(48, 'Others', 37),
(53, 'Paints', 38),
(38, 'Paper', 39),
(39, 'Petroleum / Oil & Gases / Energy & Utilities', 40),
(40, 'Pharmaceuticals / Biotechnology / Clinical Research', 41),
(54, 'Printing / Packaging', 42),
(41, 'Real Estate / Property', 43),
(42, 'Retail / Wholesale', 44),
(43, 'Security / Protection Services', 45),
(20, 'Semiconductors & Electrical', 46),
(44, 'Shipping / Marine', 47),
(45, 'Telecom / ISP', 48),
(55, 'Textile / Garments', 49),
(47, 'Warehousing', 50),
(56, 'Wood and Fibre', 51);

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_institute`
--

CREATE TABLE `cj_mast_institute` (
  `Instit_Code` int(6) NOT NULL,
  `Instit_Desc` varchar(150) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_jobrole`
--

CREATE TABLE `cj_mast_jobrole` (
  `Jobr_Code` int(6) NOT NULL,
  `Func_Code` int(6) NOT NULL DEFAULT '0',
  `Jobr_Desc` varchar(100) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0',
  `Search_Banner` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1354 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_pref_loc`
--

CREATE TABLE `cj_mast_pref_loc` (
  `Pref_Loc_Code` int(6) NOT NULL,
  `Pref_Loc_Desc` varchar(100) NOT NULL DEFAULT '',
  `Pref_Loc_Value` varchar(255) DEFAULT NULL,
  `Cnt_Code` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=520 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_specialization`
--

CREATE TABLE `cj_mast_specialization` (
  `Spec_Code` bigint(20) NOT NULL,
  `Spec_Desc` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cj_mast_state`
--

CREATE TABLE `cj_mast_state` (
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `St_Code` char(3) NOT NULL DEFAULT '',
  `St_Desc` char(100) NOT NULL DEFAULT '',
  `Disp_Order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `Id` int(6) NOT NULL,
  `Xml` mediumblob NOT NULL,
  `Dateadded` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1470 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobapplications_duplicate`
--

CREATE TABLE `jobapplications_duplicate` (
  `Id` bigint(10) NOT NULL,
  `Job_Id` bigint(8) NOT NULL DEFAULT '0',
  `Jobseeker_Id` varchar(50) NOT NULL DEFAULT '',
  `Resume_Id` tinyint(1) NOT NULL DEFAULT '0',
  `Employer_Id` varchar(50) NOT NULL DEFAULT '',
  `Date_Applied` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Application_Status` varchar(15) NOT NULL DEFAULT '',
  `Job_Expiry_Date` date NOT NULL DEFAULT '0000-00-00',
  `Child_Folder_Name` varchar(25) NOT NULL DEFAULT '',
  `Xml` mediumblob,
  `Name` varchar(60) NOT NULL DEFAULT '',
  `Email` varchar(60) NOT NULL DEFAULT '',
  `Confirm_Email` varchar(60) NOT NULL DEFAULT '',
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `St_Code` char(3) NOT NULL DEFAULT '',
  `City_Code` char(3) NOT NULL DEFAULT '',
  `Phone` varchar(20) NOT NULL DEFAULT '',
  `Res_Path` varchar(150) NOT NULL DEFAULT '',
  `Cover_Letter` text NOT NULL,
  `CommentsXml` text,
  `Relevance` float(5,2) NOT NULL DEFAULT '0.00',
  `Modify_Flag` char(1) NOT NULL DEFAULT '',
  `Parent_Folder_Name` varchar(70) NOT NULL DEFAULT '',
  `Type` char(3) NOT NULL DEFAULT '',
  `Js_Status` char(1) NOT NULL DEFAULT 'Y',
  `Target_Job_Id` varchar(70) NOT NULL DEFAULT '',
  `Request_Status` varchar(5) NOT NULL DEFAULT '',
  `Mail_Status` char(1) NOT NULL DEFAULT 'N',
  `SMS_Flag` char(1) NOT NULL DEFAULT 'N',
  `Job_Type` int(1) NOT NULL DEFAULT '1',
  `show_status` char(1) NOT NULL DEFAULT '',
  `Flag` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=209385681 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `JobPostId` bigint(20) NOT NULL,
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `Xml` mediumblob NOT NULL,
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateActivated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Type` varchar(10) DEFAULT '',
  `Status` tinyint(1) NOT NULL DEFAULT '2',
  `ValidDays` int(4) NOT NULL DEFAULT '0',
  `SubUserId` varchar(50) NOT NULL DEFAULT '',
  `PlanType` varchar(30) NOT NULL DEFAULT '',
  `Source` int(5) NOT NULL DEFAULT '0',
  `Views` bigint(20) NOT NULL DEFAULT '0',
  `AppliedClicks` bigint(20) NOT NULL DEFAULT '0',
  `Job_Title` varchar(70) NOT NULL DEFAULT '',
  `Job_Title_Edit` varchar(70) NOT NULL DEFAULT '',
  `Vacancies` varchar(10) NOT NULL DEFAULT '',
  `Job_Desc` text NOT NULL,
  `Key_Skills` text NOT NULL,
  `Compensation` varchar(30) NOT NULL DEFAULT '',
  `Cnt_Code` text NOT NULL,
  `St_Code` text NOT NULL,
  `Ind_Code` text NOT NULL,
  `Func_Code` int(11) NOT NULL DEFAULT '0',
  `Func_Filter` tinyint(4) NOT NULL DEFAULT '0',
  `Jobr_Code` int(4) NOT NULL DEFAULT '0',
  `Job_Level` tinyint(4) NOT NULL DEFAULT '0',
  `Gender` tinyint(1) NOT NULL DEFAULT '0',
  `GenderFilter` tinyint(1) NOT NULL DEFAULT '0',
  `WorkExp_Min` tinyint(2) NOT NULL DEFAULT '-1',
  `WorkExp_Max` tinyint(2) NOT NULL DEFAULT '-1',
  `WorkExp_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Edu_Code` tinytext NOT NULL,
  `Qual_Others` varchar(100) NOT NULL DEFAULT '',
  `Qual_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Ack_Id` int(11) NOT NULL DEFAULT '0',
  `Ack_Letter` tinyint(1) NOT NULL DEFAULT '0',
  `Cmp_Name` varchar(60) NOT NULL DEFAULT '',
  `Cmp_Profile` text NOT NULL,
  `Profile_Default` tinyint(1) NOT NULL DEFAULT '0',
  `Travel` tinyint(1) NOT NULL DEFAULT '0',
  `Emp_Type` tinyint(1) NOT NULL DEFAULT '0',
  `Emp_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Ref_Code` varchar(50) NOT NULL DEFAULT '',
  `Contact_Name` varchar(50) NOT NULL DEFAULT '',
  `Designation` varchar(50) NOT NULL DEFAULT '',
  `Address` tinytext NOT NULL,
  `Off1_Std` varchar(6) NOT NULL DEFAULT '',
  `Off1_Phone` varchar(18) NOT NULL DEFAULT '',
  `Off2_Std` varchar(6) NOT NULL DEFAULT '',
  `Off2_Phone` varchar(12) NOT NULL DEFAULT '',
  `Fax_Std` varchar(6) NOT NULL DEFAULT '',
  `Fax_Phone` varchar(12) NOT NULL DEFAULT '',
  `MobileNo` varchar(16) NOT NULL DEFAULT '',
  `Url` varchar(150) NOT NULL DEFAULT '',
  `Hidden` varchar(50) NOT NULL DEFAULT '',
  `DisplayLogo` tinyint(1) NOT NULL DEFAULT '1',
  `Res_Format` tinyint(1) NOT NULL DEFAULT '1',
  `Rec_Res` tinyint(1) NOT NULL DEFAULT '1',
  `Receive_Email` text NOT NULL,
  `Response_Visible` tinyint(1) NOT NULL DEFAULT '0',
  `RedirectUrl` varchar(200) NOT NULL DEFAULT '',
  `Jp_Date` int(2) NOT NULL DEFAULT '0',
  `Jp_Mth` tinyint(2) NOT NULL DEFAULT '0',
  `Jp_Yr` int(4) NOT NULL DEFAULT '0',
  `WalkinJobs` tinyint(1) NOT NULL DEFAULT '2',
  `Template_Id` tinyint(1) NOT NULL DEFAULT '0',
  `Deactivate_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Jobprompt_Cnt` int(11) NOT NULL DEFAULT '0',
  `Auto_Match` tinyint(4) NOT NULL DEFAULT '1',
  `Auto_Match_Location` tinyint(1) NOT NULL DEFAULT '0',
  `Jobloc_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Jobrole_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Exp_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `delete_status` char(1) NOT NULL DEFAULT 'N',
  `keyskill_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Posting_Type` tinyint(1) NOT NULL DEFAULT '1',
  `ip` varchar(20) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM AUTO_INCREMENT=1607779 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobpost_duplicate`
--

CREATE TABLE `jobpost_duplicate` (
  `JobPostId` bigint(20) NOT NULL DEFAULT '0',
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `Xml` mediumblob NOT NULL,
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateActivated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Type` varchar(10) DEFAULT '',
  `Status` tinyint(1) NOT NULL DEFAULT '2',
  `ValidDays` int(4) NOT NULL DEFAULT '0',
  `SubUserId` varchar(50) NOT NULL DEFAULT '',
  `PlanType` varchar(30) NOT NULL DEFAULT '',
  `Source` int(5) NOT NULL DEFAULT '0',
  `Views` bigint(20) NOT NULL DEFAULT '0',
  `AppliedClicks` bigint(20) NOT NULL DEFAULT '0',
  `Job_Title` varchar(70) NOT NULL DEFAULT '',
  `Job_Title_Edit` varchar(60) NOT NULL DEFAULT '',
  `Vacancies` varchar(10) NOT NULL DEFAULT '',
  `Job_Desc` text NOT NULL,
  `Key_Skills` text NOT NULL,
  `Compensation` varchar(30) NOT NULL DEFAULT '',
  `Cnt_Code` text NOT NULL,
  `St_Code` text NOT NULL,
  `Ind_Code` text NOT NULL,
  `Func_Code` int(11) NOT NULL DEFAULT '0',
  `Func_Filter` tinyint(4) NOT NULL DEFAULT '0',
  `Jobr_Code` int(4) NOT NULL DEFAULT '0',
  `Job_Level` tinyint(4) NOT NULL DEFAULT '0',
  `Gender` tinyint(1) NOT NULL DEFAULT '0',
  `GenderFilter` tinyint(1) NOT NULL DEFAULT '0',
  `WorkExp_Min` tinyint(2) NOT NULL DEFAULT '-1',
  `WorkExp_Max` tinyint(2) NOT NULL DEFAULT '-1',
  `WorkExp_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Edu_Code` tinytext NOT NULL,
  `Qual_Others` varchar(100) NOT NULL DEFAULT '',
  `Qual_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Ack_Id` int(11) NOT NULL DEFAULT '0',
  `Ack_Letter` tinyint(1) NOT NULL DEFAULT '0',
  `Cmp_Name` varchar(60) NOT NULL DEFAULT '',
  `Cmp_Profile` text NOT NULL,
  `Profile_Default` tinyint(1) NOT NULL DEFAULT '0',
  `Travel` tinyint(1) NOT NULL DEFAULT '0',
  `Emp_Type` tinyint(1) NOT NULL DEFAULT '0',
  `Emp_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Ref_Code` varchar(50) NOT NULL DEFAULT '',
  `Contact_Name` varchar(50) NOT NULL DEFAULT '',
  `Designation` varchar(50) NOT NULL DEFAULT '',
  `Address` tinytext NOT NULL,
  `Off1_Std` varchar(6) NOT NULL DEFAULT '',
  `Off1_Phone` varchar(18) NOT NULL DEFAULT '',
  `Off2_Std` varchar(6) NOT NULL DEFAULT '',
  `Off2_Phone` varchar(12) NOT NULL DEFAULT '',
  `Fax_Std` varchar(6) NOT NULL DEFAULT '',
  `Fax_Phone` varchar(12) NOT NULL DEFAULT '',
  `MobileNo` varchar(16) NOT NULL DEFAULT '',
  `Url` varchar(150) NOT NULL DEFAULT '',
  `Hidden` varchar(50) NOT NULL DEFAULT '',
  `DisplayLogo` tinyint(1) NOT NULL DEFAULT '1',
  `Res_Format` tinyint(1) NOT NULL DEFAULT '1',
  `Rec_Res` tinyint(1) NOT NULL DEFAULT '1',
  `Receive_Email` text NOT NULL,
  `Response_Visible` tinyint(1) NOT NULL DEFAULT '0',
  `RedirectUrl` varchar(200) NOT NULL DEFAULT '',
  `Jp_Date` int(2) NOT NULL DEFAULT '0',
  `Jp_Mth` tinyint(2) NOT NULL DEFAULT '0',
  `Jp_Yr` int(4) NOT NULL DEFAULT '0',
  `WalkinJobs` tinyint(1) NOT NULL DEFAULT '2',
  `Template_Id` tinyint(1) NOT NULL DEFAULT '0',
  `Deactivate_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Jobprompt_Cnt` int(11) NOT NULL DEFAULT '0',
  `Auto_Match` tinyint(4) NOT NULL DEFAULT '1',
  `Auto_Match_Location` tinyint(1) NOT NULL DEFAULT '0',
  `Jobloc_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Jobrole_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Exp_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `delete_status` char(1) NOT NULL DEFAULT 'N',
  `keyskill_Filter` tinyint(1) NOT NULL DEFAULT '0',
  `Posting_Type` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobpost_mis`
--

CREATE TABLE `jobpost_mis` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `addedby` varchar(150) NOT NULL DEFAULT '',
  `cj` int(11) NOT NULL DEFAULT '0',
  `na` int(11) NOT NULL DEFAULT '0',
  `mj` int(11) NOT NULL DEFAULT '0',
  `tj` int(11) NOT NULL DEFAULT '0',
  `sh` int(11) NOT NULL DEFAULT '0',
  `addedon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4327 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers`
--

CREATE TABLE `jobseekers` (
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(250) NOT NULL DEFAULT '',
  `ProfileId` varchar(50) NOT NULL DEFAULT '',
  `Xml` mediumtext NOT NULL,
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Validated` tinyint(1) NOT NULL DEFAULT '3',
  `Name` varchar(60) NOT NULL DEFAULT '',
  `Email` varchar(60) NOT NULL DEFAULT '',
  `BlogUrl` varchar(100) NOT NULL DEFAULT '',
  `Website` varchar(100) NOT NULL DEFAULT '',
  `Microblog` varchar(100) NOT NULL DEFAULT '',
  `Active` tinyint(1) NOT NULL DEFAULT '2',
  `JobPrompt` tinyint(1) NOT NULL DEFAULT '3',
  `SiteId` varchar(100) NOT NULL DEFAULT '',
  `ReferredBy` bigint(11) NOT NULL DEFAULT '0',
  `LastActive` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SmsAlert` char(1) NOT NULL DEFAULT 'N',
  `Email_Auth` char(1) NOT NULL DEFAULT 'F',
  `Mobile_Auth` char(1) NOT NULL DEFAULT 'F',
  `Res_Phone_Auth` char(1) NOT NULL DEFAULT 'F',
  `KioskID` varchar(100) DEFAULT '',
  `BranchID` varchar(100) DEFAULT '',
  `Mobile` varchar(20) NOT NULL DEFAULT '',
  `Res_Cnt` varchar(5) NOT NULL DEFAULT '',
  `Mob_Cnt` varchar(5) NOT NULL DEFAULT '',
  `Res_Std` varchar(6) NOT NULL DEFAULT '',
  `Res_Phone` varchar(12) NOT NULL DEFAULT '',
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `St_Code` char(3) NOT NULL DEFAULT '',
  `St_Other` varchar(30) NOT NULL DEFAULT '',
  `City_Code` char(3) NOT NULL DEFAULT '',
  `City_Other` varchar(50) NOT NULL DEFAULT '',
  `Dob` date NOT NULL DEFAULT '0000-00-00',
  `Gender` char(1) NOT NULL DEFAULT '',
  `Photo_Path` varchar(150) NOT NULL DEFAULT '',
  `Current_Resume` int(1) NOT NULL DEFAULT '0',
  `Block_Comp` text NOT NULL,
  `Name_Flag` char(1) NOT NULL DEFAULT '',
  `Email_Flag` char(1) NOT NULL DEFAULT '',
  `Mailing_Address` text NOT NULL,
  `Mailing_Flag` char(1) NOT NULL DEFAULT '',
  `Contact_Flag` char(1) NOT NULL DEFAULT '',
  `Shield_Type` tinyint(1) NOT NULL DEFAULT '0',
  `Res_P_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Res_UP_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Res_UM_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Res_Mod_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Res_UMod_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Sms_Code` varchar(7) NOT NULL DEFAULT '',
  `Email_Code` varchar(7) NOT NULL DEFAULT '',
  `Interested_In` varchar(30) NOT NULL DEFAULT '',
  `PhotoStatus` tinyint(1) NOT NULL DEFAULT '0',
  `Profile_Settings` int(11) NOT NULL DEFAULT '0',
  `Profile_View` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Res` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Oth_Res` varchar(200) NOT NULL DEFAULT '',
  `Deleted_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Email_Verify_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Mobile_Verify_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AutoApply` tinyint(1) NOT NULL DEFAULT '0',
  `EmailActive` tinyint(1) NOT NULL DEFAULT '0',
  `fb_id` varchar(25) NOT NULL DEFAULT '',
  `proStatus` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseekers`
--

INSERT INTO `jobseekers` (`UserId`, `Password`, `ProfileId`, `Xml`, `DateAdded`, `DateModified`, `Validated`, `Name`, `Email`, `BlogUrl`, `Website`, `Microblog`, `Active`, `JobPrompt`, `SiteId`, `ReferredBy`, `LastActive`, `SmsAlert`, `Email_Auth`, `Mobile_Auth`, `Res_Phone_Auth`, `KioskID`, `BranchID`, `Mobile`, `Res_Cnt`, `Mob_Cnt`, `Res_Std`, `Res_Phone`, `Cnt_Code`, `St_Code`, `St_Other`, `City_Code`, `City_Other`, `Dob`, `Gender`, `Photo_Path`, `Current_Resume`, `Block_Comp`, `Name_Flag`, `Email_Flag`, `Mailing_Address`, `Mailing_Flag`, `Contact_Flag`, `Shield_Type`, `Res_P_Status`, `Res_UP_Status`, `Res_UM_Status`, `Res_Mod_Status`, `Res_UMod_Status`, `Sms_Code`, `Email_Code`, `Interested_In`, `PhotoStatus`, `Profile_Settings`, `Profile_View`, `Delete_Status`, `Delete_Res`, `Delete_Oth_Res`, `Deleted_Date`, `Email_Verify_Date`, `Mobile_Verify_Date`, `AutoApply`, `EmailActive`, `fb_id`, `proStatus`) VALUES
('abc200713_2', '25f9e794323b453885f5181f1b624d0b', 'abc200713_2', '', '2016-07-20 13:01:13', '0000-00-00 00:00:00', 0, '', 'abc@xyz.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0),
('ema200755_2', '202cb962ac59075b964b07152d234b70', 'ema200755_2', '', '2016-07-20 13:07:55', '0000-00-00 00:00:00', 0, '', 'email@email.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0),
('nav280720_2', '202cb962ac59075b964b07152d234b70', 'nav280720_2', '', '2016-07-28 12:48:20', '0000-00-00 00:00:00', 0, 'Naveen', 'nav@xyz.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '9990724433', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0),
('aks081006_2', 'fe2db07bb4632ca4fb54861d7638fc0c', 'aks081006_2', '', '2016-10-08 14:59:06', '0000-00-00 00:00:00', 0, '', 'aks@nnn.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0),
('aks081023_2', 'fe2db07bb4632ca4fb54861d7638fc0c', 'aks081023_2', '', '2016-10-08 14:59:23', '0000-00-00 00:00:00', 0, '', 'aks1@nnn.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0),
('aks081007_2', 'fe2db07bb4632ca4fb54861d7638fc0c', 'aks081007_2', '', '2016-10-08 15:09:07', '0000-00-00 00:00:00', 0, '', 'aks11@nnn.com', '', '', '', 0, 0, '', 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '1234567890', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 0, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers_duplicate`
--

CREATE TABLE `jobseekers_duplicate` (
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(150) NOT NULL DEFAULT '',
  `ProfileId` varchar(50) NOT NULL DEFAULT '',
  `Xml` mediumtext NOT NULL,
  `DateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Validated` tinyint(1) NOT NULL DEFAULT '3',
  `Name` varchar(60) NOT NULL DEFAULT '',
  `Email` varchar(60) NOT NULL DEFAULT '',
  `BlogUrl` varchar(100) NOT NULL DEFAULT '',
  `Website` varchar(100) NOT NULL DEFAULT '',
  `Microblog` varchar(100) NOT NULL DEFAULT '',
  `Active` tinyint(1) NOT NULL DEFAULT '2',
  `JobPrompt` tinyint(1) NOT NULL DEFAULT '3',
  `SiteId` varchar(100) NOT NULL DEFAULT '',
  `ReferredBy` bigint(11) NOT NULL DEFAULT '0',
  `LastActive` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SmsAlert` char(1) NOT NULL DEFAULT 'N',
  `Email_Auth` char(1) NOT NULL DEFAULT 'F',
  `Mobile_Auth` char(1) NOT NULL DEFAULT 'F',
  `KioskID` varchar(100) DEFAULT '',
  `BranchID` varchar(100) DEFAULT '',
  `Mobile` varchar(20) NOT NULL DEFAULT '',
  `Res_Cnt` varchar(5) NOT NULL DEFAULT '',
  `Mob_Cnt` varchar(5) NOT NULL DEFAULT '',
  `Res_Std` varchar(6) NOT NULL DEFAULT '',
  `Res_Phone` varchar(12) NOT NULL DEFAULT '',
  `Cnt_Code` char(3) NOT NULL DEFAULT '',
  `St_Code` char(3) NOT NULL DEFAULT '',
  `St_Other` varchar(30) NOT NULL DEFAULT '',
  `City_Code` char(3) NOT NULL DEFAULT '',
  `City_Other` varchar(50) NOT NULL DEFAULT '',
  `Dob` date NOT NULL DEFAULT '0000-00-00',
  `Gender` char(1) NOT NULL DEFAULT '',
  `Photo_Path` varchar(150) NOT NULL DEFAULT '',
  `Current_Resume` int(1) NOT NULL DEFAULT '0',
  `Block_Comp` text NOT NULL,
  `Name_Flag` char(1) NOT NULL DEFAULT '',
  `Email_Flag` char(1) NOT NULL DEFAULT '',
  `Mailing_Address` text NOT NULL,
  `Mailing_Flag` char(1) NOT NULL DEFAULT '',
  `Contact_Flag` char(1) NOT NULL DEFAULT '',
  `Shield_Type` tinyint(1) NOT NULL DEFAULT '0',
  `Res_P_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Res_UP_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Res_UM_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Res_Mod_Status` tinyint(4) NOT NULL DEFAULT '0',
  `Res_UMod_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Sms_Code` varchar(7) NOT NULL DEFAULT '',
  `Email_Code` varchar(7) NOT NULL DEFAULT '',
  `Interested_In` varchar(30) NOT NULL DEFAULT '',
  `PhotoStatus` tinyint(1) NOT NULL DEFAULT '0',
  `Profile_Settings` int(11) NOT NULL DEFAULT '0',
  `Profile_View` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Status` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Res` tinyint(1) NOT NULL DEFAULT '0',
  `Delete_Oth_Res` varchar(200) NOT NULL DEFAULT '',
  `Email_Verify_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Mobile_Verify_Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AutoApply` tinyint(1) NOT NULL DEFAULT '0',
  `EmailActive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `js_contact_info`
--

CREATE TABLE `js_contact_info` (
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `MobileNo` varchar(16) DEFAULT '',
  `DateAdded` datetime DEFAULT '0000-00-00 00:00:00',
  `PushInfo` char(1) DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `pageTitle` varchar(150) DEFAULT 'No Title ',
  `content` text,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `pageTitle`, `content`, `status`) VALUES
(1, 'Privacy Policy', '<div class="term post-box box-1" style="padding-top:10px;">\r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">JobstoNaukri.com is committed to protecting the privacy of our users. We want to provide a safe, secure user experience. We will use commercially reasonable efforts, as described below, to ensure that the information you submit to us remains private, and is used only for the purposes as set forth herein. The following reflects our commitment to you.</p>\r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">This privacy commitment is subject to, and governed by, the JobstoNaukri.com <a href="termsOfUse.php" target="_blank" class="slnk1">Terms and Conditions of Use</a>, which represents the entire agreement between the user and JobstoNaukri.com. In the event that any of the terms, conditions or statements contained in this privacy commitment conflict with the Terms, the Terms shall control.</p><br>\r\n			\r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>Information About All Visitors to the JobstoNaukri.com Site</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">In general, we gather information about all of our users collectively, such as what areas users visit most frequently and what services users access the most. We only use such data in the aggregate. This information helps us determine what is most beneficial for our users, and how we can continually create a better overall experience for our users. We may share this information with our partners, but only in the aggregate, so that they too may understand how users, collectively, use career areas and our site, and so they may create a better overall experience for you.</p><br>\r\n				 \r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>Information About You Specifically</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">In some instances, such as when you sign up to use a service, we may need more specific information about you, such as your name, mailing address, e-mail address, telephone number etc. We may use that information to make you aware of additional products and services, which may be of interest to you, or to contact you regarding site changes. We may also ask for other information, such as information on your interests, your likes and dislikes regarding the site, the types of jobs you are interested in, etc., in an effort to deliver to you the best possible site experience.</p><br>\r\n			\r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>General Information Disclosure</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">We do not disclose information about your individual visits to JobstoNaukri.com, or personal information that you provide, such as your name, address, e-mail address, telephone number, etc., to any outside parties, except when we believe disclosure is required under applicable law. But, we may record and share aggregated information with our partners. Also, if you input your information on a co-branded registration page or site, then your information becomes the property of both JobstoNaukri.com and the partner co-sponsoring the pages or site. In that instance, JobstoNaukri.com is not responsible for the information that the partner receives.</p><br>\r\n\r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>Profiles</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">Since JobstoNaukri.com is a career site we give you the option of putting your profile in our database. Any potential employer may review the Resume that you create as part of your employment profile. You can elect to keep some details on your Resume confidential (such as your name, mailing address, email address, telephone number(s), current employer). If a prospective employer is interested in reviewing your full profile, we will contact you via e-mail and provide you with the name of the potential employer. If you decide that you would like for the potential employer to view your full profile, you may respond directly to the potential employer through the JobstoNaukri.com site and your full profile will be forwarded to the potential employer. Although JobstoNaukri.com will take commercially reasonable efforts to ensure that no person or entity views your full profile without your permission, JobstoNaukri.com cannot guarantee that unauthorized persons will not have access to or view your profile and will not be responsible for any such unauthorized access or viewing of your profile.</p>	 \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">You may remove your profile at any time. However, potential employers who you have permitted to view your profile may have retained a copy of your profile in their own files or databases. We are not responsible for the retention, use, or privacy of profiles in these instances.</p><br>\r\n			\r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>DISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">THIS SITE IS PROVIDED BY JobstoNaukri.COM ON AN "AS IS" AND "AS AVAILABLE" BASIS. JobstoNaukri.COM MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THIS SITE OR THE INFORMATION, CONTENT, MATERIALS, OR PRODUCTS INCLUDED ON THIS SITE. YOU EXPRESSLY AGREE THAT YOUR USE OF THIS SITE IS AT YOUR SOLE RISK.</p>	 \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">TO THE FULL EXTENT PERMISSIBLE BY APPLICABLE LAW, JobstoNaukri.COM DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. JobstoNaukri.COM DOES NOT WARRANT THAT THIS SITE, ITS SERVERS, OR E-MAIL SENT FROM JobstoNaukri.COM ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS. JobstoNaukri.COM WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM THE USE OF THIS SITE, INCLUDING, BUT NOT LIMITED TO DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES.</p>\r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">As to extraneous contents: JobstoNaukri.com hereby alerts and warns its members of the possibility of unauthorized posting of contents by any person including members and unauthorized users and advises discretion in access since such content, information or representation may not be suitable to you including being offensive. JobstoNaukri.com will not in any way be responsible for such content, information or representations. JobstoNaukri.com is also not responsible for alterations, modifications, deletion, reproduction, sale, transmission or any such misuse of data and content in the public domain by any user.</p><br>\r\n				 \r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>Feedback</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">JobstoNaukri.com has an area on the site where you can submit feedback. Any feedback that is submitted through this area becomes the property of JobstoNaukri.com. We may use this feedback, such as success stories, for marketing purposes, or to contact you for further feedback on the site.</p><br>		 \r\n\r\n			<p style="padding-top:10px; color:#1CAED4;"><strong>Privacy Commitment Changes</strong></p> \r\n			<p style="line-height:17px; padding:10px 10px 0px 0px;" align="justify">We may change this privacy commitment at any time, the changes therein will be updated here. If, at any time, you have questions or concerns about JobstoNaukri.com''s privacy commitment, please feel free to e-mail us at <a href="mailto:support@JobstoNaukri.com" class="slnk1"><img src="http://imgs.JobstoNaukri.com/jbs/images/support.gif" alt="" align="absmiddle" border="0"></a>.</p>\r\n			</div>', 1),
(2, 'Terms and Conditions', '<div style="padding-top:10px;" class="term post-box box-1">\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>INTRODUCTION</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">\r\n\r\n\r\nThis website page states the Terms of Use under which You (User, Your) may use Jobstonaukri.com (the Site, Website, Web site). Please read these terms of Use, carefully, and if you do not accept them, do not use this Website or Service.\r\nBy using the page, you are indicating your acceptance to be bound by these Terms of Use. Jobstonaukri.com may revise Terms of Use at any time by updating this document, and you should visit this page periodically to review the Terms of Use, because they are binding on you.\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>PRIVACY</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">\r\n\r\nPlease review our Privacy Notice, which also governs your visit to Jobstonaukri.com, to understand our practices. </p>\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>REFUND OF FEE</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">\r\n\r\n\r\n\r\n\r\n\r\nIf you choose to terminate your membership, the MEMBERSHIP FEES ARE NOT REFUNDABLE under any circumstances.\r\n\r\nYour membership in the Jobstonaukri.com service is for your sole, personal use. You may not authorize others to use your membership and you may not assign or transfer your account to any other person or entity. \r\nOnce the order is accomplished and the product is sent from our end to you there will be no Refund and Charge-Back. As a customer you are responsible for understanding this upon purchasing any product at Our Job Portal. No Claim of Charge-Back/ Refund shall be admissible in-case of once the service delivered. \r\nOnce the Service Enrolled from your end, the verification dept. will be in touch with you regarding the updation of profile. If you don’t respond and there will be delay in the services. So, in this situation you are responsible and you cann’t Claim of Charge-Back/ Refund. </p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>SITE POLICIES, MODIFICATION AND SEVERABILITY</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">\r\n\r\n\r\n\r\nPlease review our other policies, such as our pricing policy, posted on this site. These policies also govern your visit to www.Jobstonaukri.com and consortium of portals. We reserve the right to make changes to our site, policies, and these Terms and Conditions of Use at any time. If any of these conditions shall be deemed invalid, void, or for any reason unenforceable, that condition shall be deemed severable and shall not affect the validity and enforceability of any remaining condition.\r\nSuggestions, Complaints, Disputes: Suggestions and complaints are to be first addressed to Jobstonaukri.com''s Customer Support Department at support@Jobstonaukri.com\r\n\r\n</p>\r\n\r\n					<p align="justify" style="line-height:18px;padding:0px 0px 10px 0px;">By using the page, you are indicating your acceptance to be bound by these Terms of Use. Jobstonaukri.com may revise Terms of Use at any time by updating this document, and you should visit this page periodically to review the Terms of Use, because they are binding on you.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>PRIVACY</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">Please review our Privacy Notice, which also governs your visit to Jobstonaukri.com, to understand our practices.</p>\r\n\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>ELECTRONIC COMMUNICATIONS</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">When you visit Jobstonaukri.com or send e-mails to us, you are communicating with us electronically. You consent to receive communications from us electronically. We will communicate with you by e-mail or by posting notices on this site. You agree that all agreements, notices, disclosures and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>COPYRIGHT</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">All content included on this site, such as text, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, and software, is the property of Jobstonaukri.com or its content suppliers and protected by Indian and international copyright laws. The compilation of all content on this site is the exclusive property of Jobstonaukri.com and protected by Indian and international copyright laws. All software used on this site is the property of Jobstonaukri.com or its software suppliers and protected by Indian and international copyright laws.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>TRADEMARK</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;"><a class="slnk1" href="http://www.Jobstonaukri.com/">www.Jobstonaukri.com</a> And other marks indicated on our site are registered trademarks of Jobstonaukri.com, or its subsidiaries, in the United States and other countries. Other Jobstonaukri.com graphics, logos, page headers, button icons, scripts, and service names are trademarks or trade dress of Jobstonaukri.com, or its subsidiaries. Jobstonaukri.com''s trademarks and trade dress may not be used in connection with any product or service that is not Jobstonaukri.com''s, in any manner that is likely to cause confusion among customers or in any manner that disparages or discredits Jobstonaukri.com. All other trademarks not owned by Jobstonaukri.com or its subsidiaries that appear on this site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by Jobstonaukri.com or its subsidiaries.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>LICENSE AND SITE ACCESS</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">Jobstonaukri.com grants you a limited license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of Jobstonaukri.com. This license does not include any resale or commercial use of this site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of this site or its contents; any downloading or copying of account information for the benefit of another merchant; or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of Jobstonaukri.com. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of Jobstonaukri.com and our affiliates without express written consent. You may not use any Meta tags or any other "hidden text" utilizing Jobstonaukri.com''s name or trademarks without the express written consent of Jobstonaukri.com. Any unauthorized use terminates the permission or license granted by Jobstonaukri.com. You may not use any Jobstonaukri.com logo or other proprietary graphic or trademark as part of the link without express written permission.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>Jobstonaukri SITE SECURITY RULES</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">Users are prohibited from violating or attempting to violate the security of any Jobstonaukri Site, including, without limitation,</p>\r\n\r\n					<ol type="a" style="padding:0px 0px 0px 30px; line-height:18px; margin-top:0px; margin-bottom:10px; _margin-bottom:5px;" class="term">\r\n						<li> 1) Accessing data not intended for such user or logging into a server or account which the user is not authorized to access,</li>\r\n						<li> 2) Attempting to probe, scan or test the vulnerability of a system or network or to breach security or authentication measures without proper authorization,</li>\r\n						<li>3) Attempting to interfere with service to any user, host or network, including, without limitation, via means of submitting a virus to any Jobstonaukri Site, overloading, "flooding", "spamming", "mail bombing" or "crashing",</li>\r\n						<li> 4) Sending unsolicited e-mail, including promotions and/or advertising of products or services, or</li>\r\n						<li> 5) forging any TCP/IP packet header or any part of the header information in any e-mail or newsgroup posting. Violations of system or network security may result in civil or criminal liability. The Company will investigate occurrences which may involve such violations and may involve, and cooperate with, law enforcement authorities in prosecuting users who are involved in such violations.</li>\r\n					</ol>\r\n\r\n\r\n\r\n	<p style="padding-top:10px; color:#1CAED4;"><strong>POLICIES AND PRICING</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">Employers as well as Resume Owners that Register at our site, shall be deemed to be customers of Jobstonaukri.com. Accordingly, all of our Terms of Use, rules, policies, and operating procedures concerning customers, our services, and our pricing shall apply to those customers. We may change our policies and operating procedures at any time and without any notice to customers. For example, we, in our sole discretion, shall determine the prices to be charged for Resume downloads in accordance with our own pricing policies.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>PAYOUT DETERMINATION &amp; RULES</strong></p>\r\n					<p align="justify" style="line-height:18px; padding:5px 0px 10px 0px;">"A Qualified Purchase" means a complete, successful, confirmed and valid purchase of contact information by an Employer or a User paying to access the Site. Any purchase that is withdrawn, disputed or otherwise voided by the payee or any other party cannot be considered an "A Qualified Purchase". Final determination of whether each purchase is considered an "A Qualified Purchase" is at sole discretion of Jobstonaukri.</p>\r\n\r\n					<p align="justify" style="line-height:18px; padding:0px 0px 10px 0px;">There can only be one "Qualifying Download" of Contact Information for each Resume downloaded by each Employer. In other words, the same Employer repeatedly downloading the contact information of the same Resume will NOT result in additional Qualifying Downloads. However, the same Resume can be downloaded by multiple Employers, with each Employer''s download resulting in a separate Qualifying Download. Final determination of whether each Resume download is considered a "Qualifying Download" is at sole discretion of Jobstonaukri.</p>\r\n\r\n					<p align="justify" style="line-height:18px; padding:0px 0px 10px 0px;">"Qualifying Payouts" means a commission payable to Customers when their contact information from their resume is viewed. Qualifying Payouts can be of several types and amounts. "Qualifying Referral" means another User (with a complete, successful and confirmed Registration) that was invited by a Customer by e-mailing or providing them with an Invitation Code or by referring them through an Affiliate Link. Any Registrations that are not successful, that are incomplete or invalid, or any Invitations or Referrals that are not properly documented, recorded and assigned by Jobstonaukri.com, can not result in Qualifying Referrals. Final determination of whether each Registration is considered a "Qualifying Referral" is at sole discretion of Jobstonaukri.</p>\r\n\r\n					<p align="justify" style="line-height:18px; padding:0px 0px 10px 0px;">All Payments are calculated as sums of Affiliate''s Qualifying Payouts resulting from Qualifying Downloads of Contact Information.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>PAYOUTS</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">You may request an Affiliate Payment issued to you when the total fee payment(s) due to you exceeds the specified minimum payout level (currently set at Rs. 100 (Rupees One Hundred)).</p>\r\n\r\n					<p align="justify" style="line-height:18px;padding:0px 0px 10px 0px;">Please note that due to the fact that you may optionally donate your affiliate payment to charity or support a social cause, no payments will be automatically sent to you until you request a withdrawal. You must request a withdrawal from My Rewards section under the My Profile area of Jobstonaukri.com to receive any payment from Jobstonaukri.com.</p>\r\n\r\n					<p align="justify" style="line-height:18px;padding:0px 0px 10px 0px;">You may choose to receive the payment through a cheque depending on the details they submit to us and availability (subject to change). We reserve the right to offer only certain withdrawal types for certain Affiliates at our discretion. We reserve the right to change these withdrawal types at our sole discretion and at any time without any prior notification to anyone.</p>\r\n\r\n					<p align="justify" style="line-height:18px;padding:0px 0px 10px 0px;">Requested payments shall be sent approximately fifteen (15) business days after the request is received and shall be paid in Indian Rupees only. If we determine, in our sole discretion, that you have breached this Agreement, we may (without limiting any other rights or remedies available to us) withhold any Affiliate Payments otherwise payable to you under this Agreement. As a condition to Affiliate Payment issued to you, you must provide us will all information reasonably necessary for us to process payments to you in accordance with any and all applicable laws and regulations. This includes, but is not limited to your identification details such as Residence Proof or Passport number or Driving License. Without such information issuance of your Affiliate Payments may be delayed until such information is received.</p>\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>DISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">THIS SITE IS PROVIDED BY Jobstonaukri.COM ON AN "AS IS" AND "AS AVAILABLE" BASIS. Jobstonaukri.COM MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THIS SITE OR THE INFORMATION, CONTENT, MATERIALS, OR PRODUCTS INCLUDED ON THIS SITE. YOU EXPRESSLY AGREE THAT YOUR USE OF THIS SITE IS AT YOUR SOLE RISK.</p>\r\n					\r\n					<p align="justify" style="line-height:18px; padding:0px 0px 10px 0px;">TO THE FULL EXTENT PERMISSIBLE BY APPLICABLE LAW, Jobstonaukri.COM DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Jobstonaukri.COM DOES NOT WARRANT THAT THIS SITE, ITS SERVERS, OR E-MAIL SENT FROM Jobstonaukri.COM ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS. Jobstonaukri.COM WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM THE USE OF THIS SITE, INCLUDING, BUT NOT LIMITED TO DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES.</p>\r\n\r\n					<p align="justify" style="line-height:18px;padding:0px 0px 10px 0px;">As to extraneous contents: Jobstonaukri.com hereby alerts and warns its members of the possibility of unauthorized posting of contents by any person including members and unauthorized users and advises discretion in access since such content, information or representation may not be suitable to you including being offensive. Jobstonaukri.com will not in any way be responsible for such content, information or representations. Jobstonaukri.com is also not responsible for alterations, modifications, deletion, reproduction, sale, transmission or any such misuse of data and content in the public domain by any user.</p>\r\n\r\n\r\n\r\n\r\n\r\n					<p style="padding-top:10px; color:#1CAED4;"><strong>APPLICABLE LAW</strong></p>\r\n					<p align="justify" style="line-height:18px;padding:5px 0px 10px 0px;">The membership is deemed to have been entered into at Chennai, India and the laws of India will govern the membership. Disputes arising out of or in any way affecting the membership including interpretation of any of the terms are to be referred to arbitration under the Arbitration and Conciliation Act 1996 [Indian Act] at Chennai before a sole Arbitrator to be appointed by the CEO of Jobstonaukri.com.</p>\r\n				</div>', 1);
INSERT INTO `pages` (`page_id`, `pageTitle`, `content`, `status`) VALUES
(3, 'Contact Us', '<div class="inner"> \r\n    \r\n    <!-- Content Inner -->\r\n    <div class="content-inner"> \r\n      \r\n      <!-- Content Center -->\r\n      <div class="content-center">\r\n        <div id="map-container">\r\n          <div id="contact-map" class="map box-1" style="position: relative; background-color: rgb(229, 227, 223); overflow: hidden; transform: translateZ(0px);"><div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(http://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 176px; top: -97px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 176px; top: 159px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -80px; top: -97px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: -80px; top: 159px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 432px; top: -97px;"></div><div style="width: 256px; height: 256px; transform: translateZ(0px); position: absolute; left: 432px; top: 159px;"></div></div></div></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 176px; top: -97px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 176px; top: 159px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -80px; top: -97px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: -80px; top: 159px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 432px; top: -97px;"></div><div style="width: 256px; height: 256px; overflow: hidden; transform: translateZ(0px); position: absolute; left: 432px; top: 159px;"></div></div></div></div><div style="position: absolute; z-index: 0; transform: translateZ(0px); left: 0px; top: 0px;"><div style="overflow: hidden; width: 605px; height: 320px;"><img src="http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i76880&amp;2i98401&amp;2e1&amp;3u10&amp;4m2&amp;1u605&amp;2u320&amp;5m5&amp;1e0&amp;5sen-US&amp;6sus&amp;10b1&amp;12b1&amp;token=59109" style="width: 605px; height: 320px;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div aria-hidden="true" style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;"><div style="transform: translateZ(0px); position: absolute; left: -80px; top: -97px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i300!3i384!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=27170" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 176px; top: 159px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i301!3i385!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=111980" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 176px; top: -97px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i301!3i384!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=75959" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 432px; top: 159px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i302!3i385!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=29698" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: 432px; top: -97px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i302!3i384!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=124748" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div style="transform: translateZ(0px); position: absolute; left: -80px; top: 159px; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i10!2i300!3i385!4i256!2m3!1e0!2sm!3i352021049!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=63191" draggable="false" alt="" style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div></div><div class="gm-style-pbc" style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%; transition: 0.3s; -webkit-transition: 0.3s; opacity: 0; display: none;"><p class="gm-style-pbt">Use two fingers to move the map</p></div><div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; height: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 4; width: 100%; transform-origin: 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div><div style="transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a target="_blank" href="https://maps.google.com/maps?ll=40.712784,-74.005941&amp;z=10&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3" title="Click to see this area on Google Maps" style="position: static; overflow: visible; float: none; display: inline;"><div style="width: 66px; height: 26px; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/google4.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></a></div><div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 153px; top: 70px;"><div style="padding: 0px 0px 10px; font-size: 16px;">Map Data</div><div style="font-size: 13px;">Map data ©2016 Google</div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 245px; bottom: 0px; width: 122px;"><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Map Data</a><span style="">Map data ©2016 Google</span></div></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Map data ©2016 Google</div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 95px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a href="https://www.google.com/intl/en-US_US/help/terms_maps.html" target="_blank" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Terms of Use</a></div></div><div style="width: 25px; height: 25px; overflow: hidden; display: none; margin: 10px 14px; position: absolute; top: 0px; right: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/sv5.png" draggable="false" class="gm-fullscreen-control" style="position: absolute; left: -52px; top: -86px; width: 164px; height: 112px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><a target="_new" title="Report errors in the road map or imagery to Google" href="https://www.google.com/maps/@40.7127837,-74.0059413,10z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Report a map error</a></div></div><div class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom" draggable="false" controlwidth="28" controlheight="93" style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 107px; right: 28px;"><div class="gmnoprint" controlwidth="28" controlheight="55" style="position: absolute; left: 0px; top: 38px;"><div draggable="false" style="-webkit-user-select: none; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 28px; height: 55px;"><div title="Zoom in" style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;"><div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" draggable="false" style="position: absolute; left: 0px; top: 0px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;"></div></div><div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; background-color: rgb(230, 230, 230); top: 0px;"></div><div title="Zoom out" style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;"><div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png" draggable="false" style="position: absolute; left: 0px; top: -15px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;"></div></div></div></div><div class="gm-svpc" controlwidth="28" controlheight="28" style="background-color: rgb(255, 255, 255); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; width: 28px; height: 28px; cursor: url(http://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; position: absolute; left: 0px; top: 0px;"><div style="position: absolute; left: 1px; top: 1px;"></div><div style="position: absolute; left: 1px; top: 1px;"><div aria-label="Street View Pegman Control" style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" draggable="false" style="position: absolute; left: -147px; top: -26px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div aria-label="Pegman is on top of the Map" style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" draggable="false" style="position: absolute; left: -147px; top: -52px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div aria-label="Street View Pegman Control" style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png" draggable="false" style="position: absolute; left: -147px; top: -78px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div><div class="gmnoprint" controlwidth="28" controlheight="0" style="display: none; position: absolute;"><div title="Rotate map 90 degrees" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; background-color: rgb(255, 255, 255); display: none;"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" draggable="false" style="position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div><div class="gm-tilt" style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);"><img src="http://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png" draggable="false" style="position: absolute; left: -141px; top: -13px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;"></div></div></div><div class="gmnoprint" style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;"><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Show street map" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 21px; font-weight: 500;">Map</div><div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 42px; text-align: left; display: none;"><div draggable="false" title="Show street map with terrain" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Terrain</label></div></div></div><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Show satellite imagery" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-left-width: 0px; min-width: 39px;">Satellite</div><div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 42px; text-align: left; display: none;"><div draggable="false" title="Show imagery with street names" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img src="http://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Labels</label></div></div></div></div><div draggable="false" class="gm-style-cc" style="position: absolute; -webkit-user-select: none; height: 14px; line-height: 14px; right: 166px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;"><span>5 km&nbsp;</span><div style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 43px;"><div style="width: 100%; height: 4px; position: absolute; left: 0px; top: 0px;"></div><div style="width: 4px; height: 8px; left: 0px; top: 0px; background-color: rgb(255, 255, 255);"></div><div style="width: 4px; height: 8px; position: absolute; background-color: rgb(255, 255, 255); left: 0px; bottom: 0px;"></div><div style="position: absolute; background-color: rgb(102, 102, 102); height: 2px; left: 1px; bottom: 1px; right: 1px;"></div><div style="position: absolute; width: 2px; height: 6px; left: 1px; top: 1px; background-color: rgb(102, 102, 102);"></div><div style="width: 2px; height: 6px; position: absolute; background-color: rgb(102, 102, 102); bottom: 1px; right: 1px;"></div></div></div></div></div></div>\r\n        </div>\r\n        <div id="contacts" class="block post-box box-1 contact-address">\r\n          <div class="block-content">\r\n            <div>\r\n              <h3 class="title-3">Headquarters</h3>\r\n              <div class="contact-field"><span class="label">Address:</span><span id="first-address" class="count">A3 Janta TV Tower Kirti Nagar Industrial Area New Delhi </span></div>\r\n              <div class="contact-field"><span class="label">Phone:</span><span class="count">+91 011-48652050</span></div>\r\n              <div class="contact-field"><span class="label">E-mail:</span><span class="count"><a href="mailto:support@jobstonaukri.com">support@jobstonaukri.com</a></span></div>\r\n              \r\n            </div>\r\n           \r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- /Content Center --> \r\n      \r\n      <!-- Content Right -->\r\n      <div class="content-right">\r\n        <div class="block background">\r\n          <h2 class="title-1">Send Us a Message</h2>\r\n          <div class="block-content">\r\n            <form id="contact" action="">\r\n              <p>Let us know if we can help you</p>\r\n              <div id="about">\r\n                <input title="Your Name" type="text" name="name" class="textfield combosexed" placeholder="Name" style="display: none;"><span class="combosex_main textfield combosex_with_append combosex_text"><span class="combosex_input_span"><span class="combosex_ph" style="display: inline;">Name</span><input autocomplete="off" type="text" class="combosex_input combosex_input_1" value=""><a rel="1" class="combosex_append">+</a></span><input type="hidden" class="combosex_def" value=""><input type="hidden" class="combosex_value" value=""><span class="combosex_spinner"></span></span>\r\n                <input title="Your E-Mail" type="text" name="email" class="textfield combosexed" placeholder="E-mail" style="display: none;"><span class="combosex_main textfield combosex_with_append combosex_text"><span class="combosex_input_span"><span class="combosex_ph" style="display: inline;">E-mail</span><input autocomplete="off" type="text" class="combosex_input combosex_input_2" value=""><a rel="2" class="combosex_append">+</a></span><input type="hidden" class="combosex_def" value=""><input type="hidden" class="combosex_value" value=""><span class="combosex_spinner"></span></span>\r\n                <input title="Your WebSite" type="text" name="website" class="textfield combosexed" placeholder="WebSite" style="display: none;"><span class="combosex_main textfield combosex_with_append combosex_text"><span class="combosex_input_span"><span class="combosex_ph" style="display: inline;">WebSite</span><input autocomplete="off" type="text" class="combosex_input combosex_input_3" value=""><a rel="3" class="combosex_append">+</a></span><input type="hidden" class="combosex_def" value=""><input type="hidden" class="combosex_value" value=""><span class="combosex_spinner"></span></span>\r\n              </div>\r\n              <div id="mess">\r\n                <textarea title="Your Message" name="message" cols="30" rows="6" class="textarea" onclick="this.value='''';" onfocus="$(this).addClass(''active'');" onblur="$(this).removeClass(''active'');">How can I help you?</textarea>\r\n              </div>\r\n              <div id="send">\r\n                <button class="btn blue">Send Message</button>\r\n              </div>\r\n            </form>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <!-- /Content Right -->\r\n      \r\n      <div class="clear"></div>\r\n      <!-- Clear Line --> \r\n      \r\n    </div>\r\n    <!-- /Content Inner --> \r\n    \r\n  </div>', 1),
(4, 'About Us', '<div class="row post-box box-1">\r\n				<div style="padding:0px 10px 5px 0px;">\r\n					<h1 style="font-family:verdana; font-size:15px; color:#1CAED4;"><strong>Who we are</strong></h1>\r\n				</div>\r\n				<p style="line-height:18px; padding:10px 20px 15px 0px;" align="justify">Nothing can be more constant than change; hence we do our bit to instigate it. In an ever-changing global market, it is vital to evolve, move ahead and move on. Accordingly as a career and professional networking portal that strategically brings together professionals and inter-dependent professional communities, it is essential that our strategies are not based on assumptions but involves a lot of intuitiveness, comprehension and insight. Especially since we are dealing with people and their aspirations for a better life and a better future, be it as an individual jobseeker or a large conglomerate that envisions exponential expansions. And as jobstonaukri.com that is fundamentally focused on connecting people and opportunities in the best possible way in the best possible way; we don''t just care about your pursuit but ensure that we do something to bring it to fruition.</p>				\r\n			\r\n				<div style="padding:0px 10px 5px 0px;">\r\n					<h1 style="font-family:verdana; font-size:15px; color:#1CAED4;"><strong>How we do what we do</strong></h1>\r\n				</div>\r\n				<p style="padding-top:10px; color:#E09A22;"><strong>Experience. Information. Panache. Teamwork</strong></p> \r\n				<p style="line-height:18px; padding:10px 20px 5px 0px;" align="justify">Creating outstanding results is not rocket science nor does it involve years of grueling skull drudgery. All it needs is a group of talented, freethinking individuals and a motivating, challenging ambiance.</p>\r\n				<p style="line-height:16px; padding:5px 20px 5px 0px;" align="justify">At Jobstonaukri we believe that if something is worth doing, then it''s worth doing it well; without over-complicating or over-intellectualizing the work process. We just put together big ideas with a user-centric perspective and get the job done right every time.</p>\r\n				<p style="line-height:16px; padding:5px 20px 5px 0px;" align="justify">But how we get ourselves to do this is what tells us apart from the rest of the pack.</p>\r\n\r\n</div>\r\n			', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(80) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `amount` int(10) DEFAULT NULL,
  `package` varchar(50) NOT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `orderId` varchar(30) NOT NULL,
  `capture` tinyint(1) NOT NULL DEFAULT '0',
  `asm` int(11) NOT NULL,
  `tlName` varchar(30) NOT NULL,
  `agentName` varchar(30) NOT NULL,
  `response` varchar(300) NOT NULL,
  `responseText` text NOT NULL,
  `paytmAmount` float NOT NULL,
  `txnId` varchar(21) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `name`, `email`, `mobile`, `amount`, `package`, `gateway`, `status`, `orderId`, `capture`, `asm`, `tlName`, `agentName`, `response`, `responseText`, `paytmAmount`, `txnId`, `dateAdded`) VALUES
(1, 'naveen kumar', 'naveen.nimbal@gmail.com', '9990919500', NULL, 'j2n', 'paytm', 0, 'J2N58454aacbc071', 0, 0, 'tlName', 'agent', '', '', 0, '', '2016-12-05 11:08:29'),
(2, 'naveen kumar', 'navads2@gmail.com', '9990919500', 999, 'j2n', 'paytm', 2, 'J2N58463414370bc', 0, 0, 'tlName', 'agent', '', '', 0, '', '2016-12-06 06:34:41'),
(3, 'naveen kumar', 'naveen@gmail.com', '9990919500', 1, 'j2n', 'paytm', 1, 'J2N58474b4d1afe9', 0, 0, 'tlName', 'agent', 'Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us', '{"RESPCODE":"14113","RESPMSG":"Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us","STATUS":"TXN_FAILURE","MID":"FOXIES52706480784220","TXNAMOUNT":"1.00","ORDERID":"J2N58474b4d1afe9","TXNID":"6361041152","CHECKSUMHASH":"f1PDCBEgpDCphaL15CuqacUFyJWLsUgU7nI9EO+dViaIaLYYR6ETDI3LAZaPdmVk3\\/DTv3dZ7djc1MnZpdUcCHCorDqsnqw9mGttcLT90dY="}', 2000, '1212312123123', '2017-01-15 22:15:19'),
(4, 'naveen kumar', 'naveen@gmail.com', '9990919500', 1, 'j2n', 'paytm', 1, 'J2N58', 1, 0, 'naveen', 'agent', 'Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us', '{"RESPCODE":"14113","RESPMSG":"Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us","STATUS":"TXN_FAILURE","MID":"FOXIES52706480784220","TXNAMOUNT":"1.00","ORDERID":"J2N5847ede879d89","TXNID":"6364967652","CHECKSUMHASH":"sZVgdzYzzgeUijeok3cj+UwJKnhOyd4nxFey1iKAvKJ76e7WVCmvYo4pxhVNJNYWeLnwTiODMuXWiqggP8FvSxuF\\/2BFEpBxYIvd9tosW8A="}', 1, '6364967652', '2017-01-15 22:11:51'),
(5, 'naveen kumar', 'naveen.nimbal@gmail.com', '9990919500', 999, 'j2n', 'paytm', 1, 'J2N5877466533ab3', 0, 0, 'tlName', 'agent', '', '', 0, '', '2017-01-15 22:15:26'),
(6, 'naveen kumar', 'naveen.nimbal@gmail.com', '9990919500', 999, 'j2n', 'paytm', 2, 'J2N-09022017-5', 0, 0, 'tlName', 'agent', 'Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us', '{"RESPCODE":"14113","RESPMSG":"Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us","STATUS":"TXN_FAILURE","MID":"FOXIES52706480784220","TXNAMOUNT":"999.00","ORDERID":"J2N-09022017-5","TXNID":"6722150265","CHECKSUMHASH":"OXZyr4vr44\\/tRONikf3d3tvr7p+HjQ4Ljt9NkB2l0begEGOWH3IA4eHi0r5nBavHbJid68xGaxuymMbBYr9afOLTig2dNvpzYV5mtqq4gu4="}', 999, '6722150265', '2017-02-09 08:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

CREATE TABLE `payment_master` (
  `Pay_Id` bigint(4) NOT NULL,
  `UserId` varchar(50) NOT NULL DEFAULT '',
  `OrderId` varchar(30) NOT NULL DEFAULT '',
  `City_OrderId` varchar(20) NOT NULL DEFAULT '',
  `PaymentMode` char(2) NOT NULL DEFAULT '',
  `Payment_Source` char(2) NOT NULL DEFAULT '',
  `ResumePath` text NOT NULL,
  `File_Server_Name` varchar(22) NOT NULL DEFAULT '',
  `CvName` varchar(100) NOT NULL DEFAULT '',
  `Type` char(1) NOT NULL DEFAULT '',
  `PaymentDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BillingName` varchar(100) NOT NULL DEFAULT '',
  `BillingEmail` varchar(50) NOT NULL DEFAULT '',
  `BillingAddress` text NOT NULL,
  `BillingCity` varchar(100) NOT NULL DEFAULT '',
  `BillingCountry` varchar(100) NOT NULL DEFAULT '',
  `BillingPhone` varchar(50) NOT NULL DEFAULT '',
  `BillingMobile` varchar(50) NOT NULL DEFAULT '',
  `Payment_Status` char(1) NOT NULL DEFAULT '',
  `Status_Desc` text NOT NULL,
  `ApprovedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Service_Status` char(2) NOT NULL DEFAULT '',
  `KioskId` varchar(100) NOT NULL DEFAULT '',
  `BranchId` varchar(100) NOT NULL DEFAULT '',
  `ReferredBy` varchar(100) NOT NULL DEFAULT '',
  `RAssess_Date` date NOT NULL DEFAULT '0000-00-00',
  `RAssess_Time` varchar(10) NOT NULL DEFAULT '',
  `RAssess_Yr_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `RAssess_Mth_Of_Exp` int(6) NOT NULL DEFAULT '0',
  `PaymentFlag` int(1) NOT NULL DEFAULT '0',
  `IPAddress` varchar(30) NOT NULL DEFAULT '',
  `MaxMind` int(3) NOT NULL DEFAULT '0',
  `PaymentCountry` char(2) NOT NULL DEFAULT '',
  `Member_Status` tinyint(1) NOT NULL DEFAULT '1',
  `is_special_product` char(1) NOT NULL DEFAULT 'N',
  `is_easycart_product` char(1) NOT NULL DEFAULT 'N',
  `RAssess_Status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=41223 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resume_cart`
--

CREATE TABLE `resume_cart` (
  `cartId` int(11) NOT NULL,
  `orderId` varchar(20) NOT NULL,
  `userId` varchar(40) DEFAULT '0',
  `serviceId` int(11) DEFAULT NULL,
  `serviceOptionId` int(11) DEFAULT NULL,
  `response` varchar(250) NOT NULL,
  `responseText` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume_cart`
--

INSERT INTO `resume_cart` (`cartId`, `orderId`, `userId`, `serviceId`, `serviceOptionId`, `response`, `responseText`, `status`, `dateAdded`) VALUES
(79, 'J2N5840c7ebebc61', 'nav280720_2', 5, 11, 'Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us', '{"RESPCODE":"14113","RESPMSG":"Looks like you cancelled the payment. You can try again now by adding money in your wallet or choose another payment method. If you faced any issues in completing the payment, please contact us","STATUS":"TXN_FAILURE","MID":', 2, '2016-11-29 10:06:20'),
(94, '', 'nav280720_2', 4, 10, '', '', 0, '2016-12-03 12:23:07'),
(95, '', 'nav280720_2', 4, 8, '', '', 0, '2016-12-03 12:25:08'),
(96, '', 'nav280720_2', 5, 13, '', '', 0, '2016-12-03 12:25:12'),
(97, '', 'nav280720_2', 7, 16, '', '', 0, '2016-12-03 12:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceId` int(11) NOT NULL,
  `serviceTitle` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `price` int(11) DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceId`, `serviceTitle`, `content`, `price`, `status`, `dateAdded`) VALUES
(1, 'Job Search Assistant', '				<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">Job Search Assistant where we go extra mile for candidates) service works as your personal Relationship Manager providing <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Tailored value addition at every step of your job seeking - right from Job Search, profile optimization to company research. <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Job Search Management is equipped to efficiently manage your job hunt so that you reach your career goals effortlessly.<br><br>\r\n\r\n            <strong>Our team of experienced professionals who come from HR/ Recruitment background works as your Relationship Manager.</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">The Relationship Manager working with you who will have interactions with you in span of 6 months to start your job search.</li>\r\n            <li style="list-style:disc;">The Relationship Manager search for the relevant and matching job vacancies using your profile details, preferences and on the basis of market availability.</li>\r\n            <li style="list-style:disc;">The Relationship Manager will submit applications on your behalf, once you approve the job which has been searched by him/her and your  Relationship Manager will also  provides the Company Profile details to you  on the basis of availability</li>\r\n        </ul><br><br>\r\n        Personal Relationship Manager will get in touch with you within 48 to 72 Business working hours of Order Activation. Relationship <br><br>\r\n        Manager will take your profile information and job preferences details in order to initiate your Job Search Assistant Services.\r\n\r\n\r\n\r\n        <br><br>\r\n        <strong>Service charges: - Rs 11000/- INR </strong><br><br>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>', 0, 1, '2016-06-11 06:01:13'),
(2, 'Profile Highlighter', '<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n       \r\n        <strong>Get Enhanced visibility for your profile among recruiters on <a href="#">Jobstonaukri.com</a></strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	"> Get more visibility in a recruiter search and stand a better chance of catching their attention amongst millions of candidate profiles on <a href="#">Jobstonaukri.com</a> with this premium service.<br><br>\r\n\r\n            <strong>Benefits</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">Get your profile highlighted amongst the recruiter search results.</li>\r\n            <li style="list-style:disc;">Differentiate your profile from the rest of candidate listings.</li>\r\n        </ul>\r\n        <br><br>\r\n        <strong>Service charges: - Rs 1000/- INR for 1year.</strong><br><br>\r\n        <strong>Service charges: - Rs 1500/- INR for 2year.</strong><br><br>\r\n        <strong>Service charges: - Rs 2000/- INR for 3year.</strong><br><br>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        <center>\r\n            <site bottom_banners="">\r\n            </site></center>\r\n    </div>\r\n\r\n   \r\n    <div class="clearfix"></div>\r\n</div>', 0, 1, '2016-06-12 17:20:06'),
(3, 'Resume Blast', '<div class="row post-box box-1">\r\n    <div class="col-md-8 min-height-400">\r\n        <h3 class="bottom-margin-5">Resume Blast</h3><br>\r\n        <strong>Increase Your Reach amongst Job Consultants in India or Gulf</strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	"> Resume Blast India or Gulf is a resume distribution service that helps you get noticed by job consultants and recruiters, registered on <a href="#">jobstonaukri.com</a>. Your Resume gets published across the India + Gulf. <br><br>\r\n\r\n            <strong>Key Features</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">In <strong>Resume Blast</strong> your profile and Resume will be <strong>email to relevant top consultants.</strong> Once the consultant''s requirements are found relevant to your profile, your resume is emailed to these consultants within Three Business of service activation. This relevance is the based on your Functional Area, Location, and Work experience that you specify at the time of placing your order.</li>\r\n        </ul>\r\n        <br><br>\r\n        <strong>Service charges: - For India: - 1900/-INR   OR   Amount for Gulf: - 1350/- INR   </strong><br><br>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        <center>\r\n            <site bottom_banners="">\r\n            </site></center>\r\n    </div>\r\n\r\n    \r\n</div>', 0, 1, '2016-06-22 02:25:06'),
(4, 'Resume Writing India', '<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n       \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">An experienced professional resume writer will develop your resume that will highlight your achievements, strengths, elaborate work experiences, key responsibilities, loaded with industry keywords and describe your job profile to employers/ recruiters, so that you get maximum responses for your profile.<br><br>\r\n\r\n            The professional resume writer conducts an in-depth analysis of your resume. The writer will contact you to get information on your desired job profile, target area, projects undertaken and achievements. In case you want to provide additional information to us; you can also get in touch with the writer directly or send across a mail to <a href="#">support@jobstonaukri.com</a>\r\n\r\n            <br><br>\r\n            The expert Resume writer develops a revised and professionally formatted resume according to industry standards. The first developed draft of your resume will be sent to you for your approval and feedback. In case you require any further modification, alteration in your first draft you can contact the writer or send mail to <a href="#">support@jobstonaukri.com</a>\r\n\r\n            <br><br>\r\n            Once you approve the developed resume we send you the final resume to your email id.\r\n\r\n            <br><br>\r\n            Your resume writing process starts only after we receive your payment and updated resume. Once the process starts, the time taken for us to send you the first draft is as per the services you have availed. If we receive your approval, we send you the final resume on your email id. In case of changes, the changes will be incorporated and final draft will be sent to you for approval. The changing/ development process of your resumes continues until you get a resume that you are completely satisfied with. The delivery time for various services is as below:\r\n\r\n            <br><br>\r\n        </p><ul style="font-size:15px; line-height:30	px;">\r\n            <li style="list-style:disc;">Express Resume Writing - 48 working hours (1000 /- INR)</li>\r\n            <li style="list-style:disc;">Resume Writing without any express add-on - 5 working days</li>\r\n            <li style="list-style:disc;">Service charges: - as per candidate work experience</li>\r\n        </ul>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        \r\n</div>\r\n</div>\r\n    ', 0, 1, '2016-06-22 02:56:04'),
(5, 'Resume Writing International', '<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n        <h3 class="bottom-margin-5">Resume Writing International</h3><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">An experienced professional resume writer will develop your resume that will highlight your achievements, strengths, elaborate work experiences, key responsibilities, loaded with industry keywords and describe your job profile to employers/ recruiters, so that you get maximum responses for your profile.<br><br>\r\n\r\n            The professional resume writer conducts an in-depth analysis of your resume. The writer will contact you to get information on your desired job profile, target area, projects undertaken and achievements. In case you want to provide additional information to us; you can also get in touch with the writer directly or send across a mail to <a href="#">support@jobstonaukri.com</a>\r\n\r\n            <br><br>\r\n            The expert Resume writer develops a revised and professionally formatted resume according to industry standards. The first developed draft of your resume will be sent to you for your approval and feedback. In case you require any further modification, alteration in your first draft you can contact the writer or send mail to <a href="#">support@jobstonaukri.com</a>\r\n\r\n            <br><br>\r\n            Once you approve the developed resume we send you the final resume to your email id.\r\n\r\n            <br><br>\r\n            Your resume writing process starts only after we receive your payment and updated resume. Once the process starts, the time taken for us to send you the first draft is as per the services you have availed. If we receive your approval, we send you the final resume on your email id. In case of changes, the changes will be incorporated and final draft will be sent to you for approval. The changing/ development process of your resumes continues until you get a resume that you are completely satisfied with. The delivery time for various services is as below:\r\n\r\n            <br><br>\r\n        </p><ul style="font-size:15px; line-height:30	px;">\r\n            <li style="list-style:disc;">Express Resume Writing - 48 working hours (1000 /- INR)</li>\r\n            <li style="list-style:disc;">Resume Writing without any express add-on - 5 working days</li>\r\n            <li style="list-style:disc;">Service charges: - as pr candidate work experience</li>\r\n        </ul>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n     \r\n    </div>\r\n    </div>\r\n', 0, 1, '2016-06-22 03:04:22'),
(6, 'Social Profile Writing', '<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n        <h3 class="bottom-margin-5">Social Profile Writing </h3><br>\r\n        <strong>Get a strong professional identity - Online</strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">Social Profiler Writing is a personalized social profile writing that gets you noticed by the people who matter and help you take the next step in your career. A professionally created Social Profile allows you to have a professional and polished online presence that serves as a means to share your skills, education and career interests with potential employers.\r\n\r\n\r\n\r\n\r\n            <br><br>\r\n            <strong>Key features</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">Detailed telephonic discussion with experts to understand your profile.</li>\r\n            <li style="list-style:disc;">Make a strong impact with a headline, powerful summary and keyword rich profile.</li>\r\n            <li style="list-style:disc;">Showcase your vision, core values and aspirations.</li>\r\n            <li style="list-style:disc;">Be noticed for relevant career opportunities by top recruiters..</li>\r\n        </ul>\r\n        <br><br>\r\n        <strong>Remember - It is different and at times more important than your Resume.</strong><br><br>\r\n\r\n        While resume gives an overview of your work experience and education, your LinkedIn profiles provides a much better overview of your professional identity - both an employee and as an individual. It also ''talks'' to relevant people (and recruiters) about your vision and career goal. It is therefore a more holistic overview of the ''professional'' you.<br><br>\r\n\r\n        Professional social media websites becoming a major and a critical headhunting ground, it''s important to maintain control of your own identity on the social web. The deeper and more in-depth your presence is on social media websites, the easier it is for the ''right professionals'' to find you.\r\n        A strong and accurate social media presence may result in career opportunities coming your way. In a way you are making yourself better visible to companies looking for your kind of profiles to find you, contact you and employ you!<br><br>\r\n\r\n        Social Profiler is a Professional and personalized Social media profile writing service that endeavors to provide you a strong and accurate presence on popular professional Social networking Websites such as LinkedIn.<br><br>\r\n\r\n        Herein we understand your profile, your aspirations and deliver a professional + comprehensive write-up. This is crafted as per your Resume and engaging telephonic discussions conducted by us. Our writers with the right knowledge and know-how of social media and with 10 years of profile writing experience crafts your Social Media Profile\r\n        <br><br>\r\n\r\n        <strong>LinkedIn, Twitter, Facebook, Google+</strong> and are some of the popularly used social networking websites, with <strong>LinkedIn is the largest professional networking website having 187 Million people across the globe including 17+ Million in India. Also more than 2.6 million companies have LinkedIn Company Pages.</strong><br><br>\r\n        <strong>Service charges: - 4700/- INR</strong>\r\n\r\n\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        <center>\r\n            <site bottom_banners="">\r\n            </site></center>\r\n    </div>\r\n\r\n  \r\n</div>', 0, 1, '2016-06-22 03:11:12'),
(7, 'Visual Resume', '<div class="row post-box box-1">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <strong>Upgrade to Visual Resume to Showcase the Best of You</strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	"> Attract more recruiters with your Resume by improving the way it represents you. Visual Resume Premium will deliver:<br><br>\r\n\r\n            1.	<strong>Visual Resume -</strong> A High Impact Resume with relevant images supporting your Resume that enhances the appeal of ‘You’ and help you gain a competitive edge.<br><br>\r\n\r\n            2.	<strong>Visual Resume -</strong> The most sought after Professional Resume designed by our team of Resume Experts preferred by many Recruiters.<br><br>\r\n            <strong>Key Features</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">Showcase your skills and achievements with high impact visuals* supporting text details.</li>\r\n            <li style="list-style:disc;">A Professional Resume as per Indian recruitment standards</li>\r\n            <li style="list-style:disc;">Multiple detailed telephonic consultations with Resume Writer</li>\r\n            <li style="list-style:disc;">First draft in delivered in 10 working days.</li>\r\n            <li style="list-style:disc;">Free Cover Letter to highlight your accomplishments and suit your job search</li>\r\n        </ul>\r\n\r\n        <strong>Visuals may include your professional photo, images of awards, certifications, articles, or papers published.</strong><br><br>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        <center>\r\n            <site bottom_banners="">\r\n            </site></center>\r\n    </div>\r\n\r\n</div>', 0, 1, '2016-06-22 03:15:54'),
(8, 'Visual Resume', '<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <strong>Upgrade to Visual Resume to Showcase the Best of You</strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	"> Attract more recruiters with your Resume by improving the way it represents you. Visual Resume Premium will deliver:<br><br>\r\n\r\n            1.	<strong>Visual Resume -</strong> A High Impact Resume with relevant images supporting your Resume that enhances the appeal of ‘You’ and help you gain a competitive edge.<br><br>\r\n\r\n            2.	<strong>Visual Resume -</strong> The most sought after Professional Resume designed by our team of Resume Experts preferred by many Recruiters.<br><br>\r\n            <strong>Key Features</strong><br>\r\n        </p><ul style="font-size:15px; line-height:30px;">\r\n            <li style="list-style:disc;">Showcase your skills and achievements with high impact visuals* supporting text details.</li>\r\n            <li style="list-style:disc;">A Professional Resume as per Indian recruitment standards</li>\r\n            <li style="list-style:disc;">Multiple detailed telephonic consultations with Resume Writer</li>\r\n            <li style="list-style:disc;">First draft in delivered in 10 working days.</li>\r\n            <li style="list-style:disc;">Free Cover Letter to highlight your accomplishments and suit your job search</li>\r\n        </ul>\r\n\r\n        <strong>Visuals may include your professional photo, images of awards, certifications, articles, or papers published.</strong><br><br>\r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n        <br>\r\n\r\n        <center>\r\n            <site bottom_banners="">\r\n            </site></center>\r\n    </div>\r\n\r\n</div>', 0, 1, '2016-06-22 03:16:21'),
(9, 'Resume Broadcast India', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">In today''s fast paced world being instantly accesible to the recruiters indeed has its advantages.   <br><br>\r\n        \r\n        Since whenever a new vacancy arises recruiters would prefer to search through their own database of qualified jobseekers first before decide to start looking elsewhere \r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Moreover, most often than not, being called for an interview largely depends on being accessible at the right place and time. With thousands of recruiters looking to fill a vacant position everyday, it can sometimes be just a matter of availability that can get you your ideal job. Yet individually circulating your resume amongst all the top recruiters who might be looking for candidates with your core expertise can be next to impossible since it involves too much of manual effort.\r\n <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Designed to effectively meet this exacting need of jobseekers, our Resume Broadcast service strives to furnish you with multiple customizable options wherein you are given ample freedom to choose your elite set of recruiters whom you feel can assist you to land your perfect opportunity. With recruiters spanning diverse industries and locations you can now pick out the ones who match your criteria and be hired in the shortest possible time.<br><br>\r\n\r\n           \r\n\r\n\r\n\r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(10, 'Resume Broadcast Gulf', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">In today''s fast paced world being instantly accesible to the recruiters indeed has its advantages.   <br><br>\r\n        \r\n        Since whenever a new vacancy arises recruiters would prefer to search through their own database of qualified jobseekers first before decide to start looking elsewhere \r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Moreover, most often than not, being called for an interview largely depends on being accessible at the right place and time. With thousands of recruiters looking to fill a vacant position everyday, it can sometimes be just a matter of availability that can get you your ideal job. Yet individually circulating your resume amongst all the top recruiters who might be looking for candidates with your core expertise can be next to impossible since it involves too much of manual effort.\r\n <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Designed to effectively meet this exacting need of jobseekers, our Resume Broadcast service strives to furnish you with multiple customizable options wherein you are given ample freedom to choose your elite set of recruiters whom you feel can assist you to land your perfect opportunity. With recruiters spanning diverse industries and locations you can now pick out the ones who match your criteria and be hired in the shortest possible time.<br><br>\r\n\r\n           \r\n\r\n\r\n\r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(11, 'Resume Broadcast Combo', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">In today''s fast paced world being instantly accesible to the recruiters indeed has its advantages.   <br><br>\r\n        \r\n        Since whenever a new vacancy arises recruiters would prefer to search through their own database of qualified jobseekers first before decide to start looking elsewhere \r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Moreover, most often than not, being called for an interview largely depends on being accessible at the right place and time. With thousands of recruiters looking to fill a vacant position everyday, it can sometimes be just a matter of availability that can get you your ideal job. Yet individually circulating your resume amongst all the top recruiters who might be looking for candidates with your core expertise can be next to impossible since it involves too much of manual effort.\r\n <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Designed to effectively meet this exacting need of jobseekers, our Resume Broadcast service strives to furnish you with multiple customizable options wherein you are given ample freedom to choose your elite set of recruiters whom you feel can assist you to land your perfect opportunity. With recruiters spanning diverse industries and locations you can now pick out the ones who match your criteria and be hired in the shortest possible time.<br><br>\r\n\r\n           \r\n\r\n\r\n\r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(12, 'Gold Platinum Plan', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">To be called for an interview it is the first important to be instantly viable in a large database of equally qualified jobseekers and drawing attention to your resume  depends not only expertise and experience  but also on being clearly noticeable   <br><br>\r\n        \r\n        Moreover, most often than not, being called for an interview largely depends on being accessible at the right place and time. With thousands of recruiters looking to fill a vacant position everyday, it can sometimes be just a matter of availability that can get you your ideal job.<br><br>\r\nWe have the assistance for you in which the resume counsellor enhance your profile and the job search advisor provide you the greater visibilty and support. Our team will support you to get the relevant jobs according to your qualification as well as your work experience .\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        We have the assistance for you in which the Job Search Advisor provide you the greater visibility and\r\n\r\nsupport. Our team will support you to get the relevant job References according to your qualification as well\r\n\r\nas your work experience.<br><br>\r\n        \r\n        <ol>\r\n        <li> <strong> Gold Plan (Valid from 2 months)</strong></li>\r\n        \r\n        <li> 1.) The Relationship Manager search for the relevant and matching job vacancies using your profile details.</li>\r\n        <li> 2.) Our Team will share the complete job description as well as Recruiter Contact with you through Email Id.<br> <br></li>\r\n        \r\n        \r\n        <li> <strong>Platinum Plan (Valid for 4 months)</strong> </li>\r\n\r\n		<li>1.) The Relationship Manager search for the relevant and matching job vacancies using your profile details.</li>\r\n		<li>2.) Our Team will share the complete job description as well as Recruiter Contact with you through Email Id.</li>\r\n		<li>3.) You need to apply all the References.</li>\r\n\r\n        \r\n        </ol>\r\n        \r\n        <br><br>\r\n\r\n        </p><p style="text-align:justify; font-size:15px; line-height:25px;	">Designed to effectively meet this exacting need of jobseekers, our Resume Broadcast service strives to furnish you with multiple customizable options wherein you are given ample freedom to choose your elite set of recruiters whom you feel can assist you to land your perfect opportunity. With recruiters spanning diverse industries and locations you can now pick out the ones who match your criteria and be hired in the shortest possible time.<br><br>\r\n\r\n           \r\n\r\n\r\n\r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(13, 'Live Interview Preparation ', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">Most of the people get nervous with the very thought of an interview. \r\n        You might be having much better things to express, but you might be lacking the skills on how to present it in an impressive way.\r\n         Learn the tips and tricks regarding how to dress, how to prepare your documents, the way you carry your body and how to move around during an interview.\r\n\r\n        </p>\r\n         <p style="text-align:justify; font-size:15px; line-height:25px;	"> \r\n         For many organizations, certain people and communication skills are more important than expertise in the product or industry. The latter can often be taught, but the patience and empathy required to effectively help customers is much, much harder to learn on the job.\r\n\r\n         \r\n         </p>\r\n\r\n         <p style="text-align:justify; font-size:15px; line-height:25px;	"> \r\n\r\nBefore you go to your job interview, it''s a good idea to have a few practice runs so you don''t freeze like a rabbit in the headlights.\r\n\r\nYou could ask your friends to take you through a few questions, or you could take part in our Virtual Job Interview which will let you know whether your answers are on the right track.\r\n\r\nThe through of not getting past this stage weighs heavily on many candidates minds with the main reasons for apprehension being:\r\n\r\n         \r\n         </p>\r\n        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        \r\n        \r\n         <p style="text-align:justify; font-size:15px; line-height:25px;	"> \r\n        <ol>\r\n         \r\n        <li> 1) Not knowing what questions are likely to be asked of them. <br></li>\r\n        <li>  2) The dread of being interrogated by strangers who also happen to be professionals in their field.<br></li>\r\n              <li>     3) The uncertainty of how to answer and reply to tough questioning.<br></li>\r\n             <li>    4)	The fear of doing or saying something wrong.<br></li>\r\n\r\n               </ol>  \r\n         </p>\r\n        \r\n\r\n\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n\r\nBenefits of Live Interview Preparation\r\n\r\n\r\n\r\n\r\n</p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        \r\n        <ol>\r\n        	\r\n        	\r\n        <li> 1.)Interactive 1 hour session with an expert.  <br></li>\r\n		\r\n		<li> 2.) Clear all your doubts and queries with the help of experts. <br></li>\r\n\r\n               <li> 3.)  Help reduce stress and anxiety <br></li>\r\n\r\n               <li> 4.) Help boost your confidence.<br></li>\r\n                   <li> 5.) Preparing for behavioral based interview questions. <br></li>\r\n                  <li> 6.)  Familiarizing with the situation <br></li>\r\n\r\n\r\n        </ol>\r\n        \r\n        <br><br>\r\n\r\n        </p>\r\n       \r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(14, 'Online Domain', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n    <strong> Get Your Own Domain  </strong>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">A domain on the Internet is a unique opportunity to be visibly present online. \r\n        Your own domain gives you maximum exposure on the Internet, freedom to design your own website and flexibility when using personal email addresses\r\n        </p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        \r\n        <ol>\r\n        	\r\n        	\r\n        	\r\n        	 <li>	Be visible online through a strong online presence <br> <br></li>\r\n			 <li>	Claim your online identity <br> <br></li>\r\n			 <li>  Gives a more professional image.<br> <br></li>\r\n			 <li>  You can keep the name for years to come.<br> <br></li>\r\n             <li> Easier to get your site registered with search engines.<br> <br></li>\r\n             <li> Better position in some search engine listings.<br> <br></li>\r\n 			<li>	Simplicity &#45; your email address would become yourname.in.<br> <br></li>\r\n             <li> Truly promote yourself  don''t spend time advertising word press!<br> <br></li>\r\n           <li> Portability &#45; if you decide to move domain host, you don''t lose your domain name<br> <br></li>\r\n        <li> Easier to remember &#45; people know your name, and so they''ll know where to look for your website<br> <br></li>\r\n\r\n        \r\n\r\n\r\n        </ol>\r\n        \r\n        <br><br>\r\n\r\n        </p>\r\n       \r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(15, 'Education Verification', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n    <strong>Verification and Validation &#45; Education</strong>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        Considering the importance of your crucial time and money, Jobstonaukri also offers verification services through certified agencies which not only make your resume stand apart from unverified ,fake and fraudulent resumes but also spare you and your organization the effort in getting it verified themselves. This also elevates your chances of securing a great job where you can grow and gain experience.\r\n        <br><br>\r\n        \r\n        </p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        \r\n        <ol>\r\n        	\r\n        	\r\n        	\r\n        	 <li> The commonly followed method of this verification is, just a physical inspection of the certificates. Manipulating certificates is not a big deal in the current age of technology making such method fraught with risky.<br> <br></li>\r\n        	 \r\n        	  <li>	1) Verifying over courier/post, phone, and email or via any electronic means is virtually impossible except for a handful of universities.<br> <br></li>\r\n\r\n<li> 2) Education verification provides you an edge on variety of things <br><br></li>\r\n\r\n<li> 3) Your highest education will be verified <br></li>\r\n\r\n        \r\n\r\n\r\n        </ol>\r\n        \r\n        <br><br>\r\n\r\n        </p>\r\n       \r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(16, 'Employment Verification', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n    <strong>Verification and Validation &#45; Employment</strong>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        Candidates falsify dates of employment for hiding periods of unemployment, by extending the period of employment with a specific employer. Sometimes this is done to cover up periods of imprisonment.\r\n\r\nWith verification of your employment credentials, ruminate using this service. We have expert team and professionals who check and verify all the credentials, certificates and other documents regarding your previous experience and the companies you worked previous and your last designation.\r\n\r\n\r\n\r\n\r\n        <br><br>\r\n        \r\n        </p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        <ul>\r\n<li>The position, salaries, and responsibilities are exaggerated.</li>\r\n\r\n<li>The reasons for quitting are manipulated.</li>\r\n\r\n<li>The experience stated may turn out to be fictitious.</li>\r\n<li>Recruiters trust will be built on your professional achievements. </li>\r\n<li>Enhance your chances of getting more interview calls. </li>\r\n\r\n</ul>\r\n        \r\n       \r\n        \r\n        <br><br>\r\n\r\n        <strong>Benefits of Employment verification</strong><br><br>\r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        <ul>\r\n\r\n       <li> Employment verification in India is important to validate if a candidate has been working for the tenure, role and salary indicated on the resume. The process involves contacting Human Resources / Payroll department in previous employers to accurately determine the candidates work history.<br><br></li>\r\n\r\n<li>\r\nThe Work Number for Everyone provides all information included on Employment Verification plus pay rate and total income for the current and past two years. Income is broken down by base pay, overtime, commission, bonuses, and other income. <br><br></li>\r\n\r\n</ul>\r\n\r\n        </p>\r\n       \r\n        <br><br><br><br>\r\n<br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(17, 'Combo Verification', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n    <strong>Verification and Validation &#45; Employment</strong>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\nProfile verification Service, you can get your profile''s credentials like academic & employment verified by the company, and wins recruiters'' trust to get more interview calls. As per company need, Management verify Education for verifying your highest education, Employment verification for verifying current, previous or both employments.        \r\nThe ideal blend of key career-critical services the Executive Pack is perfect for anyone who expects to be completely prepared to accept when the right opportunity comes by.\r\n\r\n        <br><br>\r\n        \r\n        </p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        \r\n        <ol>\r\n        	\r\n        	\r\n        	\r\n        	 <li> 1) With verification of your employment credentials, ruminate using this service.<br> <br></li>\r\n<li> 2) We have expert team for verifiers and professionals who check and verify all the credentials, certificates and other documents regarding your previous experience and the companies you worked previousand your last designation. <br> <br></li>\r\n\r\n\r\n        	 <li> 2) All education verification to verify your document, you may have an edge on definite things, From lower to higher studies, every educational qualification of you will be verified. <br><br></li>\r\n\r\n\r\n<li> 3) Once verification is completed successfully, you will get an authentication certificate which states that all your certificates and documents are complete verified. With our service, you have to chance to get these benefits <br><br></li>\r\n        	 \r\n\r\n <li> 4) Verifying over courier/post, phone, and email or via any electronic means is virtually impossible except for a handful of universities.<br> <br></li>\r\n\r\n        \r\n\r\n\r\n        </ol>\r\n        \r\n        <br><br>\r\n\r\n        </p>\r\n       \r\n        <br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23'),
(18, 'Employment Verification', '<div class="row post-box box-1">\r\n<div class="row">\r\n    <div class="col-md-12 min-height-400">\r\n    <strong>Verification and Validation &#45; Employment</strong>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        \r\n        Candidates falsify dates of employment for hiding periods of unemployment, by extending the period of employment with a specific employer. Sometimes this is done to cover up periods of imprisonment.\r\n\r\n        <br><br>\r\n        \r\n        </p>\r\n        \r\n        <p style="text-align:justify; font-size:15px; line-height:25px;	">\r\n        <ul>\r\n<li>The position, salaries, and responsibilities are exaggerated.</li>\r\n\r\n<li>The reasons for quitting are manipulated.</li>\r\n\r\n<li>The experience stated may turn out to be fictitious.</li>\r\n\r\n</ul>\r\n        \r\n       \r\n        \r\n        <br><br>\r\n\r\n        <strong>Importance</strong><br><br>\r\n\r\n        Employment verification in India is important to validate if a candidate has been working for the tenure, role and salary indicated on the resume. The process involves contacting Human Resources / Payroll department in previous employers to accurately determine the candidates work history.\r\n\r\n\r\n        </p>\r\n       \r\n        <br><br><br><br>\r\n<br><br>\r\n        \r\n        <p></p>\r\n\r\n        <div class="clearfix"></div>\r\n            </div>\r\n</div>\r\n</div>', 2699, 1, '2016-10-05 18:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `service_options`
--

CREATE TABLE `service_options` (
  `serviceOptionId` int(11) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `optionTitle` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `additional` tinyint(4) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_options`
--

INSERT INTO `service_options` (`serviceOptionId`, `serviceId`, `optionTitle`, `price`, `additional`, `status`, `dateAdded`) VALUES
(1, 0, '', 9000, 0, 1, '2016-06-11 06:01:55'),
(2, 2, '1 Year', 1000, 0, 1, '2016-06-12 17:21:26'),
(3, 2, '2 Year', 1500, 0, 1, '2016-06-12 17:21:26'),
(4, 2, '3 Year', 2000, 0, 1, '2016-06-12 17:21:52'),
(5, 0, 'India', 1900, 0, 1, '2016-06-22 02:31:01'),
(6, 0, 'Gulf', 1350, 0, 1, '2016-06-22 02:31:01'),
(7, 4, '0 - 3 Years', 1100, 0, 1, '2016-06-22 02:58:51'),
(8, 4, '3 - 7 Years', 1700, 0, 1, '2016-06-22 02:58:51'),
(9, 4, '7-10 Years', 2500, 0, 1, '2016-06-22 02:59:44'),
(10, 4, '10+ Years', 3350, 0, 1, '2016-06-22 02:59:44'),
(11, 5, '0 - 3 Years', 1450, 0, 1, '2016-06-22 03:07:20'),
(12, 4, '3 - 7 Years', 2250, 0, 1, '2016-06-22 03:07:20'),
(13, 5, '7-10 Years', 3670, 0, 1, '2016-06-22 03:08:15'),
(14, 5, '10+ Years', 4250, 0, 1, '2016-06-22 03:08:15'),
(15, 6, '&nbsp;', 4700, 0, 1, '2016-06-22 03:12:11'),
(16, 7, '0 - 3 Years', 2450, 0, 1, '2016-06-22 03:18:10'),
(17, 7, '3 - 7 Years', 3450, 0, 1, '2016-06-22 03:18:10'),
(18, 7, '7-10 Years', 4450, 0, 1, '2016-06-22 03:18:41'),
(19, 7, '10+ Years', 5450, 0, 1, '2016-06-22 03:18:41'),
(20, 9, 'Resume Broadcast India', 2699, 0, 1, '2016-10-05 18:55:32'),
(21, 10, 'Resume Broadcast Gulf', 3299, 0, 1, '2016-10-05 18:55:32'),
(22, 11, 'Resume Broadcast Combo', 4599, 0, 1, '2016-10-05 18:55:32'),
(23, 12, 'Gold Plan India', 5199, 0, 1, '2016-10-05 18:55:32'),
(24, 12, 'Gold Plan Gulf', 6199, 0, 1, '2016-10-05 18:55:32'),
(25, 12, 'Platinum Plan India', 10999, 0, 1, '2016-10-05 18:55:32'),
(26, 13, 'Live Interview Preparation ', 10999, 0, 1, '2016-10-05 18:55:32'),
(27, 14, 'Online Domain', 8999, 0, 1, '2016-10-05 18:55:32'),
(28, 12, 'Platinum Plan Gulf', 12999, 0, 1, '2016-10-05 18:55:32'),
(29, 15, 'Verification and Validation &#45;Education', 5199, 0, 1, '2016-10-05 18:55:32'),
(30, 16, 'Verification and Validation &#45;Employment', 5199, 0, 1, '2016-10-05 18:55:32'),
(31, 17, 'Verification and Validation &#45;Combo', 9999, 0, 1, '2016-10-05 18:55:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Userid`);

--
-- Indexes for table `cj_ch_jobprompt`
--
ALTER TABLE `cj_ch_jobprompt`
  ADD PRIMARY KEY (`Jp_Id`),
  ADD KEY `index1` (`UserId`),
  ADD KEY `index2` (`Flag`),
  ADD KEY `index3` (`Status`),
  ADD KEY `index4` (`Alert_Freq`);

--
-- Indexes for table `cj_ch_jobprompt_duplicate`
--
ALTER TABLE `cj_ch_jobprompt_duplicate`
  ADD PRIMARY KEY (`Jp_Id`),
  ADD KEY `index1` (`UserId`),
  ADD KEY `index2` (`Flag`),
  ADD KEY `index3` (`Status`),
  ADD KEY `index4` (`Alert_Freq`);

--
-- Indexes for table `cj_ch_jobseekers_res_det`
--
ALTER TABLE `cj_ch_jobseekers_res_det`
  ADD PRIMARY KEY (`Res_Id`,`UserId`),
  ADD KEY `res_type` (`Res_Type`),
  ADD KEY `Userind` (`UserId`),
  ADD KEY `docid_db3` (`UserId`,`Res_Id`),
  ADD KEY `js_resstat_idx` (`Res_Stat`);

--
-- Indexes for table `cj_ch_jobseekers_res_det_duplicate`
--
ALTER TABLE `cj_ch_jobseekers_res_det_duplicate`
  ADD PRIMARY KEY (`Res_Id`,`UserId`),
  ADD KEY `res_type` (`Res_Type`),
  ADD KEY `Userind` (`UserId`),
  ADD KEY `docid_db3` (`UserId`,`Res_Id`),
  ADD KEY `js_resstat_idx` (`Res_Stat`);

--
-- Indexes for table `cj_mast_city`
--
ALTER TABLE `cj_mast_city`
  ADD PRIMARY KEY (`City_Code`);

--
-- Indexes for table `cj_mast_companies`
--
ALTER TABLE `cj_mast_companies`
  ADD KEY `company_name` (`company_name`,`company_index`),
  ADD FULLTEXT KEY `company_name_2` (`company_name`,`company_index`);

--
-- Indexes for table `cj_mast_country`
--
ALTER TABLE `cj_mast_country`
  ADD PRIMARY KEY (`Cnt_Code`);

--
-- Indexes for table `cj_mast_currency_type`
--
ALTER TABLE `cj_mast_currency_type`
  ADD PRIMARY KEY (`Currency_Code`);

--
-- Indexes for table `cj_mast_education`
--
ALTER TABLE `cj_mast_education`
  ADD PRIMARY KEY (`Edu_Code`);

--
-- Indexes for table `cj_mast_functional`
--
ALTER TABLE `cj_mast_functional`
  ADD PRIMARY KEY (`Func_Code`);

--
-- Indexes for table `cj_mast_industry`
--
ALTER TABLE `cj_mast_industry`
  ADD PRIMARY KEY (`Ind_Code`);

--
-- Indexes for table `cj_mast_institute`
--
ALTER TABLE `cj_mast_institute`
  ADD PRIMARY KEY (`Instit_Code`);

--
-- Indexes for table `cj_mast_jobrole`
--
ALTER TABLE `cj_mast_jobrole`
  ADD PRIMARY KEY (`Jobr_Code`);

--
-- Indexes for table `cj_mast_pref_loc`
--
ALTER TABLE `cj_mast_pref_loc`
  ADD PRIMARY KEY (`Pref_Loc_Code`);

--
-- Indexes for table `cj_mast_specialization`
--
ALTER TABLE `cj_mast_specialization`
  ADD PRIMARY KEY (`Spec_Code`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jobapplications_duplicate`
--
ALTER TABLE `jobapplications_duplicate`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `index1` (`Job_Id`),
  ADD KEY `index2` (`Jobseeker_Id`),
  ADD KEY `index3` (`Resume_Id`),
  ADD KEY `index4` (`Application_Status`),
  ADD KEY `index5` (`Parent_Folder_Name`),
  ADD KEY `index6` (`Type`),
  ADD KEY `index7` (`Js_Status`),
  ADD KEY `index8` (`Target_Job_Id`),
  ADD KEY `index9` (`Employer_Id`,`Child_Folder_Name`),
  ADD KEY `index10` (`Date_Applied`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`JobPostId`),
  ADD KEY `jobpost_idx1` (`UserId`),
  ADD KEY `jobpost_idx2` (`Type`),
  ADD KEY `jobpost_idx4` (`ValidDays`),
  ADD KEY `jobpost_idx5` (`SubUserId`),
  ADD KEY `jobpost_idx6` (`PlanType`),
  ADD KEY `Views` (`Views`,`AppliedClicks`),
  ADD KEY `ind_dateadd` (`DateAdded`),
  ADD KEY `jp_status_idx` (`Status`),
  ADD KEY `jp_walkinjobs_idx` (`WalkinJobs`),
  ADD KEY `jp_gender_idx` (`Gender`);

--
-- Indexes for table `jobpost_mis`
--
ALTER TABLE `jobpost_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseekers`
--
ALTER TABLE `jobseekers`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `index1` (`Email`),
  ADD UNIQUE KEY `ProfileId` (`ProfileId`),
  ADD KEY `index5` (`ReferredBy`),
  ADD KEY `index6` (`SiteId`),
  ADD KEY `index7` (`DateAdded`),
  ADD KEY `index8` (`DateModified`),
  ADD KEY `index9` (`SmsAlert`),
  ADD KEY `index10` (`Mobile_Auth`),
  ADD KEY `index11` (`Res_P_Status`),
  ADD KEY `index12` (`Res_UP_Status`),
  ADD KEY `res_mod` (`Res_Mod_Status`),
  ADD KEY `res_umod` (`Res_UMod_Status`),
  ADD KEY `res_um` (`Res_UM_Status`),
  ADD KEY `js_validated_idx` (`Validated`),
  ADD KEY `js_active_idx` (`Active`),
  ADD KEY `js_jobprompt_idx` (`JobPrompt`),
  ADD KEY `dob1` (`Dob`),
  ADD KEY `cresume1` (`Current_Resume`);

--
-- Indexes for table `jobseekers_duplicate`
--
ALTER TABLE `jobseekers_duplicate`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `index1` (`Email`),
  ADD UNIQUE KEY `ProfileId` (`ProfileId`),
  ADD KEY `index5` (`ReferredBy`),
  ADD KEY `index6` (`SiteId`),
  ADD KEY `index7` (`DateAdded`),
  ADD KEY `index8` (`DateModified`),
  ADD KEY `index9` (`SmsAlert`),
  ADD KEY `index10` (`Mobile_Auth`),
  ADD KEY `index11` (`Res_P_Status`),
  ADD KEY `index12` (`Res_UP_Status`),
  ADD KEY `res_mod` (`Res_Mod_Status`),
  ADD KEY `res_umod` (`Res_UMod_Status`),
  ADD KEY `res_um` (`Res_UM_Status`),
  ADD KEY `js_validated_idx` (`Validated`),
  ADD KEY `js_active_idx` (`Active`),
  ADD KEY `js_jobprompt_idx` (`JobPrompt`),
  ADD KEY `dob1` (`Dob`),
  ADD KEY `cresume1` (`Current_Resume`);

--
-- Indexes for table `js_contact_info`
--
ALTER TABLE `js_contact_info`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `payment_master`
--
ALTER TABLE `payment_master`
  ADD PRIMARY KEY (`Pay_Id`),
  ADD KEY `KioskID` (`KioskId`),
  ADD KEY `BranchID` (`BranchId`),
  ADD KEY `Referredby` (`ReferredBy`),
  ADD KEY `orderid` (`OrderId`),
  ADD KEY `city_orderid` (`City_OrderId`),
  ADD KEY `ind_payment_uts` (`UserId`,`Type`,`Payment_Status`),
  ADD KEY `index_paystatus` (`Payment_Status`),
  ADD KEY `index_type` (`Type`);

--
-- Indexes for table `resume_cart`
--
ALTER TABLE `resume_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cj_ch_jobprompt`
--
ALTER TABLE `cj_ch_jobprompt`
  MODIFY `Jp_Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4176330;
--
-- AUTO_INCREMENT for table `cj_ch_jobprompt_duplicate`
--
ALTER TABLE `cj_ch_jobprompt_duplicate`
  MODIFY `Jp_Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4166940;
--
-- AUTO_INCREMENT for table `cj_mast_city`
--
ALTER TABLE `cj_mast_city`
  MODIFY `City_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=558;
--
-- AUTO_INCREMENT for table `cj_mast_education`
--
ALTER TABLE `cj_mast_education`
  MODIFY `Edu_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `cj_mast_functional`
--
ALTER TABLE `cj_mast_functional`
  MODIFY `Func_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cj_mast_industry`
--
ALTER TABLE `cj_mast_industry`
  MODIFY `Ind_Code` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Industrty Code, Unique id',AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `cj_mast_institute`
--
ALTER TABLE `cj_mast_institute`
  MODIFY `Instit_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=344;
--
-- AUTO_INCREMENT for table `cj_mast_jobrole`
--
ALTER TABLE `cj_mast_jobrole`
  MODIFY `Jobr_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1354;
--
-- AUTO_INCREMENT for table `cj_mast_pref_loc`
--
ALTER TABLE `cj_mast_pref_loc`
  MODIFY `Pref_Loc_Code` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=520;
--
-- AUTO_INCREMENT for table `cj_mast_specialization`
--
ALTER TABLE `cj_mast_specialization`
  MODIFY `Spec_Code` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `Id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1470;
--
-- AUTO_INCREMENT for table `jobapplications_duplicate`
--
ALTER TABLE `jobapplications_duplicate`
  MODIFY `Id` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=209385681;
--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `JobPostId` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1607779;
--
-- AUTO_INCREMENT for table `jobpost_mis`
--
ALTER TABLE `jobpost_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4327;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payment_master`
--
ALTER TABLE `payment_master`
  MODIFY `Pay_Id` bigint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41223;
--
-- AUTO_INCREMENT for table `resume_cart`
--
ALTER TABLE `resume_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;