CREATE TABLE `applications` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(253) COLLATE utf8_unicode_ci NOT NULL,
  `community` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`device_id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `interfaces` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `ifindex` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operstatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ipaddresses` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `ifindex` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcastaddr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ipnettomedias` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `ifindex` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `iproutes` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `dest` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifindex` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metric` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nexthop` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mask` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `processes` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `process_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memory` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `processors` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `cpu_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu_load` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `snaps` (
  `snap_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`snap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `storages` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `storage_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizeingb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usedingb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usedpercent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `systems` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uptime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numusers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxprocesses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tcpconns` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `localaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localport` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remport` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `udpconns` (
  `snap_id` int(11) unsigned NOT NULL,
  `device_id` int(11) NOT NULL,
  `localaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localport` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

