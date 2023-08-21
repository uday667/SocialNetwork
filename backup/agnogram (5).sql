-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 08:03 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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
(30, 218, 219),
(31, 218, 220),
(32, 218, 222),
(33, 218, 221),
(34, 221, 0),
(35, 221, 219),
(36, 221, 223),
(37, 219, 220),
(38, 219, 223),
(39, 219, 229),
(40, 219, 226),
(41, 218, 223),
(42, 224, 220),
(43, 224, 218),
(44, 224, 219),
(45, 224, 0),
(46, 224, 223),
(47, 224, 227);

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
(3016, 0, 7, 218, '2017-03-21', '05:51:43', 'HI', 'Active'),
(3017, 0, 7, 218, '2017-03-21', '05:52:40', 'Hello', 'Active'),
(3018, 0, 6, 218, '2017-03-21', '05:53:20', 'Hello', 'Active'),
(3019, 0, 6, 218, '2017-03-21', '05:53:24', 'Anyone is here', 'Active'),
(3020, 0, 6, 218, '2017-03-21', '05:54:35', 'Hi', 'Active'),
(3021, 0, 6, 218, '2017-03-21', '10:27:03', 'fun at jungle', 'Active'),
(3022, 0, 6, 218, '2017-03-21', '10:27:09', 'Festival', 'Active'),
(3023, 0, 6, 218, '2017-03-21', '10:27:16', 'Johny', 'Active'),
(3024, 0, 6, 218, '2017-03-22', '10:03:56', 'Hi krish', 'Active'),
(3025, 0, 6, 218, '2017-03-22', '10:24:12', 'asdf', 'Active'),
(3026, 0, 6, 218, '2017-03-22', '10:24:30', 'sdf', 'Active'),
(3027, 0, 6, 218, '2017-03-22', '10:25:37', 'test', 'Active'),
(3028, 0, 6, 218, '2017-03-22', '10:27:27', 'smile3.gif', 'Active'),
(3029, 0, 6, 218, '2017-03-22', '10:31:13', '<img src=`smile/smile5.gif` >', 'Active'),
(3030, 0, 6, 218, '2017-03-22', '10:32:16', '<img src=smile/smile2.gif >', 'Active'),
(3031, 0, 6, 218, '2017-03-22', '10:32:19', '<img src=smile/smile2.gif >', 'Active'),
(3032, 0, 6, 218, '2017-03-22', '10:32:21', '<img src=smile/smile2.gif >', 'Active'),
(3033, 0, 6, 218, '2017-03-22', '10:32:22', '<img src=smile/smile2.gif >', 'Active'),
(3034, 0, 6, 218, '2017-03-22', '10:32:24', '<img src=smile/smile2.gif >', 'Active'),
(3035, 0, 6, 218, '2017-03-22', '10:32:26', '<img src=smile/smile2.gif >', 'Active'),
(3036, 0, 6, 218, '2017-03-22', '10:33:51', '<img src=smile/smile2.gif >', 'Active'),
(3037, 0, 6, 218, '2017-03-22', '10:38:00', '<img src=smile/smile2.gif >', 'Active'),
(3038, 0, 6, 218, '2017-03-22', '10:38:01', '<img src=smile/smile2.gif >', 'Active'),
(3039, 0, 6, 218, '2017-03-22', '10:38:02', '<img src=smile/smile2.gif >', 'Active'),
(3040, 0, 6, 218, '2017-03-22', '10:38:03', '<img src=smile/smile2.gif >', 'Active'),
(3041, 0, 6, 218, '2017-03-22', '10:38:04', '<img src=smile/smile2.gif >', 'Active'),
(3042, 0, 6, 218, '2017-03-22', '10:38:08', '<img src=smile/smile2.gif >', 'Active'),
(3043, 0, 6, 218, '2017-03-22', '10:38:35', '<img src=smile/smile1.gif >', 'Active'),
(3044, 0, 6, 218, '2017-03-22', '10:41:57', '<img src=smile/smile1.gif style=/max-height: 50px;max-width: 100%;/ >', 'Active'),
(3045, 0, 6, 218, '2017-03-22', '10:42:41', '<img src=smile/smile5.gif style=/max-height: 50px;max-width: 50px;/ >', 'Active'),
(3046, 0, 6, 218, '2017-03-22', '10:43:34', '<img src=smile/smile1.gif style=/max-height: 50px;max-width: 50px;/ >', 'Active'),
(3047, 0, 6, 218, '2017-03-22', '10:44:11', '<img src=smile/smile2.gif style=/max-height:50px;max-width:50px;/ >', 'Active'),
(3048, 0, 6, 218, '2017-03-22', '10:44:30', '<img src=smile/smile4.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3049, 0, 6, 218, '2017-03-22', '10:44:35', '<img src=smile/smile4.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3050, 0, 6, 218, '2017-03-22', '10:44:42', '<img src=smile/smile4.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3051, 0, 6, 218, '2017-03-22', '10:45:32', '<img src=smile/smile4.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3052, 0, 6, 218, '2017-03-22', '10:46:22', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3053, 0, 6, 218, '2017-03-22', '10:46:23', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3054, 0, 6, 218, '2017-03-22', '10:46:26', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3055, 0, 6, 218, '2017-03-22', '10:53:28', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3056, 0, 6, 218, '2017-03-22', '10:53:55', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3057, 0, 6, 218, '2017-03-22', '10:53:58', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3058, 0, 6, 218, '2017-03-22', '10:53:58', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3059, 0, 6, 218, '2017-03-22', '10:53:59', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3060, 0, 6, 218, '2017-03-22', '10:53:59', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3061, 0, 6, 218, '2017-03-22', '10:53:59', '<img src=smile/smile3.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3062, 30, 0, 218, '2017-03-22', '06:29:25', 'hi', 'Active'),
(3063, 30, 0, 218, '2017-03-22', '06:29:44', 'Hello', 'Active'),
(3064, 30, 0, 218, '2017-03-22', '06:29:47', 'How are you', 'Active'),
(3065, 31, 0, 218, '2017-03-22', '06:34:26', 'Hi', 'Active'),
(3066, 31, 0, 218, '2017-03-22', '06:34:29', 'ss', 'Active'),
(3067, 0, 8, 218, '2017-03-22', '11:06:50', 'df', 'Active'),
(3068, 0, 9, 218, '2017-03-22', '11:09:56', 'Hi', 'Active'),
(3069, 30, 0, 218, '2017-03-22', '06:59:01', 'eHello', 'Active'),
(3070, 0, 6, 218, '2017-03-22', '11:32:45', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3071, 0, 6, 218, '2017-03-22', '11:32:53', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3072, 36, 0, 221, '2017-03-22', '07:08:15', 'gfh', 'Active'),
(3073, 33, 0, 221, '2017-03-22', '07:08:19', 'sdfsd', 'Active'),
(3074, 42, 0, 224, '2017-03-22', '07:10:16', 'd', 'Active'),
(3075, 43, 0, 224, '2017-03-22', '07:10:31', 'hello', 'Active'),
(3076, 44, 0, 224, '2017-03-22', '07:10:45', 'yes', 'Active'),
(3077, 45, 0, 224, '2017-03-22', '07:13:43', 'hi', 'Active'),
(3078, 42, 0, 224, '2017-03-22', '07:13:50', 'Hello', 'Active'),
(3079, 42, 0, 224, '2017-03-22', '07:13:53', 'How are you', 'Active'),
(3080, 42, 0, 224, '2017-03-22', '07:13:57', 'I am fine', 'Active'),
(3081, 46, 0, 224, '2017-03-22', '07:14:04', 'Welcome', 'Active'),
(3082, 47, 0, 224, '2017-03-22', '07:14:17', 'Tempe', 'Active'),
(3083, 0, 10, 229, '2017-03-22', '11:45:16', 'hi', 'Active'),
(3084, 0, 10, 229, '2017-03-22', '11:45:25', '<img src=smile/smile1.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3085, 0, 10, 229, '2017-03-22', '11:52:22', 'Gold', 'Active'),
(3086, 0, 10, 229, '2017-03-22', '11:52:26', 'SIlever', 'Active'),
(3087, 0, 10, 229, '2017-03-22', '11:52:27', '<img src=smile/smile5.gif style=/max-height:250px;max-width:230px;/ >', 'Active'),
(3088, 33, 0, 221, '2017-03-22', '07:59:49', 'Hello', 'Active'),
(3089, 33, 0, 221, '2017-03-22', '07:59:52', 'How are you ', 'Active'),
(3090, 33, 0, 221, '2017-03-22', '07:59:54', 'I am fine', 'Active');

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
(1, 'BCA', '', 'Active'),
(2, 'Bcom', '', 'Active'),
(3, 'BA', '', 'Active'),
(4, 'BSc', '', 'Active'),
(5, 'BBA', '', 'Active');

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
(17, 1, 'First Semester', 79, '12+3', '<p>!2+44</p>', '2017-03-06 09:49:26', 218, 'Active'),
(18, 1, 'First Semester', 78, 'test', 'test dsescr', '2017-03-07 10:37:47', 218, 'Active'),
(19, 1, 'First Semester', 79, 'test title', 'test descr', '2017-03-07 10:38:11', 218, 'Active'),
(20, 1, 'First Semester', 0, '', '', '2017-03-07 10:40:48', 218, 'Active'),
(21, 1, 'First Semester', 0, '', '', '2017-03-07 10:43:36', 218, 'Active'),
(22, 1, 'First Semester', 0, '', '', '2017-03-07 10:44:48', 218, 'Active'),
(23, 1, 'First Semester', 0, '', '', '2017-03-07 10:51:16', 218, 'Active'),
(24, 1, 'First Semester', 0, '', '', '2017-03-07 10:52:21', 218, 'Active'),
(25, 1, 'First Semester', 0, '', '<p>dasdasd</p>', '2017-03-07 10:52:27', 218, 'Active'),
(26, 1, 'First Semester', 0, '', '', '2017-03-07 10:53:15', 218, 'Active'),
(27, 1, 'First Semester', 79, 'test', '<p>setes</p>', '2017-03-07 10:54:17', 218, 'Active');

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
(16, 17, 218, 0, 'wrong', '', '2017-03-06 09:50:32'),
(17, 17, 218, 0, 'hi', '', '2017-03-06 09:53:43'),
(18, 17, 218, 0, 'hy', '18914course.jpg', '2017-03-06 10:15:48'),
(19, 18, 0, 3, '', '1051318914course.jpg', '2017-03-07 10:57:01');

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
(4, 88, 'abcd'),
(5, 2, 'First Semester'),
(6, 1, 'First Semester'),
(7, 5, 'Third Semester'),
(8, 4, 'Fourth Semester'),
(9, 5, 'Fourth Semester'),
(10, 1, 'Third Semester');

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
(14, 'Events', 2, 'NAAC visit', '<p>&nbsp;Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>\r\n<p>&nbsp;</p>\r\n<p>3) A PHP scripting block can be placed anywhere in the document.</p>\r\n<p>&nbsp;</p>\r\n<p>4) There are two basic statements to output text with PHP: echo and print</p>\r\n<p>Each code line in PHP must end with a semicolon.</p>\r\n<p>&nbsp;</p>\r\n<p>Let us write a simple PHP program that sends the text \"Welcome to PHP program\" to the browser using echo statement.</p>\r\n<p>&nbsp;</p>\r\n<p>5) Save it in our server i.e. , xampp\\htdocs folder.</p>', '10147studymat.png', '2017-03-06 09:22:40', 'Active'),
(15, 'Events', 2, 'College day', '<p>&nbsp;Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>\r\n<p>&nbsp;</p>\r\n<p>3) A PHP scripting block can be placed anywhere in the document.</p>\r\n<p>&nbsp;</p>\r\n<p>4) There are two basic statements to output text with PHP: echo and print</p>\r\n<p>Each code line in PHP must end with a semicolon.</p>\r\n<p>&nbsp;</p>\r\n<p>Let us write a simple PHP program that sends the text \"Welcome to PHP program\" to the browser using echo statement.</p>\r\n<p>&nbsp;</p>\r\n<p>5) Save it in our server i.e. , xampp\\htdocs folder.</p>', '26201quizres.jpg', '2017-03-06 09:23:06', 'Active'),
(16, 'Events', 2, 'AgnoFest', '<p>&nbsp;Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>\r\n<p>&nbsp;</p>\r\n<p>3) A PHP scripting block can be placed anywhere in the document.</p>\r\n<p>&nbsp;</p>\r\n<p>4) There are two basic statements to output text with PHP: echo and print</p>\r\n<p>Each code line in PHP must end with a semicolon.</p>\r\n<p>&nbsp;</p>\r\n<p>Let us write a simple PHP program that sends the text \"Welcome to PHP program\" to the browser using echo statement.</p>\r\n<p>&nbsp;</p>\r\n<p>5) Save it in our server i.e. , xampp\\htdocs folder.</p>', '6911tlcomment.jpg', '2017-03-06 09:23:31', 'Active'),
(17, 'Meeting', 3, 'Staff meeting', '<p>&nbsp;PHP is a server-side scripting language, scripts in a PHP file are executed on the server.</p>\r\n<p>&nbsp;</p>\r\n<p>2) We can configure a local server in our local system using any third party toolkiits like xampp.</p>\r\n<p>&nbsp;</p>\r\n<p>3) After installing xampp, the folder xampp\\htdocs acts as a server.</p>\r\n<p>&nbsp;</p>\r\n<p>4) We can use the url http://localhost/ to point our local server.</p>\r\n<p>&nbsp;</p>\r\n<p>STEPS TO RUN OUR FIRST PHP PROGRAM</p>\r\n<p>&nbsp;</p>\r\n<p>1) Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>', '2091agno.jpg', '2017-03-06 09:32:41', 'Active'),
(18, 'Meeting', 3, 'Cabinet', '<p>&nbsp;PHP is a server-side scripting language, scripts in a PHP file are executed on the server.</p>\r\n<p>&nbsp;</p>\r\n<p>2) We can configure a local server in our local system using any third party toolkiits like xampp.</p>\r\n<p>&nbsp;</p>\r\n<p>3) After installing xampp, the folder xampp\\htdocs acts as a server.</p>\r\n<p>&nbsp;</p>\r\n<p>4) We can use the url http://localhost/ to point our local server.</p>\r\n<p>&nbsp;</p>\r\n<p>STEPS TO RUN OUR FIRST PHP PROGRAM</p>\r\n<p>&nbsp;</p>\r\n<p>1) Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>', '20001subject.jpg', '2017-03-06 09:33:35', 'Active'),
(19, 'Meeting', 3, 'Class representatives meeting', '<p>&nbsp;PHP is a server-side scripting language, scripts in a PHP file are executed on the server.</p>\r\n<p>&nbsp;</p>\r\n<p>2) We can configure a local server in our local system using any third party toolkiits like xampp.</p>\r\n<p>&nbsp;</p>\r\n<p>3) After installing xampp, the folder xampp\\htdocs acts as a server.</p>\r\n<p>&nbsp;</p>\r\n<p>4) We can use the url http://localhost/ to point our local server.</p>\r\n<p>&nbsp;</p>\r\n<p>STEPS TO RUN OUR FIRST PHP PROGRAM</p>\r\n<p>&nbsp;</p>\r\n<p>1) Start the web server using the xampp control panel and chose apache to start.</p>\r\n<p>&nbsp;</p>\r\n<p>2) A PHP file normally contains HTML tags and PHP scripting code.</p>', '31751discussion.jpg', '2017-03-06 09:33:58', 'Active'),
(20, 'News and Updates', 4, 'College of Excellence', '<p>&nbsp;Run the code in browser using the url http://localhost/firstphpprogram.php&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>7) Similarly the print statement is also used</p>\r\n<p>&nbsp;</p>\r\n<p>This is how the PHP program is executed.</p>\r\n<p>&nbsp;</p>\r\n<p>8) The PHP script can also include comments in it.</p>\r\n<p>We use // to make a single-line comment and &nbsp;/* and */ to make a large comment block in PHP.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Thank You.....</p>', '19467quizres.jpg', '2017-03-06 09:39:25', 'Active'),
(21, '', 3, '', '', '', '2017-03-07 10:57:55', 'Active');

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

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `user_id`, `course_id`, `semester`, `subject_id`, `title`, `description`) VALUES
(32, 2, 1, 'First Semester', 79, 'Test quiz', '');

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
(218, 'Anitha', '1001', '00936b9285d6b8665ae9122993fb8e91', '1681notice.jpg', 1, 'First Semester', '              ', 'anitha@gmail.com', '', 'Active'),
(219, 'Ashitha', '1002', 'e4237860f88364b6e901d169183d2c29', '4111agno1.jpg', 1, 'First Semester', '              ', 'ashitha@gmail.com', '123456789012345', 'Active'),
(220, 'Acc', '1003', 'ff635c70a06d570484e4e26c9e06e18d', '23006agno12.jpg', 1, 'Second Semester', '              ', 'acc@gmail.com', '1234567890', 'Active'),
(221, 'Bubly', '1004', 'cb6f95b84e6b42abad40415ebcd8dcff', '30838smile4.gif', 1, 'Second Semester', '              ', 'add@gmail.com', '9986058114', 'Active'),
(222, 'Baa', '2001', '87445a96eeeb501f1af90daa0acb5cc8', '30584agno13.jpg', 2, 'First Semester', '              ', 'baa@m.com', '', 'Active'),
(223, 'Bbb', '2002', '58316b6d4656d4a4221b229194129ee3', '16311course.jpg', 2, 'First Semester', '              ', 'bbb@n.com', '', 'Active'),
(224, 'CCC', '3001', '58c6fd2dd93e79a84430aa84baf4970b', '6210discussion.jpg', 3, 'First Semester', '              ', 'QWE@D.CM', '', 'Active'),
(225, 'CBB', '3002', '3fe82e36bb5937263677bd0604a4e474', '18057disrply.jpg', 3, 'First Semester', '              ', 'QWE@B.M', '', 'Active'),
(226, 'Daa', '4001', 'f91e58262b0ebbd01e34d3a64c6a0a6c', '8892grpchat.jpg', 4, 'First Semester', '              ', 'BNM@SD.NM', '', 'Active'),
(227, 'Dbb', '4002', '4be11d614f4f100c2e996c9b2583db73', '7723question.jpg', 4, 'First Semester', '              ', 'AS@JK.BN', '', 'Active'),
(228, 'Eaa', '5001', '1e1d5b237d20ef66fb419e05b3f04e58', '4166quiz.jpg', 5, 'First Semester', '              ', 'ZX@BN.MN', '', 'Active'),
(229, 'Ebb', '5002', '5440dcad13f4b4f0f598955cf63cb9a7', '18123quizres.jpg', 5, 'First Semester', '              ', 'VB@YU.MN', '', 'Active'),
(230, 'raj kirana', '29832', '', '', 1, 'First Semester', '', '', '', '');

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
(1, 2, 'First Semester', 85, 'test', 2, '<p>test msg</p>', '227252940Untitled.png', '2017-03-22 09:19:45'),
(2, 1, 'First Semester', 78, 'test', 2, '<p>test messag</p>', '13211smile1.gif', '2017-03-23 12:29:01'),
(3, 1, 'Second Semester', 81, 'test', 2, '<p>test message</p>', '31507smile3.gif', '2017-03-22 11:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `course_id` int(10) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject`, `course_id`, `semester`, `note`, `status`) VALUES
(78, 'FIT', 1, 'First Semester', '', 'Active'),
(79, 'MATHS', 1, 'First Semester', '', 'Active'),
(80, 'DBMS', 1, 'First Semester', '', 'Active'),
(81, 'Data Structure', 1, 'Second Semester', '', 'Active'),
(82, 'Operating System', 1, 'Second Semester', '', 'Active'),
(83, 'Software Engineering', 1, 'Second Semester', '', 'Active'),
(84, 'Statistics', 2, 'First Semester', '', 'Active'),
(85, 'Economics', 2, 'First Semester', '', 'Active'),
(86, 'Accountancy', 2, 'First Semester', '', 'Active'),
(87, 'History', 3, 'First Semester', '', 'Active'),
(88, 'Politics', 3, 'First Semester', '', 'Active'),
(89, 'Sociology', 3, 'First Semester', '', 'Active'),
(90, 'Physics', 4, 'First Semester', '', 'Active'),
(91, 'Chemistry', 4, 'First Semester', '', 'Active'),
(92, 'Biology', 4, 'First Semester', '', 'Active'),
(93, 'Business Management', 5, 'First Semester', '', 'Active'),
(94, 'Admistration', 5, 'First Semester', '', 'Active'),
(95, 'Human Resources', 5, 'First Semester', '', 'Active');

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
(67, 218, 'Text', 'hiii', '', '', '2017-03-06 09:47:55'),
(68, 219, 'Text', 'hey', '', '', '2017-03-06 10:34:13'),
(69, 218, 'Text', '\'jk\'', '', '', '2017-03-07 09:44:40'),
(70, 218, 'Image', '\'lk\'', '4938chatmsg.jpg', '', '2017-03-07 09:45:13'),
(71, 218, 'Video', 'message', '', '9970VID-20161207-WA0003.mp4', '2017-03-07 09:46:30'),
(72, 218, 'Video', 'message', '', '9152VID-20161207-WA0003.mp4', '2017-03-07 09:47:07'),
(73, 218, 'Video', '\'kgh\'', '', '16446VID-20161207-WA0003.mp4', '2017-03-07 09:47:49');

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
(194, 'Comment', 218, 67, 'wow\n', '2017-03-06 05:18:04'),
(215, 'Comment', 218, 73, 'hii\n', '2017-03-07 05:27:54'),
(216, 'Comment', 218, 73, 'hii\n', '2017-03-07 05:30:49'),
(240, 'Likes', 218, 68, '', '2017-03-07 06:45:21'),
(247, 'Likes', 219, 67, '', '2017-03-07 06:45:57'),
(248, 'Likes', 219, 68, '', '2017-03-07 06:46:09'),
(249, 'Likes', 222, 68, '', '2017-03-07 06:46:47'),
(250, 'Likes', 222, 67, '', '2017-03-07 06:46:48'),
(251, 'Likes', 0, 70, '', '2017-03-07 07:27:05');

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
(1, 'Admin', 'Dracula', '', 'admin', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Active'),
(2, 'Staff', 'Krith', '5372user.jpg', 'krith111', '61f9be1bd0be59bc70cbdc3e78deca81', 'Active'),
(3, 'Staff', 'Zeeta', '26901timeline.jpg', 'zeeta222', 'ec166affea364b1898502fee9cb36fd8', 'Active'),
(4, 'Staff', 'Misrina', '32678agno12.jpg', 'misrina333', '2cd8dae21c6e929d991228e8fbc6467c', 'Active'),
(5, 'Staff', 'Ashmi', '', 'ashmi444', '8650dd9f4668774a979d9a68bda0151b', 'Active'),
(6, 'Staff', 'Reeshu', '', 'reeshu555', '1599456a939a510915514e0b4ac147cc', 'Active');

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
  MODIFY `chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3091;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `discussion_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `discussion_reply`
--
ALTER TABLE `discussion_reply`
  MODIFY `discussion_reply_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `group_chat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `quiz_question_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `quiz_result_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `study_material_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
  MODIFY `timeline_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `timeline_comments`
--
ALTER TABLE `timeline_comments`
  MODIFY `timeline_comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
