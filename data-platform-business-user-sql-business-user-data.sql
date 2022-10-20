CREATE TABLE `data_platform_business_user_business_user_data`
(
  `BusinessPartner`          int(10) NOT NULL,
  `ValidityEndDate`          varchar(80) NOT NULL,
  `ValidityStartDate`        varchar(80) DEFAULT NULL,
  `BusinessPartnerFullName`  varchar(200) DEFAULT NULL,
  `BusinessPartnerName`      varchar(100) DEFAULT NULL,
  `BusinessUserFirstName`    varchar(100) DEFAULT NULL,
  `BusinessUserLastName`     varchar(100) DEFAULT NULL,
  `Language`                 varchar(2) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `ValidityEndDate`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
