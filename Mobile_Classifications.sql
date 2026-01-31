CREATE DATABASE Mobile_Classification;
USE Mobile_Classification;
CREATE TABLE mobile_train (
    battery_power INT,
    blue TINYINT,
    clock_speed FLOAT,
    dual_sim TINYINT,
    fc INT,
    four_g TINYINT,
    int_memory INT,
    m_dep FLOAT,
    mobile_wt INT,
    n_cores INT,
    pc INT,
    px_height INT,
    px_width INT,
    ram INT,
    sc_h INT,
    sc_w INT,
    talk_time INT,
    three_g TINYINT,
    touch_screen TINYINT,
    wifi TINYINT,
    price_range INT
);
CREATE TABLE mobile_test (
    id INT,
    battery_power INT,
    blue TINYINT,
    clock_speed FLOAT,
    dual_sim TINYINT,
    fc INT,
    four_g TINYINT,
    int_memory INT,
    m_dep FLOAT,
    mobile_wt INT,
    n_cores INT,
    pc INT,
    px_height INT,
    px_width INT,
    ram INT,
    sc_h INT,
    sc_w INT,
    talk_time INT,
    three_g TINYINT,
    touch_screen TINYINT,
    wifi TINYINT
);
SELECT * FROM mobile_train;
SELECT * FROM mobile_test;
SELECT COUNT(*) FROM mobile_train;
SELECT COUNT(*) FROM mobile_test;

