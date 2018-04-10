

CREATE TABLE IF NOT EXISTS `business` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `business_category` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `lat` text NOT NULL,
  `lang` text NOT NULL,
  `google_places_id` text NOT NULL,
  `facebook_places_id` text NOT NULL,
  `foursquare_places_id` text NOT NULL,
  `logo_url` text NOT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `couponid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `coupon_type` int(11) NOT NULL,
  `lat` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `creation_datetime` datetime NOT NULL,
  `expiry_date_time` datetime NOT NULL,
  `logo_image` text NOT NULL,
  `banner_image` text NOT NULL,
  `terms_conditions` text NOT NULL,
  `status` enum('yes','no') NOT NULL,
  PRIMARY KEY (`couponid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` enum('yes','no') NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
