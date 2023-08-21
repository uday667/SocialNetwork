-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2017 at 06:36 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agnogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(10) NOT NULL,
  `student_id1` int(10) NOT NULL,
  `student_id2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `student_id1`, `student_id2`) VALUES
(1, 187, 8),
(2, 187, 186);

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(10) NOT NULL,
  `chat_id` int(10) NOT NULL,
  `group_chat_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text NOT NULL,
  `message_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `chat_id`, `group_chat_id`, `student_id`, `date`, `time`, `message`, `message_status`) VALUES
(25, 0, 8, 186, '2017-03-23', '10:49:59', '<img src=smile/smile2.gif style=/max-height:250px;max-width:230px;/ >', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course` varchar(25) NOT NULL,
  `course_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course`, `course_description`, `status`) VALUES
(1, 'B.Tech', 'Bachelor of Technology ', 'Active'),
(2, 'MBA', 'Master of Business Administration', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `discussion_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `discussion_title` varchar(100) NOT NULL,
  `discussion_description` text NOT NULL,
  `date_time` datetime NOT NULL,
  `student_id` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`discussion_id`, `course_id`, `semester`, `subject_id`, `discussion_title`, `discussion_description`, `date_time`, `student_id`, `status`) VALUES
(8, 1, 'First Semester', 3, 'dummy', '<p>dummy dummy</p>', '2017-03-23 09:20:51', 187, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_reply`
--

CREATE TABLE `discussion_reply` (
  `discussion_reply_id` int(10) NOT NULL,
  `discussion_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion_reply`
--

INSERT INTO `discussion_reply` (`discussion_reply_id`, `discussion_id`, `student_id`, `user_id`, `message`, `uploads`, `date_time`) VALUES
(10, 3, 187, 0, 'its pavi', '', '2017-03-23 09:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `group_chat_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`group_chat_id`, `course_id`, `semester`) VALUES
(4, 0, ''),
(5, 4, 'Third Semester'),
(6, 3, 'Third Semester'),
(7, 1, 'First Semester'),
(8, 4, 'Fourth Semester');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(10) NOT NULL,
  `notice_type` varchar(25) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `uploads` text NOT NULL,
  `date_time` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_type`, `user_id`, `title`, `description`, `uploads`, `date_time`, `status`) VALUES
(21, 'Events', 0, 'Library Day', '<p>National Libraries Day&nbsp;is an annual event in the UK dedicated to the celebration of libraries and librarians. The inaugural event was held on 4 February 2012. To celebrate National Libraries Day, events i</p>', '10083library1.jpg', '2017-03-22 10:09:28', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `quiz_question_id` int(10) NOT NULL,
  `quiz_id` int(10) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`quiz_question_id`, `quiz_id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `status`) VALUES
(77, 33, 'The target market for Debit Cards is\r\n', 'All existing account-holders', 'All agriculturists', 'All DSAS', 'All vendors ', 'Option 1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `user_id`, `course_id`, `semester`, `subject_id`, `title`, `description`) VALUES
(19, 1, 5, 'First Semester', 37, 'Random Access Memory', '<h1 style="box-sizing: border-box; margin: 0.2em 0.2em 0.2em 0px; font-size: 36px; font-family: Verdana, Geneva, Tahoma, Arial, Helvetica, sans-serif; font-weight: normal; line-height: 30px; color: #121214; letter-spacing: -1px; text-shadow: #cccccc 2px 2px 3px; text-align: center; padding: 0px;">Random Access Memory</h1>\r\n<div class="topgooglead" style="box-sizing: border-box; text-align: center; color: #313131; font-family: Verdana, Geneva, Tahoma, Arial, Helvetica, sans-serif;">\r\n<div style="box-sizing: border-box; padding-bottom: 5px; padding-left: 10px;"><hr style="box-sizing: content-box; height: 0px; margin: 7px 0px; border-right: 0px; border-bottom: 0px; border-left: 0px; border-image: initial; background-image: none; clear: both; border-top-style: solid !important; border-top-color: #d6d6d6 !important;" /></div>\r\n</div>\r\n<p style="box-sizing: border-box; margin: 0em 0.2em 1em; color: #333333; line-height: 24px; word-wrap: break-word; padding: 0px; text-align: justify; font-family: Verdana, Geneva, Tahoma, Arial, Helvetica, sans-serif; font-size: 15px !important;">RAM(Random Access Memory) is the internal memory of the CPU for storing data, program and program result. It is read/write memory which stores data until the machine is working. As soon as the machine is switched off, data is erased.</p>'),
(23, 5, 2, 'First Semester', 19, ' Council of Ministers - India', '<p><span style="font-family: arial; text-align: justify;">The 16th Lok Sabha of India came into being on 26th May, 2014 with the oath-taking ceremony of the India''s 15th Prime Minister Narendra Modi along with other ministers. Modi combined some departments which work in</span><span style="font-family: arial; text-align: justify;">&nbsp;</span>close tandem by bringing them under one ministry, thus reducing the size of the cabinet considerably</p>\r\n<p><span style="font-family: arial; text-align: justify;"><br /><br /></span></p>'),
(24, 6, 3, 'First Semester', 58, 'Earth Science', '<p><span style="color: #222222; font-family: arial, sans-serif; font-size: small;">The science which deals with the physical structure and substance of the earth, their history, and the processes which act on them.&nbsp;</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">A&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">geologist</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;is a scientist who studies the solid and liquid matter that constitutes the Earth as well as the processes that shape it.&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">Geologists</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;usually study&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">geology</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">, although backgrounds in physics, chemistry, biology, and other sciences are also useful.</span></p>'),
(25, 7, 4, 'First Semester', 75, 'Business management', '<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">Business management</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;is the process of developing the strategies, plans, procedures and policies that guide a&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">business</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;on both a day-to-day and long-term basis. It involves coordinating human, financial and material resources to achieve organizational objectives.</span></p>'),
(28, 3, 1, 'First Semester', 1, 'Banking', '<p><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">Banks act as payment agents by conducting&nbsp;</span><a class="mw-redirect" style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Transactional account" href="https://en.wikipedia.org/wiki/Transactional_account">checking or current accounts</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">&nbsp;for customers, paying&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Cheque" href="https://en.wikipedia.org/wiki/Cheque">cheques</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">&nbsp;drawn by customers on the bank, and collecting cheques deposited to customers current accounts. Banks also enable customer payments via other payment methods such as&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Automated Clearing House" href="https://en.wikipedia.org/wiki/Automated_Clearing_House">Automated Clearing House</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">&nbsp;(ACH),&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Wire transfer" href="https://en.wikipedia.org/wiki/Wire_transfer">Wire transfers</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">&nbsp;or&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Telegraphic transfer" href="https://en.wikipedia.org/wiki/Telegraphic_transfer">telegraphic transfer</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">,&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="EFTPOS" href="https://en.wikipedia.org/wiki/EFTPOS">EFTPOS</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">, and&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0b0080; text-decoration: none; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;" title="Automated teller machine" href="https://en.wikipedia.org/wiki/Automated_teller_machine">automated teller machines</a><span style="box-sizing: border-box; color: #252525; font-family: sans-serif;">&nbsp;(ATMs).</span></p>'),
(29, 1, 5, 'First Semester', 37, 'Operating System', '<p>An operating system is a program that acts as an interface between the software and the computer hardware.It is an integrated set of specialised programs that are used to manage overall resources and operations of the computer.It is specialised software that controls and monitors the execution of all other programs that reside in the computer, including application programs and other system software.</p>\r\n<p>&nbsp;</p>'),
(30, 1, 5, 'First Semester', 49, 'Software engineering ', '<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">Software engineering</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;is a field of&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">engineering</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">, for designing and writing programs for computers or other electronic devices. A&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">software engineer</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">, or programmer, writes&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">software</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;(or changes existing&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">software</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">) and compiles&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">software</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;using methods that make it better quality.</span></p>'),
(31, 3, 1, 'Second Semester', 1, 'Consumer behaviour ', '<p><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">One "official" definition of consumer&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">behavior</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;is "The study of individuals, groups, or organizations and the processes they use to select, secure, use, and dispose of products, services, experiences, or ideas to satisfy needs and the impacts that these processes have on the consumer and society."</span></p>'),
(32, 2, 2, 'First Semester', 19, 'Politics', ''),
(33, 3, 1, 'First Semester', 5, 'Marketing ', '<p><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">Marketing</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;is the study and management of exchange relationships. The American&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">Marketing</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">Association has defined&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">marketing</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;as "the activity, set of institutions, and processes for creating, communicating, delivering, and exchanging offerings that have value for customers, clients, partners, and society at large."</span></p>'),
(34, 1, 1, 'First Semester', 3, 'kkit', '<p>njdhwusi</p>');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `quiz_result_id` int(10) NOT NULL,
  `quiz_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `quiz_question_id` int(10) NOT NULL,
  `selected_option` varchar(10) NOT NULL,
  `correct_ans` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`quiz_result_id`, `quiz_id`, `student_id`, `quiz_question_id`, `selected_option`, `correct_ans`, `date_time`) VALUES
(163, 29, 126, 59, 'Option 1', 'Option 1', '2017-03-08 03:50:47'),
(164, 29, 126, 60, 'Option 2', 'Option 2', '2017-03-08 03:50:50'),
(165, 29, 126, 61, 'Option 1', 'Option 2', '2017-03-08 03:50:54'),
(166, 29, 126, 62, 'Option 3', 'Option 3', '2017-03-08 03:50:59'),
(190, 19, 126, 27, 'Option 3', 'Option 3', '2017-03-09 09:36:05'),
(191, 19, 126, 28, 'Option 3', 'Option 2', '2017-03-09 09:36:09'),
(192, 19, 126, 29, 'Option 1', 'Option 1', '2017-03-09 09:36:11'),
(193, 19, 126, 30, 'Option 3', 'Option 3', '2017-03-09 09:36:16'),
(194, 19, 126, 31, 'Option 2', 'Option 2', '2017-03-09 09:36:24'),
(199, 25, 163, 47, 'Option 1', 'Option 1', '2017-03-16 02:01:37'),
(200, 25, 163, 48, 'Option 3', 'Option 2', '2017-03-16 02:01:41'),
(201, 25, 163, 49, 'Option 2', 'Option 2', '2017-03-16 02:01:48'),
(202, 25, 163, 50, 'Option 3', 'Option 3', '2017-03-16 02:01:57'),
(203, 25, 163, 51, 'Option 2', 'Option 2', '2017-03-16 02:02:02'),
(216, 28, 9, 54, 'Option 3', 'Option 3', '2017-03-22 08:26:42'),
(217, 28, 9, 55, 'Option 4', 'Option 4', '2017-03-22 08:27:08'),
(218, 28, 9, 56, 'Option 4', 'Option 4', '2017-03-22 08:27:10'),
(219, 28, 187, 57, 'Option 4', 'Option 3', '2017-03-23 04:52:02'),
(220, 28, 8, 54, 'Option 2', 'Option 3', '2017-03-22 08:31:15'),
(221, 28, 8, 55, 'Option 3', 'Option 4', '2017-03-22 08:31:17'),
(222, 28, 8, 56, 'Option 4', 'Option 4', '2017-03-22 08:31:19'),
(223, 28, 187, 57, 'Option 4', 'Option 3', '2017-03-23 04:52:02'),
(224, 28, 187, 54, 'Option 2', 'Option 3', '2017-03-23 04:51:54'),
(225, 28, 187, 55, 'Option 3', 'Option 4', '2017-03-23 04:51:56'),
(226, 28, 187, 56, 'Option 4', 'Option 4', '2017-03-23 04:51:58'),
(227, 28, 187, 57, 'Option 4', 'Option 3', '2017-03-23 04:52:02'),
(228, 28, 186, 54, 'Option 3', 'Option 3', '2017-03-23 05:08:05'),
(229, 28, 186, 55, 'Option 4', 'Option 4', '2017-03-23 05:08:08'),
(230, 28, 186, 56, 'Option 1', 'Option 4', '2017-03-23 05:08:14'),
(231, 28, 186, 57, 'Option 3', 'Option 3', '2017-03-23 05:08:22'),
(232, 33, 186, 73, 'Option 3', 'Option 4', '2017-03-23 05:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `student_name` varchar(25) NOT NULL,
  `roll_no` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `student_img` varchar(100) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `about_student` text NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `mob_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `roll_no`, `password`, `student_img`, `course_id`, `semester`, `about_student`, `email_id`, `mob_no`, `status`) VALUES
(186, 'Sneha', '16101', 'b12f91a99a40354f7930d38c445bd423', '26773b.jpg', 1, 'First Semester', 'Abide by all              ', 'andradezeeta@gmail.com', '9902169277', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

CREATE TABLE `study_material` (
  `study_material_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `uploads` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study_material`
--

INSERT INTO `study_material` (`study_material_id`, `course_id`, `semester`, `subject_id`, `title`, `user_id`, `description`, `uploads`, `date_time`) VALUES
(11, 1, 'First Semester', 1, 'Basics of Financial accounting', 3, '<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">Financial accounting</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;is a specialized branch of&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">accounting</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;that keeps track of a company''s&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">financial</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;transactions. Using standardized guidelines, the transactions are recorded, summarized, and presented in a&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">financial</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;report or&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">financial</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">statement such as an income statement or a balance sheet.</span></p>', '22498c11048.pdf', '2017-03-09 11:28:08'),
(12, 1, 'First Semester', 3, 'Organizational behavior', 3, '<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">Organizational behavior</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;(OB) is the study of the way people interact within groups. Normally this study is applied in an attempt to create more efficient business organizations. The central idea of the study of&nbsp;</span><strong style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">organizational behavior</strong><span style="color: #222222; font-family: arial, sans-serif; font-size: 16px;">&nbsp;is that a scientific approach can be applied to the management of workers.</span></p>', '6800msc_organ.pdf', '2017-03-06 09:18:11'),
(13, 1, 'First Semester', 2, ' Market behavior', 3, '<p><span style="font-family: ''Droid Sans'', Arial, sans-serif;">Market behavior is a broad economic term that refers to the behavior of consumers, businesses, or the&nbsp;</span><a style="outline: 0px; margin: 0px; color: #24364f; font-family: ''Droid Sans'', Arial, sans-serif;" href="http://www.wisegeek.com/what-is-the-stock-market.htm">stock market</a><span style="font-family: ''Droid Sans'', Arial, sans-serif;">. It is often analyzed and used to generate various marketing strategies aimed at boosting sales or brand recognition when dealing with businesses and consumers by analyzing their purchasing behavior.&nbsp;</span></p>', '12207market.docx', '2017-03-06 09:26:24'),
(14, 5, 'First Semester', 37, 'Hardware and Software', 3, '', '5135bca OS.rtf', '2017-03-08 08:25:01'),
(15, 5, 'First Semester', 38, 'C Program Compilation', 3, '<p>In this chapter we begin by outlining the basic processes you need to go through in order to compile your C (or C++) programs. We then proceed to formally describe the C compilation model and also how C supports additional libraries.</p>\r\n<p>&nbsp;</p>', '21347bca.rtf', '2017-03-08 08:27:20'),
(16, 5, 'First Semester', 37, 'Computer - Operating System', 6, '<p>An operating system is a program that acts as an interface between the software and the computer hardware.</p>\r\n<p>&nbsp;</p>', '25031bca OS.rtf', '2017-03-08 07:36:31'),
(17, 1, 'Second Semester', 4, 'Market price ', 3, '<p><span lang="EN" style="font-size: 11.0pt; line-height: 115%; font-family: ''Calibri'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-fareast-theme-font: minor-fareast; mso-bidi-font-family: Calibri; mso-ansi-language: EN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA;">A self-constructed asset is one that a business elects to construct under its own management. A common example of a self-constructed asset is when a company chooses to build an entire facility.</span></p>', '2416financial mang.docx', '2017-03-08 08:23:52'),
(18, 1, 'First Semester', 3, 'Management ', 7, '', '7434bcm2.rtf', '2017-03-09 07:36:43'),
(19, 1, 'First Semester', 2, 'Issues of a owner', 2, '<p><span style="color: #333333; font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 13px;">In most cases he or she is the one affected by the issues to be solved or indicates those who would benefit from the solution.&nbsp;</span><span style="color: #777777; font-family: Arial, Verdana, Helvetica, sans-serif; font-size: 16px;">"And for a field that changes as rapidly as information <strong>science and technology</strong>, this resource can be a very nice addition for any academic reference collection. Summing Up: Recommended. Lower-level undergraduates and above."</span></p>', '13598financial mang.docx', '2017-03-16 07:08:05'),
(20, 1, 'First Semester', 1, 'Balance Sheet', 2, '<p><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">Of the four basic financial statements, the&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">balance sheet</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;is the only statement which applies to a single point in time of a business'' calendar year. A standard company&nbsp;</span><span style="font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;">balance sheet</span><span style="color: #545454; font-family: arial, sans-serif; font-size: small;">&nbsp;has two sides: assets, on the left and financing, which itself has two parts, liabilities and ownership equity, on the right. <strong>"A</strong></span><strong>&nbsp;statement of the assets, liabilities, and capital of a business or other organization at a particular point in time, detailing the balance of income and expenditure over the preceding period".</strong></p>\r\n<div class="r-ig_jKtu2ealg" style="color: #222222; font-family: arial, sans-serif; font-size: small;" data-rtid="ig_jKtu2ealg">\r\n<div class="lr_container mod" style="clear: both; padding: 16px; line-height: normal;">\r\n<div class="xpdxpnd _xk vkc_np" style="margin-left: -16px; margin-right: -16px; background-color: #ebebeb; height: 1px; overflow: hidden; transition: max-height 0.3s; max-height: 0px;" data-mh="1px">&nbsp;</div>\r\n<div class="xpdxpnd vkc_np vk_pl _Wi" style="margin-left: -16px; margin-right: -16px; padding-left: 16px; padding-right: 16px; overflow: hidden; transition: max-height 0.3s; max-height: 0px;" data-mh="-1">\r\n<div class="lr_dct_trns vmod" style="padding-top: 10px; padding-bottom: 10px;" data-hveid="27"><strong><span class="lr_dct_trns_h vk_sh vk_gy" style="display: inline-block; color: #878787 !important; font-size: medium !important;"><span class="lr_dct_trns_sel_cnt" style="border-radius: 0px 0px 2px 2px; display: inline-block; overflow: hidden; padding-left: 5px; position: relative; vertical-align: middle;"><select id="tl_select" class="lr_dct_trns_sel lr_dct_trns_sel_browser vk_bk vk_txt" style="font-size: 13px; text-indent: 5px; -webkit-appearance: button; background: url(''//ssl.gstatic.com/ui/v1/disclosure/grey-disclosure-arrow-up-down.png'') 166px 50% no-repeat whitesmoke; border-color: gainsboro; border-radius: 2px; line-height: 20px; outline: none; padding: 5px 0px; overflow: hidden; width: 180px; color: #212121 !important; font-weight: lighter !important;" data-pref-link="/setprefs?sig=0_pI0lHw29r9YwacZry9d7OwSIvuU%3D&amp;prev=https://www.google.co.in/search?q%3Dbalance%2Bsheet%26oq%3Dbalance%2Bsheet%26ie%3DUTF-8%26aqs%3Dchrome..69i57j0l5.6222j0j4%26sourceid%3Dchrome-instant%26ion%3D1%26espv%3D2%26bav%3Don.2%252Cor.%26bvm%3Dbv.149397726%252Cd.c2I%26biw%3D1366%26bih%3D662%26dpr%3D1%26dtrnscllps%3D1%26brd%3D1489629040069000" data-log-string="translations-language-select">\r\n<option value="">Choose language</option>\r\n<option value="af">Afrikaans</option>\r\n<option value="sq">Albanian</option>\r\n<option value="am">Amharic</option>\r\n<option value="ar">Arabic</option>\r\n<option value="hy">Armenian</option>\r\n<option value="az">Azerbaijani</option>\r\n<option value="bn">Bangla</option>\r\n<option value="eu">Basque</option>\r\n<option value="be">Belarusian</option>\r\n<option value="bs">Bosnian</option>\r\n<option value="bg">Bulgarian</option>\r\n<option value="my">Burmese</option>\r\n<option value="ca">Catalan</option>\r\n<option value="ceb">Cebuano</option>\r\n<option value="zh-CN">Chinese (Simplified)</option>\r\n<option value="zh-TW">Chinese (Traditional)</option>\r\n<option value="co">Corsican</option>\r\n<option value="hr">Croatian</option>\r\n<option value="cs">Czech</option>\r\n<option value="da">Danish</option>\r\n<option value="nl">Dutch</option>\r\n<option value="eo">Esperanto</option>\r\n<option value="et">Estonian</option>\r\n<option value="tl">Filipino</option>\r\n<option value="fi">Finnish</option>\r\n<option value="fr">French</option>\r\n<option value="gl">Galician</option>\r\n<option value="ka">Georgian</option>\r\n<option value="de">German</option>\r\n<option value="el">Greek</option>\r\n<option value="gu">Gujarati</option>\r\n<option value="ht">Haitian Creole</option>\r\n<option value="ha">Hausa</option>\r\n<option value="haw">Hawaiian</option>\r\n<option value="iw">Hebrew</option>\r\n<option value="hi">Hindi</option>\r\n<option value="hmn">Hmong</option>\r\n<option value="hu">Hungarian</option>\r\n<option value="is">Icelandic</option>\r\n<option value="ig">Igbo</option>\r\n<option value="id">Indonesian</option>\r\n<option value="ga">Irish</option>\r\n<option value="it">Italian</option>\r\n<option value="ja">Japanese</option>\r\n<option value="jv">Javanese</option>\r\n<option value="kn">Kannada</option>\r\n<option value="kk">Kazakh</option>\r\n<option value="km">Khmer</option>\r\n<option value="ko">Korean</option>\r\n<option value="ku">Kurdish</option>\r\n<option value="ky">Kyrgyz</option>\r\n<option value="lo">Lao</option>\r\n<option value="la">Latin</option>\r\n<option value="lv">Latvian</option>\r\n<option value="lt">Lithuanian</option>\r\n<option value="lb">Luxembourgish</option>\r\n<option value="mk">Macedonian</option>\r\n<option value="mg">Malagasy</option>\r\n<option value="ms">Malay</option>\r\n<option value="ml">Malayalam</option>\r\n<option value="mt">Maltese</option>\r\n<option value="mi">Maori</option>\r\n<option value="mr">Marathi</option>\r\n<option value="mn">Mongolian</option>\r\n<option value="ne">Nepali</option>\r\n<option value="no">Norwegian</option>\r\n<option value="ny">Nyanja</option>\r\n<option value="ps">Pashto</option>\r\n<option value="fa">Persian</option>\r\n<option value="pl">Polish</option>\r\n<option value="pt">Portuguese</option>\r\n<option value="pa">Punjabi</option>\r\n<option value="ro">Romanian</option>\r\n<option value="ru">Russian</option>\r\n<option value="sm">Samoan</option>\r\n<option value="gd">Scottish Gaelic</option>\r\n<option value="sr">Serbian</option>\r\n<option value="sn">Shona</option>\r\n<option value="sd">Sindhi</option>\r\n<option value="si">Sinhala</option>\r\n<option value="sk">Slovak</option>\r\n<option value="sl">Slovenian</option>\r\n<option value="so">Somali</option>\r\n<option value="st">Southern Sotho</option>\r\n<option value="es">Spanish</option>\r\n<option value="su">Sundanese</option>\r\n<option value="sw">Swahili</option>\r\n<option value="sv">Swedish</option>\r\n<option value="tg">Tajik</option>\r\n<option value="ta">Tamil</option>\r\n<option value="te">Telugu</option>\r\n<option value="th">Thai</option>\r\n<option value="tr">Turkish</option>\r\n<option value="uk">Ukrainian</option>\r\n<option value="ur">Urdu</option>\r\n<option value="uz">Uzbek</option>\r\n<option value="vi">Vietnamese</option>\r\n<option value="cy">Welsh</option>\r\n<option value="fy">Western Frisian</option>\r\n<option value="xh">Xhosa</option>\r\n<option value="yi">Yiddish</option>\r\n<option value="yo">Yoruba</option>\r\n<option value="zu">Zulu</option>\r\n</select></span></span></strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="_LJ _qxg xpdarr _WGh vk_arc" style="border-top: 1px solid #ebebeb; cursor: pointer; height: 0px; margin: 0px; overflow: hidden; padding: 20px 0px; text-align: center; position: relative; color: #222222; font-family: arial, sans-serif; font-size: small; clear: both;" tabindex="0" data-fbevent="fastbutton" data-ved="0ahUKEwi4sOvN9NnSAhXFpY8KHcwBCAEQmDMIHDAA">&nbsp;</div>', '22523bcom.docx', '2017-03-16 07:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject`, `course_id`, `semester`, `note`, `status`) VALUES
(1, 'Financial accounting ', 1, 'First Semester', 'Financial accounting \r\n', 'Active'),
(93, 'Mathematics', 3, 'Sixth Semester', 'Mathematics', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE `timeline` (
  `timeline_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `text_message` text NOT NULL,
  `image_path` text NOT NULL,
  `video_path` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`timeline_id`, `student_id`, `post_type`, `text_message`, `image_path`, `video_path`, `date_time`) VALUES
(2, 66, 'Image', 'Life is lived by living to-gather ...', '21151t1.jpg', '', '2017-03-07 08:46:18'),
(3, 179, 'Video', 'Look at this', '', '24992VID-20161010-WA0000.mp4', '2017-03-07 09:30:46'),
(4, 9, 'Image', 'Holiday is going to come soon', '5772student.jpg', '', '2017-03-07 10:45:40'),
(5, 92, 'Text', 'Exited for the summer holidays...', '', '', '2017-03-07 11:07:55'),
(6, 186, 'Text', 'Is it boaring???', '', '', '2017-03-22 07:49:24'),
(7, 187, 'Text', 'Ulalllllaaaaallllaaaa\r\nye hai meri fantasiiiiii', '', '', '2017-03-22 07:53:14'),
(9, 169, 'Text', 'fghfh\r\n', '', '', '2017-03-22 08:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_comments`
--

CREATE TABLE `timeline_comments` (
  `timeline_comment_id` int(10) NOT NULL,
  `comment_type` varchar(15) NOT NULL,
  `student_id` int(10) NOT NULL,
  `timeline_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_comments`
--

INSERT INTO `timeline_comments` (`timeline_comment_id`, `comment_type`, `student_id`, `timeline_id`, `message`, `date_time`) VALUES
(1, 'Comment', 66, 1, 'Hi... Have a good day\n', '2017-03-07 04:22:22'),
(2, 'Likes', 179, 2, '', '2017-03-07 05:05:02'),
(6, 'Likes', 91, 3, '', '2017-03-07 05:45:41'),
(7, 'Likes', 100, 3, '', '2017-03-07 05:50:06'),
(24, 'Comment', 92, 5, 'ssssssssss\n', '2017-03-07 06:38:14'),
(25, 'Comment', 92, 3, 'Its very pretty\n', '2017-03-07 06:38:39'),
(31, 'Likes', 9, 2, '', '2017-03-07 07:46:04'),
(33, 'Likes', 7, 3, '', '2017-03-07 08:20:52'),
(34, 'Likes', 7, 5, '', '2017-03-07 08:20:59'),
(49, 'Likes', 126, 2, '', '2017-03-07 03:54:20'),
(50, 'Likes', 127, 6, '', '2017-03-07 03:54:54'),
(51, 'Likes', 127, 3, '', '2017-03-07 03:55:06'),
(52, 'Likes', 127, 2, '', '2017-03-07 03:55:10'),
(53, 'Likes', 126, 3, '', '2017-03-07 03:55:54'),
(54, 'Likes', 126, 6, '', '2017-03-07 03:56:00'),
(57, 'Likes', 128, 3, '', '2017-03-07 03:56:55'),
(58, 'Likes', 167, 6, '', '2017-03-07 03:57:45'),
(59, 'Likes', 167, 3, '', '2017-03-07 03:57:51'),
(60, 'Likes', 167, 2, '', '2017-03-07 03:57:55'),
(61, 'Likes', 167, 4, '', '2017-03-07 03:58:28'),
(62, 'Likes', 179, 6, '', '2017-03-07 03:58:51'),
(63, 'Likes', 179, 4, '', '2017-03-07 03:58:56'),
(64, 'Likes', 179, 3, '', '2017-03-07 03:59:00'),
(65, 'Likes', 137, 6, '', '2017-03-07 03:59:57'),
(66, 'Likes', 137, 4, '', '2017-03-07 04:00:02'),
(67, 'Likes', 137, 3, '', '2017-03-07 04:00:05'),
(68, 'Likes', 137, 2, '', '2017-03-07 04:00:08'),
(69, 'Likes', 98, 6, '', '2017-03-07 04:00:43'),
(70, 'Likes', 98, 4, '', '2017-03-07 04:00:47'),
(71, 'Likes', 98, 3, '', '2017-03-07 04:00:50'),
(72, 'Likes', 98, 2, '', '2017-03-07 04:00:54'),
(73, 'Comment', 98, 6, 'Nice song\n', '2017-03-07 04:01:09'),
(74, 'Likes', 26, 6, '', '2017-03-07 04:04:20'),
(75, 'Likes', 131, 4, '', '2017-03-08 02:57:55'),
(76, 'Likes', 131, 6, '', '2017-03-08 02:57:58'),
(77, 'Likes', 131, 2, '', '2017-03-08 02:58:10'),
(78, 'Likes', 57, 4, '', '2017-03-08 04:09:05'),
(79, 'Likes', 186, 4, '', '2017-03-22 03:19:31'),
(80, 'Likes', 186, 3, '', '2017-03-22 03:19:34'),
(81, 'Likes', 186, 2, '', '2017-03-22 03:19:38'),
(82, 'Likes', 187, 5, '', '2017-03-22 03:23:24'),
(83, 'Comment', 187, 5, 'ho hoooo\n', '2017-03-22 03:24:14'),
(84, 'Likes', 187, 6, '', '2017-03-22 03:24:20'),
(85, 'Likes', 187, 4, '', '2017-03-22 03:24:29'),
(86, 'Likes', 187, 3, '', '2017-03-22 03:24:36'),
(87, 'Likes', 187, 2, '', '2017-03-22 03:24:39'),
(88, 'Likes', 186, 7, '', '2017-03-22 03:26:04'),
(89, 'Comment', 186, 7, 'so pretty\n', '2017-03-22 03:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `user_img` text NOT NULL,
  `login_id` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_type`, `name`, `user_img`, `login_id`, `password`, `status`) VALUES
(1, 'Staff', 'Krithika', '10380Krithika 20160810_193744.jpg', 'krithika555', 'c9cb091228abdefc48d7cfd5fce06607', 'Active'),
(2, 'Admin', 'Nelson', '28014defaul profile.jpg', 'admin', '1eea36fbd4f4919251e3192dce2da380', 'Active'),
(3, 'Staff', 'Zeeta', '3952016-08-27-13-45-10-993.jpg', 'zeeta111', 'dae274b09769b8b7925217f27993931f', 'Active'),
(5, 'Staff', 'Christitha', '31602Christitha 20160716_184624.jpg', 'christitha222', 'd034096f95cc325d26d49223c78e1929', 'Active'),
(6, 'Staff', 'Asmitha', '30261Ashu 20161231_223436.jpg', 'asmitha333', 'd584db1a793473552341fec07be26b19', 'Active'),
(7, 'Staff', 'Misrina', '208713z.jpg', 'misrina444', '036b760365361dae8fc5500368537104', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`discussion_id`);

--
-- Indexes for table `discussion_reply`
--
ALTER TABLE `discussion_reply`
  ADD PRIMARY KEY (`discussion_reply_id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`group_chat_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`study_material_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`timeline_id`);

--
-- Indexes for table `timeline_comments`
--
ALTER TABLE `timeline_comments`
  ADD PRIMARY KEY (`timeline_comment_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `discussion_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `discussion_reply`
--
ALTER TABLE `discussion_reply`
  MODIFY `discussion_reply_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `group_chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `quiz_question_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `quiz_result_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `study_material_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
  MODIFY `timeline_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `timeline_comments`
--
ALTER TABLE `timeline_comments`
  MODIFY `timeline_comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
