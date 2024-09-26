CREATE TABLE LIKE_RECIPE
(
    LIKE_RECIPE_NO BIGINT PRIMARY KEY AUTO_INCREMENT,
    RECIPE_NO BIGINT NULL,
    MEMBER_NO BINARY(16) NULL,
    STATUS VARCHAR(255) NULL,
    CREATE_AT TIMESTAMP NULL,
    UPDATE_AT TIMESTAMP NULL,
    FOREIGN KEY (RECIPE_NO) REFERENCES RECIPE (RECIPE_NO),
    FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO)

);