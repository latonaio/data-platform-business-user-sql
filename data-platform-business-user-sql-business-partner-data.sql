CREATE TABLE `data_platform_business_user_business_partner_data`
(
    `BusinessPartner`          int(12) NOT NULL,
    `ValidityEndDate`          date NOT NULL,
    `ValidityStartDate`        date NOT NULL,
    `BusinessPartnerName`      varchar(100) DEFAULT NULL,
    `BusinessPartnerFullName`  varchar(200) DEFAULT NULL,
    `Language`                 varchar(2) DEFAULT NULL,
  
    PRIMARY KEY (`BusinessPartner`, `ValidityEndDate`, `ValidityStartDate`),
    
    CONSTRAINT `DPFMBusinessUserBusinessUserDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessUserBusinessUserDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
