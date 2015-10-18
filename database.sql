
--
-- Δομή Πίνακα `CompanyProfile`
--

CREATE TABLE IF NOT EXISTS `CompanyProfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` text NOT NULL,
  `webpage` text NOT NULL,
  `about` text NOT NULL,
  `photourl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Άδειασμα δεδομένων του πίνακα `CompanyProfile`
--

INSERT INTO `CompanyProfile` (`id`, `name`, `email`, `mobile`, `address`, `webpage`, `about`, `photourl`) VALUES
(1, 'Caspis Astoria', 'caspis@b.com', 2811, 'liberty', 'l.com', '5 starts', 'img.jpg'),
(3, 'InnovAthens', 'innov@thens.com', 2100000, 'Gkazi', 'innov', 'Techopolis', 'i.img'),
(4, 'Hilton', 'hilton@thens.com', 2100000, 'Athens', 'good', 'bad', 'ffi.img'),
(5, 'Caravel', 'caravel@thens.com', 2100000, 'Athens', 'super', 'bad', 'ffi.img');

-- --------------------------------------------------------

--
-- Δομή Πίνακα  `LuggageItemCategory`
--

CREATE TABLE IF NOT EXISTS `LuggageItemCategory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 
--

INSERT INTO `LuggageItemCategory` (`id`, `name`) VALUES
(1, 'essentials'),
(2, 'woman'),
(3, 'man'),
(4, 'child'),
(5, 'seasonal');

-- --------------------------------------------------------

--
-- Δομή Πίνακα  `LuggageItems`
--

CREATE TABLE IF NOT EXISTS `LuggageItems` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 
--

INSERT INTO `LuggageItems` (`id`, `name`, `category_id`, `weight`) VALUES
(1, 'teethbrush', 1, 0),
(2, 'Jacket', 5, 6);

-- --------------------------------------------------------

--
-- Δομή Πίνακα `LuggageType`
--

CREATE TABLE IF NOT EXISTS `LuggageType` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 
--

INSERT INTO `LuggageType` (`id`, `type`) VALUES
(1, 'Travel Small'),
(2, 'Travel medium');

-- --------------------------------------------------------

--
-- Δομή Πίνακα `Place`
--

CREATE TABLE IF NOT EXISTS `Place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `descrition` int(11) NOT NULL,
  `webpage` int(11) NOT NULL,
  `nightlife` int(11) NOT NULL,
  `calmingness` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `nigthlife` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Δομή Πίνακα `ROUTES`
--

CREATE TABLE IF NOT EXISTS `ROUTES` (
  `from` text NOT NULL,
  `from_time` datetime NOT NULL,
  `to` text NOT NULL,
  `to_time` datetime NOT NULL,
  `TransportWay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή Πίνακα  `UserProfile`
--

CREATE TABLE IF NOT EXISTS `UserProfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 
--

INSERT INTO `UserProfile` (`id`, `name`, `email`) VALUES
(1, 'Alex', 'alex@alex.com'),
(2, 'Vicky', 'vicky@bz.com'),
(3, 'Maria', 'maria@bz.com'),
(4, 'Apollo', 'apollo@bz.com'),
(5, 'Kyriaki', 'Kyriaki@bz.com');
