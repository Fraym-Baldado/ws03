-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2026 at 04:27 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobseeker`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `requirements` text,
  `benefits` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `description`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`, `created_at`) VALUES
(1, 1, 'Software Engineer', 'We are seeking a skilled software engineer to develop high-quality software solutions', '90000.00', 'development,coding,java,python', 'Tech Solutions Inc.', '123 Main St', 'Albany', 'NY', '348-334-3949', 'info@techsolutions.com', 'Bachelors degree in Computer Science or related field, 3+ years of software development experience', 'Healthcare, 401(k) matching, flexible work hours', '2026-05-09 04:32:37'),
(2, 2, 'Marketing Specialist', 'We are looking for a Marketing Specialist to create and manage marketing campaigns', '70000.00', 'marketing,advertising', 'Marketing Pros', '456 Market St', 'San Francisco', 'CA', '454-344-3344', 'info@marketingpros.com', 'Bachelors degree in Marketing or related field, experience in digital marketing', 'Health and dental insurance, paid time off, remote work options', '2026-05-09 04:32:37'),
(3, 3, 'Web Developer', 'Join our team as a Web Developer and create amazing web applications', '85000.00', 'web development,programming', 'WebTech Solutions', '789 Web Ave', 'Chicago', 'IL', '456-876-5432', 'info@webtechsolutions.com', 'Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript', 'Competitive salary, professional development opportunities, friendly work environment', '2026-05-09 04:32:37'),
(4, 1, 'Data Analyst', 'We are hiring a Data Analyst to analyze and interpret data for insights', '75000.00', 'data analysis,statistics', 'Data Insights LLC', '101 Data St', 'Chicago', 'IL', '444-555-5555', 'info@datainsights.com', 'Bachelors degree in Data Science or related field, strong analytical skills', 'Health benefits, remote work options, casual dress code', '2026-05-09 04:32:37'),
(8, 1, 'Graphic Designer', 'Join our creative team as a Graphic Designer and bring ideas to life', '70000.00', 'graphic design,creative', 'CreativeWorks Inc.', '234 Design Blvd', 'Albany', 'NY', '499-321-9876', 'info@creativeworks.com', 'Bachelors degree in Graphic Design or related field, proficiency in Adobe Creative Suite', 'Flexible work hours, creative work environment, opportunities for growth', '2026-05-14 19:01:40'),
(14, 1, 'UI Designer', 'Join our creative team as a UI Designer and create user-friendly digital experiences', '78000.00', 'ui design,user experience,web design', 'PixelCraft Studio', '567 Creative Ave', 'Austin', 'TX', '555-234-7890', 'info@pixelcraftstudio.com', 'Bachelors degree in Design or related field, proficiency in Figma and Adobe XD', 'Flexible schedule, creative environment, career growth opportunities', '2026-05-16 05:15:25'),
(15, 1, 'Mobile App Developer', 'Join us to develop high-performance mobile apps for Android and iOS platforms.', '92000.00', 'mobile development,flutter,android,ios', 'NextGen Apps', '890 Innovation Rd', 'Seattle', 'WA', '555-876-1234', 'careers@nextgenapps.com', 'Knowledge of Flutter or React Native required.', 'Remote work options and performance bonuses', '2026-05-16 05:20:07'),
(22, 3, 'IT Support Specialist', 'We are looking for  technical support who can assist users with hardware and software problems.', '500000.00', 'IT support, troubleshooting, helpdesk', 'Tech Solutions Inc', '234 Design Blvd', 'Albany', 'NY', '09234567891', 'Tech@gmail.com', 'Experience in troubleshooting hardware and software issues', 'Career growth opportunities  and Hands-on technical experience', '2026-05-16 16:09:52'),
(23, 3, 'IT Helpdesk Technician', 'We are seeking an IT helpdesk technician to provide technical support and resolve user issues.', '20000.00', 'helpdesk, IT support, troubleshooting', 'NetSupport Technologies', '12 Service Lane', 'Singapore', 'CR', '0987643561', 'Net.supports@gmail.com', 'Familiarity with operating systems', 'Friendly work environment', '2026-05-16 16:14:18'),
(24, 3, 'AI Engineer', 'We are hiring an AI engineer to design and develop intelligent systems and machine learning models.', '300000.00', 'AI, machine learning, Python', 'Nexa Digital Solution', '9 Innovation Drive', 'Auckland', 'AR', '6495557890', 'jobs@nexadigital.nz', 'Knowledge of machine learning algorithms Experience with Python and AI frameworks Understanding of data processing and modeling Strong analytical thinking', 'High-paying AI role Work on advanced technology projects', '2026-05-16 16:18:34'),
(25, 3, 'Cloud AI Engineer', 'We seek a Cloud AI Engineer to design and deploy scalable cloud-based artificial intelligence systems.', '500000.00', '', 'SkyNet Cloud Systems', '567 Creative Ave', 'Kualalumpur', 'ML', '0917-555-4821', 'SKynetz@net.com', 'Experience with AWS or Azure', 'Stock options, Remote flexibility, Health coverage, Annual bonuses', '2026-05-16 16:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `city`, `state`, `created_at`) VALUES
(2, 'Yumi Celly', 'YummyCells@gmail.com', '$2y$10$FOsL94kFitHpSgDMOyMbR.IF50KmdjnNWPLIND6G1AWcMRmzWI7SG', 'Seoul', 'South Korea', '2026-05-15 20:13:21'),
(3, 'Juan Dela Cruz', 'juan@gmail.com', '$2y$10$vakOhC95Xq.EDSsQdLa4/eovZvKzwBVS1fLKctcnsF0I3lwvcck3a', 'Pasig City', 'Metro Manila', '2026-05-16 04:13:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
