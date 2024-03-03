-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 03:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('C1Fqim6iYVgWK8LtYgHb', '35ltNztFF5YimuVy6jNj', 'KeDG2NJP9Y9PfirQGaE8', 'Basics of music production', 'Unlock the world of music production basics: sound theory, DAWs, MIDI, and recording. Delve into beat-making, melody, and arrangement essentials. Explore synthesis, sampling, and effects for creative flair. Refine mixing, mastering, and spatialization skills. Begin your journey into music production with confidence.', 'oH2NdJQHtnWCWxvDF3mE.mp4', 'uGlu6OFShKhCqGHUxtaT.jpg', '2024-03-02', 'active'),
('X84anV8ss1IROKGCITTC', '35ltNztFF5YimuVy6jNj', 'KeDG2NJP9Y9PfirQGaE8', 'Playlist', 'Unlock the world of music production basics: sound theory, DAWs, MIDI, and recording. Delve into beat-making, melody, and arrangement essentials. Explore synthesis, sampling, and effects for creative flair. Refine mixing, mastering, and spatialization skills. Begin your journey into music production with confidence.', 'bxBaEVXItG2O11nontj0.mp4', '6AHeYbMANZCXIWgH9mAb.jpg', '2024-03-02', 'active'),
('AZbYnEJrzd7cccknulCo', '35ltNztFF5YimuVy6jNj', 'KeDG2NJP9Y9PfirQGaE8', 'Channel Rack', 'Unlock the world of music production basics: sound theory, DAWs, MIDI, and recording. Delve into beat-making, melody, and arrangement essentials. Explore synthesis, sampling, and effects for creative flair. Refine mixing, mastering, and spatialization skills. Begin your journey into music production with confidence.', 'yM4Crg5jROyBQKR7OrxG.mp4', 'OMdtnfR7A5qEHNSAzslh.jpg', '2024-03-02', 'active'),
('H8QU3GpwhqT6AUCyp1YR', '35ltNztFF5YimuVy6jNj', 'KeDG2NJP9Y9PfirQGaE8', 'Noise removal', 'Unlock the world of music production basics: sound theory, DAWs, MIDI, and recording. Delve into beat-making, melody, and arrangement essentials. Explore synthesis, sampling, and effects for creative flair. Refine mixing, mastering, and spatialization skills. Begin your journey into music production with confidence.', 'l3cqTRWAMxBcHefvAtIR.mp4', 'SPcBkqihObuaCan9tgPh.jpg', '2024-03-02', 'active'),
('yfZa117pEj93bAE4XqF0', 'M1RCNaQjvkAs1w4zHnwC', 'NuCSzhKLOMdbNChnZaX4', 'Introduction', 'Explore the essential features of Figma, a powerful design tool for creating user interfaces and experiences. Learn the basics of layout design, prototyping, and collaboration. Discover how Figma streamlines the UI/UX design process with its intuitive interface and cloud-based platform. Start building your design skills with Figma today.', '5PIE4ROwOTe8cAx94FUx.mp4', '8SQ6Z0PO3PzhY6VTWjDK.png', '2024-03-02', 'active'),
('aNTw50uZAO9YNXFUyAt3', 'M1RCNaQjvkAs1w4zHnwC', 'NuCSzhKLOMdbNChnZaX4', 'What is Figma?', 'Explore the essential features of Figma, a powerful design tool for creating user interfaces and experiences. Learn the basics of layout design, prototyping, and collaboration. Discover how Figma streamlines the UI/UX design process with its intuitive interface and cloud-based platform. Start building your design skills with Figma today.', '8CPjC9hkYyEc6psZWZCC.mp4', 'uHkuhJ9GixunQzM7dR8O.png', '2024-03-02', 'active'),
('q87t5HDNH8jMxrwDXYPG', 'M1RCNaQjvkAs1w4zHnwC', 'NuCSzhKLOMdbNChnZaX4', 'Setting up a project', 'Explore the essential features of Figma, a powerful design tool for creating user interfaces and experiences. Learn the basics of layout design, prototyping, and collaboration. Discover how Figma streamlines the UI/UX design process with its intuitive interface and cloud-based platform. Start building your design skills with Figma today.', 't9C6v9AG4NkP0Xb8KEG3.mp4', 'EcRFsLs1xJnwBwryeENq.png', '2024-03-02', 'active'),
('t7JnMWBWQfGr9lXW5yi3', 'M1RCNaQjvkAs1w4zHnwC', 'edGFk1HnDC8GP9vzVBLe', 'Introduction', 'Delve into Linux essentials customized for ethical hacking pursuits. Discover command-line basics, file systems, and network configurations crucial for penetration testing. Learn to utilize Linux tools for ethical hacking methodologies and security assessments. Lay the foundation to navigate Linux environments adeptly for ethical hacking endeavors.', '3b7IaMhp7mr5zeOiVAll.mp4', 'CgUtsvPc8045jEWEapYN.jpg', '2024-03-02', 'active'),
('LOcTBWgmlvJJVdIIZnGR', 'M1RCNaQjvkAs1w4zHnwC', 'edGFk1HnDC8GP9vzVBLe', 'Understanding Linux file systems', 'Delve into Linux essentials customized for ethical hacking pursuits. Discover command-line basics, file systems, and network configurations crucial for penetration testing. Learn to utilize Linux tools for ethical hacking methodologies and security assessments. Lay the foundation to navigate Linux environments adeptly for ethical hacking endeavors.', '5tHvS2KKrg6cRdrOKsZ9.mp4', 'MEvkqOwSRQMWjUl2FKvV.jpg', '2024-03-02', 'active'),
('hIAGDGMJToV6xoAj3EKU', 'M1RCNaQjvkAs1w4zHnwC', 'edGFk1HnDC8GP9vzVBLe', 'Getting help in Linux', 'Delve into Linux essentials customized for ethical hacking pursuits. Discover command-line basics, file systems, and network configurations crucial for penetration testing. Learn to utilize Linux tools for ethical hacking methodologies and security assessments. Lay the foundation to navigate Linux environments adeptly for ethical hacking endeavors.', 'NorMLlo7rPZenut2kmci.mp4', 'xkdqIZs2e3MQJMYh1LWP.jpg', '2024-03-02', 'active'),
('0fbr4rUnlK8XF9mHlNTh', 'M1RCNaQjvkAs1w4zHnwC', 'yVwE23hoOibnoqwBLLxm', 'Introduction to PHP', 'Embark on a journey into the heart of PHP programming. From fundamental syntax to dynamic web page creation, this course introduces you to the core concepts of PHP. Get ready to dive deep into the world of web development with PHP as your foundation.', 'PUeUwaBsFHgxbR0h9m7p.mp4', 'u4ymVmXYekVPAJVFuldy.jpg', '2024-03-02', 'active'),
('xrcTocdsy4Wtnq448tjt', 'M1RCNaQjvkAs1w4zHnwC', 'yVwE23hoOibnoqwBLLxm', 'Variables and Data types', 'Embark on a journey into the heart of PHP programming. From fundamental syntax to dynamic web page creation, this course introduces you to the core concepts of PHP. Get ready to dive deep into the world of web development with PHP as your foundation.', 'XAgdLTFhE1aldQvtua3U.mp4', 'xDelj3CX2B3B3mvuVlmW.jpg', '2024-03-02', 'active'),
('YBp5tUePHzgrq9lYLooM', 'gKgfK0OZAgQPjGJZ9gNz', 'W061kKxcwF6hQGfPQmBL', 'Lenses made easy', 'Discover the magic of capturing moments through the lens. From mastering camera functions to refining composition, this course is your gateway to the world of photography. Unleash your creativity and learn to tell stories through images. Let&#39;s embark on a journey of visual storytelling together.', 'JDD4X2jlGIadzZzAOkB6.mp4', 'DmLXIpwFB7p6SxQxX4qg.jpeg', '2024-03-02', 'active'),
('3bpncTdsdFEkOwdxVYMA', 'ROGyIeemC4IVFCmJw1uj', 'wxMP3i8egAkrTcJSMLPt', 'Introduction to Digital marketing', 'Welcome to Digital Marketing: Embark on a journey where creativity meets strategy in the digital realm. In this course, we&#39;ll explore the dynamic landscape of online promotion and engagement. From SEO to social media, email campaigns to content creation, we&#39;ll equip you with the tools to thrive in the digital marketplace. Get ready to connect, engage, and make an impact in the ever-evolving world of digital marketing.', 'uOjMJiX5Ay0kLwleHmAf.mp4', 'ZDFRhyoi3gDJq1CSSox5.jpg', '2024-03-02', 'active'),
('weU0Mtcy6qqNQAaHUXKn', 'ROGyIeemC4IVFCmJw1uj', 'wxMP3i8egAkrTcJSMLPt', 'Freelancing tutorial for Beginners', 'Embark on a journey where creativity meets strategy in the digital realm. In this course, we&#39;ll explore the dynamic landscape of online promotion and engagement. From SEO to social media, email campaigns to content creation, we&#39;ll equip you with the tools to thrive in the digital marketplace. Get ready to connect, engage, and make an impact in the ever-evolving world of digital marketing.', 'tLUmEswjrUGPoc88NvIC.mp4', 'T2X8GRh1Vq6xFsV6eBLG.jpg', '2024-03-02', 'active'),
('yL3Xf8R88HwR4A4mQ9X8', 'ROGyIeemC4IVFCmJw1uj', 'wxMP3i8egAkrTcJSMLPt', 'What are Facebook Ads?', 'Embark on a journey where creativity meets strategy in the digital realm. In this course, we&#39;ll explore the dynamic landscape of online promotion and engagement. From SEO to social media, email campaigns to content creation, we&#39;ll equip you with the tools to thrive in the digital marketplace. Get ready to connect, engage, and make an impact in the ever-evolving world of digital marketing.', '89fugK7bwqkPp61jPoie.mp4', 'eZK5ibd9vdFXPqG24NvT.jpg', '2024-03-02', 'active'),
('pMQA4MgVBUCrnNVmzTFe', 'ROGyIeemC4IVFCmJw1uj', 'UXbsO0I2l5squqpEdoLx', 'What is Dropshipping? ', 'Embark on an empowering journey into entrepreneurship. In this course, we&#39;ll guide you through the exciting process of turning your ideas into a thriving business. From laying the groundwork to overcoming challenges, we&#39;ll help you navigate every step of the startup journey. Get ready to unleash your potential and create the business of your dreams.', 'EIFrkS8a7UNXGe1SjxHf.mp4', '4AZO50OxvSJxjFtu5lTq.jpg', '2024-03-03', 'active'),
('B2LyRyv7HRg2ePMxnY4F', 'ROGyIeemC4IVFCmJw1uj', 'UXbsO0I2l5squqpEdoLx', 'How to create a Shopify store?', 'Embark on an empowering journey into entrepreneurship. In this course, we&#39;ll guide you through the exciting process of turning your ideas into a thriving business. From laying the groundwork to overcoming challenges, we&#39;ll help you navigate every step of the startup journey. Get ready to unleash your potential and create the business of your dreams.', 'rrpajQxNE4UUNhBy2tDx.mp4', 'J3fMJ03n5sKtYobpqT0l.jpg', '2024-03-03', 'active'),
('ron75QFCFJTk24z9d0gK', 'ROGyIeemC4IVFCmJw1uj', 'UXbsO0I2l5squqpEdoLx', 'Shopify account setup', 'Embark on an empowering journey into entrepreneurship. In this course, we&#39;ll guide you through the exciting process of turning your ideas into a thriving business. From laying the groundwork to overcoming challenges, we&#39;ll help you navigate every step of the startup journey. Get ready to unleash your potential and create the business of your dreams.', 'SrANLY9AP7bYimdQi1lj.mp4', 'OHXyAziVodZ9SliCDtOq.jpg', '2024-03-03', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `category`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('KeDG2NJP9Y9PfirQGaE8', '35ltNztFF5YimuVy6jNj', 'Music', 'Music Production Fundamentals', 'Uncover &#34;Music Production Fundamentals&#34; for beginners and enthusiasts. Learn sound theory, DAWs, MIDI, and recording. Master beat-making, melody, and arrangement across genres. Explore sound design, synthesis, and sampling for unique effects. Refine mixing, mastering, and spatialization for pro sound. Gain skills to pursue your music production journey confidently.', 'IbwT34AMlkQVES2l91d2.png', '2024-03-02', 'active'),
('NuCSzhKLOMdbNChnZaX4', 'M1RCNaQjvkAs1w4zHnwC', 'Design', 'Figma for UI/UX', 'Master Figma for UI/UX: Learn essential tools and techniques for creating sleek interfaces. Dive into wireframing, prototyping, and collaboration features. Explore design systems, components, and version control. Elevate your skills in user interface and user experience design with Figma.', 'gNgBOIkgTX7E7tld45X9.png', '2024-03-02', 'active'),
('edGFk1HnDC8GP9vzVBLe', 'M1RCNaQjvkAs1w4zHnwC', 'Software', 'Linux for Ethical Hacking', 'Master Linux fundamentals tailored for ethical hacking. Explore command-line basics, file systems, and network configuration. Learn to leverage Linux tools for penetration testing, security assessments, and ethical hacking methodologies. Gain practical skills to navigate Linux environments effectively in ethical hacking scenarios.', 'nrlP1k6ha6Uyya9Wq1MQ.jpg', '2024-03-02', 'active'),
('yVwE23hoOibnoqwBLLxm', 'M1RCNaQjvkAs1w4zHnwC', 'Development', 'PHP Fundamentals', 'Master the fundamentals of PHP programming language. Understand essential syntax, data types, and control structures. Discover how PHP interacts with web servers to craft dynamic web pages. Acquire a robust foundation in PHP for diverse web development projects and beyond.', 'Wm7ReqmXdYErCmGVWcM9.jpg', '2024-03-02', 'active'),
('W061kKxcwF6hQGfPQmBL', 'gKgfK0OZAgQPjGJZ9gNz', 'Photography', 'Learn Photography', 'Master the art and science of photography. From understanding camera basics to composing stunning shots, this course covers it all. Explore lighting, composition, and editing techniques to capture captivating images. Develop your photography skills and unleash your creative vision.', 'Oz1KrN2GtS1CWwYYOw2h.jpeg', '2024-03-02', 'active'),
('wxMP3i8egAkrTcJSMLPt', 'ROGyIeemC4IVFCmJw1uj', 'Marketing', 'Learn Digital Marketing', 'Step into the exciting realm of online promotion and engagement. Dive into SEO, social media, email, and content strategies. Learn to connect with your audience authentically and analyze data to refine your approach. Join us to master the art of digital marketing and make meaningful connections in the digital landscape.', 'qDXCOriKmQpHIkMChJJ2.jpg', '2024-03-02', 'active'),
('UXbsO0I2l5squqpEdoLx', 'ROGyIeemC4IVFCmJw1uj', 'Business', 'Start Business', ' From concept to launch, learn the essentials of entrepreneurship. Explore ideation, planning, funding, and execution. Gain insights into market research, branding, and customer acquisition. Equip yourself with the fundamentals to turn your vision into a successful business venture.', 'XklmxIaidMVjwsYO4Gnc.jpg', '2024-03-03', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('35ltNztFF5YimuVy6jNj', 'Pranav Iyengar', 'musician', 'pranav@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'YGT5EixW9BTX9UkWglc1.jpg'),
('M1RCNaQjvkAs1w4zHnwC', 'John Doe', 'developer', 'john@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ObkjXfsQlztdTOMbEb3T.jpg'),
('gKgfK0OZAgQPjGJZ9gNz', 'Hamzaa Ameer', 'photographer', 'hamza@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'OgxpzR1Sa4ilgImEptPx.jpg'),
('ROGyIeemC4IVFCmJw1uj', 'Nida Khan', 'teacher', 'nida@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'BkCh4ZusQlRzpFanMag2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
