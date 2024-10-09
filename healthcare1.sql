-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 07:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare1`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('Sam', '$2y$10$q1oZRz4M55U8K312XcNxNOvMXvwN9rgeDtNTfOYxxictX0gwcYJjW'),
('Pratham', '$2y$10$XH4xsyx41CZdHhx7ihWc2OkzTvAd7wMj59Y0TzVJqvpUeZvxaajSe'),
('Riya', '$2y$10$wj7loN82.oI.RWgObYbQ4u08RKoBsmI4eiTtvu0s4DtopHsNhSObK'),
('chirag', '$2y$10$rPG2y2hNDKMHkENuiXOi9uA/VM.km/aYwM54pPZE9KPdQLKITk7rW'),
('Ram', '$2y$10$dpmHX8n/AZ2L18gAruUGUuT8fy93hPSw4rYh.ufHxtIOGM6djEYUa'),
('user1', '$2y$10$Csphzt4vc0pKaWkqdi0lc.HM05zNEL3URgiDVTGuhW3BgfEjeHUru'),
('jay', '$2y$10$i9jD.C8t4p6ZMnx7b0A86Oj3bChaQyUOTUpYnB59CAYLrQUmM60Xm'),
('Joy', '$2y$10$NDsXBHDVgax5Fm0IgAryWujQDRvVboHMes1rKkOofnvZ7jkyvMapi'),
('Pratham', '$2y$10$xl04Lt9vPETJEEcIypNB2.Wvu0/qp20CwTbsZD5qVZzJFFFK2/7k6'),
('Pratham', '$2y$10$Z3oBFrQSho.0Pa9383FdW.XnUPtRYlYVn0ZQ71r/INrkbZ/UDhJKC'),
('rama', '$2y$10$6ehKovmbpymTGixXH5y2fOxIAspU0ylqJOJyFpWrwS9SwUKwzoUE6'),
('Pra', '$2y$10$BZrb1gN.nR2UvLXD./ZB.ub437/qvABeDVOQEGj0lzd6d/LSLfR7m'),
('testuser', '$2y$10$EarjMw7CR/R.Bl2fIc7B8OzCW/ZJsFyUyh/xunBBXueFDhx8IB5WO'),
('testuser2', '$2y$10$VDPpFKJAZXcfkquR3/j85uDwtjTId3fN6EsOjXjEIHbT9wtbEkfDy'),
('testuser2', '$2y$10$Zs85UeCgZ93dp9uUll4/beGdJdEGQsoxJajwp/8.IQ1kyznV4TtAi'),
('Pratham', '$2y$10$SKhw8ZabIbUia3CnoLJ4j.MINbtzlpjTKri8XRNsQ7VPkni.nVdQ2'),
('user', '$2y$10$Z1MpPSauYRHyTN9N3dgUgO6ysMU9ZQ6AV4TQxnamrOJ5t191LiSi2'),
('user', '$2y$10$ijs38G4rbhhn8UZJBFfpxOGKcTmi8B9E5JF80Cb44/pxJLpZ1pDPm'),
('Prathamesh', '$2y$10$lfB2j7ITtTdXQXyZPf2QNekoKFh8m/9gdQKv2vQrmcB140B0oOJ/S'),
('k user', '$2y$10$r6qsRJpgGtvilT0L7Zpn3edJ/.98X2IXARw6dRNhVaGjhED8uGjKi'),
('Aditya', '$2y$10$d2QZgBQop8DGau.f5sUU0uYNvtopnOh3N5gbfNXl5XZrkRDiIlDEW'),
('Nanda', '$2y$10$wXkvbPMeNtVlNCTaDhHx2OX0Xyz0paqd4r3cIyQkmzaO881oZl00W'),
('Manohar', '$2y$10$VBb26f4mFK22.JEMNVuKaOKLo1nUiVeHNE9u5ChGbZfh8hDV.qWXq');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `New Username` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Weight` float(5,2) NOT NULL,
  `New Password` varchar(255) NOT NULL,
  `Confirm Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`New Username`, `Email`, `Age`, `Gender`, `Weight`, `New Password`, `Confirm Password`) VALUES
('Prathamesh', 'prathameshacharya89@gmail.com', 0, '', 0.00, '$2y$10$5sJI8qKy/iRBp6j8AmbNJ.IHU6BMGke7bUUKo6/FIHvY91mUKw2Hy', ''),
('Pawan', 'pawan@123', 0, '', 0.00, '$2y$10$Kk/RV1DO1k2hrRlCr1BOC.A3fjbU0WKydJ1Ianeh3Jw7NgLoCmova', ''),
('Sam', 'samruddha12@gmail.com', 0, '', 0.00, '$2y$10$q1oZRz4M55U8K312XcNxNOvMXvwN9rgeDtNTfOYxxictX0gwcYJjW', ''),
('Pratham', 'prathameshacharya89@gmail.com', 0, '', 0.00, '$2y$10$XH4xsyx41CZdHhx7ihWc2OkzTvAd7wMj59Y0TzVJqvpUeZvxaajSe', ''),
('Riya', 'riya12@gmail.com', 0, '', 0.00, '$2y$10$wj7loN82.oI.RWgObYbQ4u08RKoBsmI4eiTtvu0s4DtopHsNhSObK', ''),
('chirag', 'chirag@gmail.com', 0, '', 0.00, '$2y$10$rPG2y2hNDKMHkENuiXOi9uA/VM.km/aYwM54pPZE9KPdQLKITk7rW', ''),
('Ram', 'ram1@gmail.com', 0, '', 0.00, '$2y$10$dpmHX8n/AZ2L18gAruUGUuT8fy93hPSw4rYh.ufHxtIOGM6djEYUa', ''),
('user1', 'user@gmail.com', 0, '', 0.00, '$2y$10$Csphzt4vc0pKaWkqdi0lc.HM05zNEL3URgiDVTGuhW3BgfEjeHUru', ''),
('jay', 'jay@gmail.com', 0, '', 0.00, '$2y$10$i9jD.C8t4p6ZMnx7b0A86Oj3bChaQyUOTUpYnB59CAYLrQUmM60Xm', ''),
('Joy', 'joy@gmail.com', 30, 'Male', 73.00, '$2y$10$NDsXBHDVgax5Fm0IgAryWujQDRvVboHMes1rKkOofnvZ7jkyvMapi', ''),
('Pratham', 'pratham@gmail.com', 20, 'Male', 65.00, '$2y$10$xl04Lt9vPETJEEcIypNB2.Wvu0/qp20CwTbsZD5qVZzJFFFK2/7k6', ''),
('Pratham', 'pratham@gmail.com', 20, 'Male', 65.00, '$2y$10$Z3oBFrQSho.0Pa9383FdW.XnUPtRYlYVn0ZQ71r/INrkbZ/UDhJKC', ''),
('rama', 'rama@gmail.com', 38, 'Male', 90.00, '$2y$10$6ehKovmbpymTGixXH5y2fOxIAspU0ylqJOJyFpWrwS9SwUKwzoUE6', ''),
('Pra', 'pra@gmail.com', 20, 'Male', 68.00, '$2y$10$BZrb1gN.nR2UvLXD./ZB.ub437/qvABeDVOQEGj0lzd6d/LSLfR7m', ''),
('testuser', 'test@gmail.com', 20, 'Male', 80.00, '$2y$10$EarjMw7CR/R.Bl2fIc7B8OzCW/ZJsFyUyh/xunBBXueFDhx8IB5WO', ''),
('testuser2', 'testuser2@gmail.com', 30, 'Male', 70.00, '$2y$10$VDPpFKJAZXcfkquR3/j85uDwtjTId3fN6EsOjXjEIHbT9wtbEkfDy', ''),
('testuser2', 'testuser2@gmail.com', 30, 'Male', 70.00, '$2y$10$Zs85UeCgZ93dp9uUll4/beGdJdEGQsoxJajwp/8.IQ1kyznV4TtAi', ''),
('Pratham', 'prathameshacharya89@gmail.com', 20, 'Male', 66.00, '$2y$10$SKhw8ZabIbUia3CnoLJ4j.MINbtzlpjTKri8XRNsQ7VPkni.nVdQ2', ''),
('user', 'user@gmail.com', 50, 'Male', 90.00, '$2y$10$Z1MpPSauYRHyTN9N3dgUgO6ysMU9ZQ6AV4TQxnamrOJ5t191LiSi2', ''),
('user', 'user@gmail.com', 50, 'Male', 90.00, '$2y$10$ijs38G4rbhhn8UZJBFfpxOGKcTmi8B9E5JF80Cb44/pxJLpZ1pDPm', ''),
('Prathamesh', 'prat@gmail.com', 20, 'Male', 70.00, '$2y$10$lfB2j7ITtTdXQXyZPf2QNekoKFh8m/9gdQKv2vQrmcB140B0oOJ/S', ''),
('k user', 'k@gmail.com', 18, 'Female', 70.00, '$2y$10$r6qsRJpgGtvilT0L7Zpn3edJ/.98X2IXARw6dRNhVaGjhED8uGjKi', ''),
('Aditya', 'adi@gmail.com', 20, 'Male', 70.00, '$2y$10$d2QZgBQop8DGau.f5sUU0uYNvtopnOh3N5gbfNXl5XZrkRDiIlDEW', ''),
('Nanda', 'nanda@gmail.com', 20, 'Male', 65.00, '$2y$10$wXkvbPMeNtVlNCTaDhHx2OX0Xyz0paqd4r3cIyQkmzaO881oZl00W', ''),
('Manohar', 'manohar@gmail.com', 60, 'Male', 80.00, '$2y$10$VBb26f4mFK22.JEMNVuKaOKLo1nUiVeHNE9u5ChGbZfh8hDV.qWXq', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
