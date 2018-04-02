--
-- Database: `Staff Performance`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(7) UNIQUE NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `AGE` int(3) DEFAULT NULL,
  `BIRTHDATE` date DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITY_ID` int(3) UNIQUE NOT NULL,
  `POSTAL_CODE` int(5) DEFAULT NULL,
  `CITY_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CITY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `POSITION_ID` int(3) UNIQUE NOT NULL,
  `POSITION_NAME` varchar(30) DEFAULT NULL,
  `BASE_SALARY` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`POSITION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_ID` int(3) UNIQUE NOT NULL,
  `ITEM_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SALARY_ID` int(5) UNIQUE NOT NULL,
  `EMPLOYEE_ID` int(7) NOT NULL,
  `POSITION_ID` int(3) NOT NULL,
  PRIMARY KEY (`SALARY_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ORDER_ID` int(10) UNIQUE NOT NULL,
  `EMPLOYEE_ID` int(7) NOT NULL,
  `ITEM_ID` int(3) NOT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workhour`
--

CREATE TABLE `workhour` (
  `WORKHOUR_ID` int(10) UNIQUE NOT NULL,
  `EMPLOYEE_ID` int(7) NOT NULL,
  `WORKHOUR` int(2) DEFAULT NULL,
  PRIMARY KEY (`WORKHOUR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;