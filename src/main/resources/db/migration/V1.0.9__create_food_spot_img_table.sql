CREATE TABLE FOOD_SPOT_IMG
(
    SPOT_IMG_NO BIGINT PRIMARY KEY AUTO_INCREMENT,
    FOOD_SPOT_NO BIGINT NULL,
    SPOT_IMG VARCHAR(255) NULL,
    STATUS VARCHAR(255) NULL,
    CREATE_AT TIMESTAMP NULL,
    UPDATE_AT TIMESTAMP NULL,
    FOREIGN KEY (FOOD_SPOT_NO) REFERENCES FOOD_SPOT (FOOD_SPOT_NO)

);