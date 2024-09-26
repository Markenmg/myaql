CREATE TABLE `worker`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL
);
CREATE TABLE `horse`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL,
    `birthdate` BIGINT NOT NULL,
    `owner` BIGINT NOT NULL,
    `stable` BIGINT NOT NULL
);
CREATE TABLE `food`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `food` BIGINT NOT NULL,
    `name` BIGINT NOT NULL
);
CREATE TABLE `info`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL,
    `aadress` BIGINT NOT NULL,
    `telefon` BIGINT NOT NULL
);
CREATE TABLE `owner`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL
);
CREATE TABLE `stable`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL
);
CREATE TABLE `history`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` BIGINT NOT NULL,
    `history` BIGINT NOT NULL
);
ALTER TABLE
    `horse` ADD CONSTRAINT `horse_name_foreign` FOREIGN KEY(`name`) REFERENCES `history`(`history`);
ALTER TABLE
    `horse` ADD CONSTRAINT `horse_name_foreign` FOREIGN KEY(`name`) REFERENCES `food`(`food`);
ALTER TABLE
    `info` ADD CONSTRAINT `info_name_foreign` FOREIGN KEY(`name`) REFERENCES `owner`(`name`);
ALTER TABLE
    `worker` ADD CONSTRAINT `worker_id_foreign` FOREIGN KEY(`id`) REFERENCES `stable`(`id`);
ALTER TABLE
    `stable` ADD CONSTRAINT `stable_name_foreign` FOREIGN KEY(`name`) REFERENCES `horse`(`stable`);
ALTER TABLE
    `horse` ADD CONSTRAINT `horse_owner_foreign` FOREIGN KEY(`owner`) REFERENCES `owner`(`name`);