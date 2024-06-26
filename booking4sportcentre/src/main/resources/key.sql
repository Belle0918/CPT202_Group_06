Use sport_centre;
-- 首先为 user_info 表添加一个 wallet_id 列
/*ALTER TABLE user_info
    ADD COLUMN wallet_id bigint;*/
/*
-- 然后创建一个外键关系，将 user_info 表的 wallet_id 列与 wallet_info 表的 id 列关联
ALTER TABLE user_info
    ADD FOREIGN KEY (wallet_id) REFERENCES wallet_info(id);
*/
-- 需要为 booking_info 表添加一个 user_id 列和一个 activity_id 列
ALTER TABLE booking_info
    ADD COLUMN user_id int,
    ADD COLUMN activity_id int;

-- 然后创建外键关系
ALTER TABLE booking_info
    ADD FOREIGN KEY (user_id) REFERENCES user_info(id),
    ADD FOREIGN KEY (activity_id) REFERENCES sport_activity(id);

-- 为 sport_activity 表添加一个 coach_id 列
ALTER TABLE sport_activity
    ADD COLUMN coach_id int;

-- 然后创建一个外键关系，将 sport_activity 表的 coach_id 列与 coach_info 表的 id 列关联
ALTER TABLE sport_activity
    ADD FOREIGN KEY (coach_id) REFERENCES coach_info(id);

-- 为 coupon_info 表添加一个 user_id 列
ALTER TABLE coupon_info
    ADD COLUMN user_id int;

-- 然后创建一个外键关系，将 coupon_info 表的 user_id 列与 user_info 表的 id 列关联
ALTER TABLE coupon_info
    ADD FOREIGN KEY (user_id) REFERENCES user_info(id);

/*ALTER TABLE wallet_info
    ADD COLUMN user_id int;
ALTER TABLE wallet_info
    ADD FOREIGN KEY (user_id) REFERENCES user_info(id);
*/
/*CREATE TABLE booking_info (
                              id BIGINT AUTO_INCREMENT PRIMARY KEY,
                              user_name VARCHAR(255),
                              user_id INT,
                              date DATE,
                              start_time TIME,
                              end_time TIME,
                              venue VARCHAR(255),
                              status VARCHAR(255),
                              act_name VARCHAR(255),
                              price DOUBLE
);*/