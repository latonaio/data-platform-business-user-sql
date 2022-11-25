CREATE TABLE `data_platform_business_user_business_user_data`
(
    `BusinessPartner`          int(12) NOT NULL,
    `BusinessUser`             int(12) NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `BusinessUserFirstName`    varchar(100) DEFAULT NULL,
    `BusinessUserLastName`     varchar(100) DEFAULT NULL,
    `BusinessUserFullName`     varchar(100) DEFAULT NULL,
    `Language`                 varchar(2) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `BusinessUser`, `ValidityEndDate`, `ValidityStartDate`),
    
    CONSTRAINT `DPFMBusinessUserBusinessUserDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_user_business_partner_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessUserBusinessUserDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
