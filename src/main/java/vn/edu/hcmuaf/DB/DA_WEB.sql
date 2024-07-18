DROP DATABASE DA_WEB;
CREATE DATABASE DA_WEB;
USE DA_WEB;

-- Premiumsoft Navicat for MYSQL
-- version 16.3
-- https://www.navicat.com/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 01, 2023 lúc 03:37 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARAda_webda_webCTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- cơ sở dữ liệu cho tournerst
--

-- Tạo bảng`News`
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `date` date NOT NULL,
                        `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
                        `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `newsLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`roles`
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Feedbacks`
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `userId` int(11) NOT NULL,
                             `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
                             `date` date NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Discounts`
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                             `value` int(11) NOT NULL,
                             `endDate` date NOT NULL,
                             `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*--------------------------------------------------------*/
-- Tạo bảng`Tours`
DROP TABLE IF EXISTS `tours`;
CREATE TABLE `tours` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `region` varchar(255) NOT NULL,
                         `discountId` int(11) DEFAULT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `price` int(11) NOT NULL,
                         `startTime` varchar(255) NOT NULL,
                         `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `schedule` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `quantity` int(11) NOT NULL,
                         `status` varchar(255) NOT NULL ,
                         KEY `fk_discount_id` (`discountId`),
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*-------------------------------------------------------------------*/
-- Tạo bảng`Users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `roleId` int(11) DEFAULT 2,
                         PRIMARY KEY (`id`),
                         KEY `fk_role_id` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`service_tours`
DROP TABLE IF EXISTS `service_tours`;
CREATE TABLE `service_tours` (
                                 `id` INT NOT NULL AUTO_INCREMENT,
                                 `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `price` FLOAT NOT NULL,
                                 `description` TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Booking`
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `userId` int(11) NOT NULL,
                           `dateBooking` varchar(255) NOT NULL,
                           `tourId` int(11) NOT NULL,
                           `numChildren` int(11) NOT NULL,
                           `numAdult` int(11) NOT NULL,
                           `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `phone`  VARCHAR(255) NOT NULL,
                           `email` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `dateStart` varchar(255) NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_userbk_id` (`userId`),
                           KEY `fk_tourbk_id` (`tourId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_UNICODE_CI;

/*------------------------------------------------------------------*/
-- Tạo bảng`Options`
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `departDate` date NOT NULL,
                           `serviceId` int(11) NOT NULL,
                           `valiId` int(11) NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_serviceId` (`serviceId`),
                           KEY `fk_valiId` (`valiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Customer`
CREATE TABLE `customer` (
                            `id` int(11) NOT NULL AUTO_INCREMENT,
                            `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `male` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `dateOfBirth` varchar(255) NOT NULL,
                            `billId` int(11) NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `fk_billId` (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Bills`
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `bookingId` int(11) NOT NULL,
                         `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `totalPrice` int(11) NOT NULL,
                         `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `noteBill` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `fk_Booking_Id` (`bookingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng`Valies`
DROP TABLE IF EXISTS `valies`;
CREATE TABLE `valies` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `userId` int(11) NOT NULL,
                          `tourId` int(11) NOT NULL,
                          `numChildren` int(11) NOT NULL,
                          `numAdult` int(11) NOT NULL,
                          PRIMARY KEY (`id`),
                          KEY `fk_user_id` (`userId`),
                          KEY `fk_tour_id` (`tourId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
-- Tạo bảng `HistoryBill`
DROP TABLE IF EXISTS `historyBill`;
CREATE TABLE `historyBill` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `billId` int(11) NOT NULL,
                               `title` VARCHAR(255) NOT NULL ,
                               `changeDate` datetime NOT NULL,
                               `beforeValue` varchar(255) NOT NULL,
                               `currentValue` varchar(255) NOT NULL,
                               PRIMARY KEY (`id`),
                               KEY `fk_history_bill_id` (`billId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/
CREATE TABLE `logs` (
                        `id` INT NOT NULL AUTO_INCREMENT,
                        `level` INT NOT NULL,
                        `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `userId` int(11) NOT NULL,
                        `ipAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `createAt` TIMESTAMP,
                        `beforeValue` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `currentValue` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*------------------------------------------------------------------*/

-- -
-- Các ràng buộc cho bảng `feedbacks`
ALTER TABLE `historyBill`
    ADD CONSTRAINT `fk_history_bill_id` FOREIGN KEY (`billId`) REFERENCES `bills` (`id`) ON DELETE CASCADE;


-- Các ràng buộc cho bảng `feedbacks`
ALTER TABLE `feedbacks`
    ADD CONSTRAINT `fk_userId_feedbacks` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `users`
ALTER TABLE `users`
    ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `valies`
ALTER TABLE `Booking`
    ADD CONSTRAINT `fk_userbk_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `fk_tourbk_id` FOREIGN KEY (`tourId`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `options`
ALTER TABLE `options`
    ADD CONSTRAINT `fk_serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service_tours` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `fk_valiId` FOREIGN KEY (`valiId`) REFERENCES `valies` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `bills`
ALTER TABLE `bills`
    ADD CONSTRAINT `fk_Booking_Id` FOREIGN KEY (`bookingId`) REFERENCES `booking` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `tours`
ALTER TABLE `tours`
    ADD CONSTRAINT `fk_discount_id` FOREIGN KEY (`discountId`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

-- Các ràng buộc cho bảng `customer`
ALTER TABLE `customer`
    ADD CONSTRAINT `fk_billId` FOREIGN KEY (`billId`) REFERENCES `bills` (`id`) ON DELETE CASCADE;


-- Các ràng buộc cho bảng `valies`
ALTER TABLE `valies`
    ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `fk_tour_id` FOREIGN KEY (`tourId`) REFERENCES `tours` (`id`) ON DELETE CASCADE;


-- -------------------------------------------------------------------------------------------------------
-- Tạo dữ liệu cho bảng news
INSERT INTO `news` (`title`, `date`, `content`, `image`, `newsLink`)
VALUES
    ('Các tour du lịch nghỉ dưỡng biển được ưu tiên.', '2023-11-01', 'Với thời tiết mát mẻ, dễ chịu, các tour du lịch nghỉ dưỡng biển được nhiều du khách ưu tiên lựa chọn trong tháng 11 năm 2023. Các điểm du lịch biển nổi tiếng như Nha Trang,  Vũng Tàu,  Phú Quốc,  Đà Nẵng,... đều có lượng khách tăng cao trong tháng này.', '14.jpg', 'https://vinpearl.com/vi/du-lich-bien-diem-danh-10-bai-bien-dep-bac-nhat-viet-nam'),
    ('Các tour du lịch miền Tây Nam Bộ được nhiều du khách lựa chọn.', '2023-11-01', 'Là một trong những điểm đến du lịch nổi tiếng của Việt Nam, với những cảnh đẹp sông nước, những món ăn ngon đặc sản và con người thân thiện. Du lịch miền Tây được nhiều du khách lựa chọn, đặc biệt là các tour khám phá rừng tràm Trà Sư, Chợ nổi Cái Răng,...', '70.jpg', 'https://vinpearl.com/vi/tron-bo-kinh-nghiem-du-lich-mien-tay-nam-bo-day-du-nhat'),
    ('Lượng khách du lịch trong nước tăng mạnh.', '2023-11-01', 'Theo số liệu thống kê của Tổng cục Du lịch, lượng khách du lịch nội địa trong tháng 11 năm 2023 đạt 7,5 triệu lượt, tăng 20% so với cùng kỳ năm trước. Trong đó, khách nội địa đến các điểm du lịch biển, đảo tăng mạnh, đặc biệt là Nha Trang, Phú Quốc, Đà Nẵng,...', 'b1.jpg', 'https://www.gso.gov.vn/du-lieu-va-so-lieu-thong-ke/2023/08/doanh-thu-dich-vu-tang-manh-trong-mua-cao-diem-du-lich-he-2023/');

-- Tạo dữ liệu cho bảng roles
INSERT INTO `roles` (`right`, `description`)
VALUES
    ('Admin', 'Administrator role'),
    ('User', 'Regular user role'),
    ('Staff', 'Staff user role');

-- Tạo dữ liệu cho bảng users
INSERT INTO `users` (`userName`, `email`, `password`, `phoneNumber`, `address`, `roleId`)
VALUES
    ('thinh', '21130549@st.hcmuaf.edu.vn', 'vyjPnQeKRcO1ko+Wa2Z7RoDGGjE=', '84987654321', 'Address 2', 1),
    ('vu', '21130615@st.hcmuaf.edu.vn', 'vyjPnQeKRcO1ko+Wa2Z7RoDGGjE=', '8498765431', 'Address 2', 1),
    ('thuc', '21130558@st.hcmuaf.edu.vn', 'vyjPnQeKRcO1ko+Wa2Z7RoDGGjE=', '8498765431', 'Address 2', 1);

-- Tạo dữ liệu cho bảng feedbacks
INSERT INTO `feedbacks` (`userId`, `text`, `date`)
VALUES
    (1, 'Chuyến tour này mang lại cho tôi một giá trị tuyệt vời. Với mức giá mà tôi trả, tôi thực sự cảm thấy hài lòng về những gì chúng tôi nhận được.', '2023-01-05'),
    (2, 'Tôi rất hài lòng với chuyến tour này và sẽ khuyên bạn bè và người thân tham gia. Tôi muốn cảm ơn đội ngũ tổ chức tour đã tạo ra một kỷ niệm đáng nhớ.', '2023-01-10'),
    (3, 'Tôi không thể hài lòng hơn với chuyến tour này. Từ đầu đến cuối, mọi thứ đều vượt quá mong đợi của tôi. Tôi đã có một trải nghiệm tuyệt vời và không thể quên. ', '2023-02-15'),
    (1, 'Hướng dẫn viên của chúng tôi là người tuyệt vời. Anh ấy không chỉ am hiểu về địa điểm mà còn rất nhiệt tình và cởi mở. Tôi rất thích chuyến đi.', '2023-03-20'),
    (2, 'Các địa điểm du lịch mà chúng tôi đã thăm đều rất độc đáo và đẹp mắt. Tôi đã có cơ hội khám phá những di sản văn hóa và thiên nhiên tuyệt vời.', '2023-04-25'),
    (3, 'Chất lượng dịch vụ trong chuyến tour này rất ấn tượng. Từ các nhà hàng đến chỗ ở và phương tiện di chuyển, mọi thứ đều rất chuyên nghiệp và đáng tin cậy.', '2023-05-30'),
    (1, 'Mặc dù chuyến tour tổ chức tốt. Tuy nhiên, việc cung cấp thêm thông tin chi tiết về các hoạt động tùy chọn sẽ giúp khách hàng lựa chọn tốt hơn.', '2023-06-05'),
    (2, 'Tôi rất hài lòng với cách mà công ty tổ chức tour du lịch này đã liên lạc và giao tiếp với khách hàng. Điều này tạo ra sự tin tưởng cho chúng tôi trong suốt chuyến đi.', '2023-07-12');

-- Tạo dữ liệu cho bảng discounts
INSERT INTO `discounts` (`type`, `value`, `endDate`, `description`)
VALUES
    ('normal', 1, '2023-12-31', 'normal tours'),
    ('summer20', 0.8, '2024-06-30', 'summer 20% off tours'),
    ('earlybird', 0.85, '2024-02-28', 'early bird discount tours'),
    ('sale15', 0.85, '2024-03-15', 'sale 15% price tours'),
    ('sale20', 0.8, '2024-04-30', 'sale 20% price tours'),
    ('flashsale25', 0.75, '2024-02-15', 'flash sale 25% price tours'),
    ('weekenddiscount15', 0.85, '2024-03-10', 'weekend discount 15% price tours'),
    ('specialsale30', 0.7, '2024-05-31', 'special sale 30% price tours'),
    ('holidaypromo25', 0.75, '2024-12-25', 'holiday promo 25% price tours'),
    ('weekendgetaway20', 0.8, '2024-06-30', 'weekend getaway 20% price tours'),
    ('sale10', 0.9, '2023-12-31', 'sale 10% price tours');


SET @current_date = CURDATE();
SET @random_days = FLOOR(RAND() * 15) + 1;
SET @start_time = DATE_ADD(@current_date, INTERVAL @random_days DAY);

-- Tạo dữ liệu cho bảng tours
INSERT INTO `tours` (`region`, `discountId`, `name`, `image`, `price`, `startTime`, `duration`, `schedule`, `description`,`quantity`,`status`)
VALUES
    ('Miền Nam', 1, 'Cần Thơ - Châu Đốc', '1.jpg', 3990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Cần Thơ - Ngày 2: Châu Đốc - Ngày 3: Châu Đốc và về lại Cần Thơ'
    ,'Chuyến đi từ Cần Thơ đến Châu Đốc là một hành trình tuyệt vời để khám phá vẻ đẹp và văn hóa của miền Tây Nam Bộ. Bạn sẽ bắt đầu hành trình từ Cần Thơ, nơi bạn sẽ thăm vườn cây trái Cái Răng và trải nghiệm hương vị tươi ngon của trái cây địa phương. Bạn cũng sẽ có cơ hội thăm Bảo tàng Mỹ thuật Cần Thơ và chiêm ngưỡng các tác phẩm nghệ thuật độc đáo.
	Sau đó, bạn sẽ di chuyển đến Châu Đốc, nơi bạn sẽ khám phá chùa Sam và đền Bà Chúa Xứ Núi Sam. Hai địa điểm này mang đến không chỉ kiến trúc độc đáo mà còn phong cảnh tuyệt đẹp. Bạn cũng sẽcó cơ hội tắm biển và thư giãn tại Khu du lịch biển Tây Đô, nơi có không gian biển xanh mát.
	Trên đường trở về Cần Thơ, bạn sẽ ghé thăm Chợ nổi Châu Đốc để khám phá và mua sắm các loại hàng hóa địa phương, đặc biệt là những món thủ công mỹ nghệ độc đáo. Bên cạnh đó, bạn cũng sẽ tham quan rừng tràm Trà Sư, một khu rừng tràm rừng ngập nổi tiếng với động vật hoang dã và cảnh quan thiên nhiên đẹp mắt.
	Chuyến đi kết thúc khi bạn trở về Cần Thơ. Chuyến đi từ Cần Thơ đến Châu Đốc sẽ mang đến cho bạn những trải nghiệm tuyệt vời về văn hóa, thiên nhiên và cảnh quan của miền Tây Nam Bộ Việt Nam.',50,'display'),
    ('Miền Nam', 1, 'Tp. Hồ Chí Minh - Phú Quốc', '2.jpg', 4190000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Khám phá bãi biển và thưởng thức ẩm thực địa phương - Ngày 2: Khám phá vườn quốc gia và làng chài - Ngày 3: Thư giãn và tận hưởng bãi biển', 'Chuyến đi du lịch đến Phú Quốc là một trải nghiệm tuyệt vời để khám phá vẻ đẹp tự nhiên và văn hóa độc đáo của hòn đảo này. Phú Quốc nổi tiếng với các bãi biển tuyệt đẹp, cát trắng mịn và nước biển trong xanh. Du khách có thể thả mình trong làn nước biển mát lạnh, tắm nắng trên bãi cát và tham gia các hoạt động thể thao nước như lướt ván buồm, lặn biển hoặc câu cá.
	Bên cạnh việc khám phá bãi biển, bạn cũng có thể tham quan các điểm du lịch khác trên đảo. Vườn quốc gia Phú Quốc là một điểm đến hấp dẫn cho việc khám phá thiên nhiên hoang dã, với rừng nhiệt đới, thác nước và động vật đa dạng. Bạn có thể dạo bước qua rừng, ngắm cảnh tuyệt đẹp và tận hưởng không gian yên tĩnh của vườn quốc gia.
	Ngoài ra, bạn có thể tham quan các làng chài trên đảo để tìm hiểu về cuộc sống của người dân địa phương và thưởng thức các món ăn đặc sản hải sản tươi ngon. Nếu bạn quan tâm đến văn hóa địa phương, hãy ghé thăm thị trấn Dương Đông để khám phá chợ đêm đầy sầm uất, nơi bạn có thể mua sắm các sản phẩm đặc sản và thưởng thức ẩm thực đường phố.
	Trên đảo, còn có nhiều hoạt động giải trí khác như tham quan các trang trại nuôi dừa và sản xuất nước mắm truyền thống, tham gia tour câu cá hoặc tham quan các khu vườn trái cây.
	Dù bạn muốn thư giãn trên bãi biển, khám phá thiên nhiên hoang dã hay tìm hiểu văn hóa địa phương, chuyến đi đến Phú Quốc sẽ mang đến cho bạn những trải nghiệm đáng nhớ và thú vị.',50,'display'),
    ('Miền Nam', 1, 'Cần Thơ - Cồn Sơn - Cồn Ấu', '3.jpg', 5390000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Cần Thơ / Khám phá thành phố và thưởng thức ẩm thực địa phương - Ngày 2: Cồn Sơn - Ngày 3: Cồn Ấu - Ngày 4: Cần Thơ / Tham quan cuối cùng và kết thúc chuyến đi', 'Tour Cần Thơ - Cồn Sơn - Cồn Ấu là một hành trình thú vị để khám phá vẻ đẹp thiên nhiên và văn hóa đặc trưng của miền Tây Nam Bộ Việt Nam. Trong tour này, bạn sẽ được tận hưởng không khí yên bình của sông nước, trải nghiệm cuộc sống đồng bằng và khám phá các đảo nhỏ.
	Chuyến đi bắt đầu tại thành phố Cần Thơ, một trong những thành phố lớn nhất miền Tây Nam Bộ. Bạn có thể khám phá khu phố cổ Cần Thơ, bao gồm Bến Ninh Kiều và chợ nổi Cái Răng, nơi bạn có thể tham quan và mua sắm các sản phẩm địa phương như hoa quả, rau củ, thủ công mỹ nghệ và đặc sản.
	Tiếp theo, bạn sẽ đi đến Cồn Sơn, một hòn đảo nhỏ nằm trên sông Hậu. Tại đây, bạn có thể tham gia các hoạt động như đi bộ, đi xe đạp hoặc đi thuyền để khám phá cánh đồng lúa, vườn trái cây và trò chuyện với người dân địa phương. Bạn cũng có thể thưởng thức ẩm thực địa phương tại một nhà hàng trên Cồn Sơn.
	Sau đó, bạn sẽ tiếp tục chuyến đi đến Cồn Ấu, một hòn đảo khác trên sông Hậu. Tại đây, bạn có thể tham quan các làng nghề truyền thống như làng chài, làng nón và làng thủ công mỹ nghệ. Bạn sẽ được tìm hiểu quy trình sản xuất và tham gia vào các hoạt động như câu cá, đi thuyền kayak hoặc tham gia các trò chơi dân gian.
	Trong suốt chuyến đi, bạn sẽ được tận hưởng không gian yên bình, ngắm cảnh sông nước và thưởng thức ẩm thực đặc sản của khu vực. Bạn cũng có cơ hội giao lưu với người dân địa phương, tìm hiểu văn hóa và truyền thống của miền Tây Nam Bộ Việt Nam.
	Tour Cần Thơ - Cồn Sơn - Cồn Ấu sẽ mang đến cho bạn những trải nghiệm đáng nhớ và tạo ra những kỷ niệm đáng giá trong hành trình khám phá miền Tây Nam Bộ Việt Nam.',50,'display'),
    ('Miền Nam', 1, 'Mỹ Tho - Bến Tre', '4.jpg', 2890000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Rời khỏi thành phố Hồ Chí Minh và đi đến Mỹ Tho - Ngày 2: Tham quan và trở về TP.Hồ Chí Minh', 'Mỹ Tho và Bến Tre là hai điểm đến nổi tiếng ở miền Nam Việt Nam, nằm trong vùng đồng bằng sông nước. Cả hai địa điểm đều có những cảnh quan tuyệt đẹp, văn hóa đa dạng và ẩm thực đặc trưng.
	Mỹ Tho là thành phố lớn nhất và là cửa ngõ chính vào vùng Đồng Bằng Sông Cửu Long. Thành phố này có vị trí thuận lợi, nằm ven sông Tiền, một nhánh của sông Mekong. Mỹ Tho nổi tiếng với những cánh đồng xanh mướt, những con kênh nước chảy rất đẹp và những ngôi chùa cổ xưa. Du khách có thể đi thuyền trên sông Mỹ Tho để khám phá các làng nghề truyền thống như làng chèo, làng gốm sứ, làng bánh tẻ và làng mứt trái cây. Ngoài ra, bạn cũng có thể tham quan các điểm du lịch như cầu Rạch Miễu, quảng trường Ba Láng và chùa Vĩnh Tràng.
	Bến Tre là một tỉnh lân cận của Mỹ Tho, nằm ở phía đông của sông Tiền. Tỉnh này nổi tiếng với những cánh đồng dừa xanh mướt và hệ thống kênh rạch phong phú. Bến Tre được gọi là "xứ sở dừa" của Việt Nam. Du khách có thể tham quan vườn cây trái và trải nghiệm hái trái cây tươi ngon. Tham gia tour thuyền trên sông Bến Tre, bạn sẽ được chiêm ngưỡng cảnh quan vùng đồng bằng sông nước tuyệt đẹp, đi qua các kênh rừng trúc và ngôi nhà cổ. Ngoài ra, bạn cũng có thể tham quan các ngôi đền và chùa nổi tiếng như chùa Từ Tôn, ngôi đền Phú Hữu và đền Cao Văn Lầu.
	Cả Mỹ Tho và Bến Tre đều có ẩm thực phong phú và đặc trưng miền Nam. Bạn có thể thưởng thức các món ăn địa phương như cá lóc kho tộ, lẩu cá linh, bánh xèo, bánh tét, và các món chè trái cây tươi ngon.
	Mỹ Tho và Bến Tre mang đến cho du khách một trải nghiệm đầy thú vị về vẻ đẹp thiên nhiên, văn hóa và ẩm thực miền Nam Việt Nam.',50,'display'),
    ('Miền Nam', 1, 'Củ Chi - Địa đạo', '5.jpg', 7990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Bạn bắt đầu từ thành phố Hồ Chí Minh và di chuyển đến Củ Chi - Ngày 2: Trở về thành phố Hồ Chí Minh và kết thúc chuyến đi.', 'Tour Củ Chi - Địa đạo Củ Chi 2 ngày là một chuyến hành trình để khám phá và tìm hiểu về Di sản Thế giới UNESCO - hệ thống địa đạo Củ Chi, nằm cách thành phố Hồ Chí Minh khoảng 70 km về phía tây.
	Trong tour này, bạn sẽ có cơ hội khám phá một phần lịch sử quan trọng của Việt Nam và trải nghiệm cuộc sống trong địa đạo Củ Chi. Bạn sẽ được hướng dẫn bởi những người địa phương am hiểu về khu vực này và nghe các câu chuyện thú vị về cuộc sống và chiến đấu của người dân Củ Chi trong thời kỳ chiến tranh.
	Trong ngày đầu tiên, bạn sẽ tham quan Khu du lịch Lịch sử Địa đạo Củ Chi. Bạn sẽ được dạo quanh trong các hầm địa đạo, khám phá các căn cứ, hầm vũ khí và nghe câu chuyện về sự khắc nghiệt và thông minh trong việc sử dụng địa đạo trong chiến tranh.
	Ngày thứ hai, bạn có thể tham gia vào các hoạt động khác nhau như bắn súng thực tế tại bắn tỉa Củ Chi hoặc trải nghiệm cuộc sống nông thôn tại một số nông trại gần Củ Chi. Điều này sẽ cho bạn cái nhìn sâu hơn về cuộc sống và công việc hàng ngày của người dân nông thôn.
	Tour cũng bao gồm thưởng thức các món ăn địa phương ngon lành, cho phép bạn khám phá ẩm thực đặc trưng của khu vực.
	Sau hai ngày trải nghiệm, bạn sẽ trở lại thành phố Hồ Chí Minh với những kỷ niệm và kiến thức mới về lịch sử và văn hóa đặc biệt của Củ Chi',50,'display'),
    ('Miền Nam', 1, 'Tây Ninh - Núi Bà Đen', '6.jpg', 5390000,@start_time, '3 ngày 2 đêm', 'Ngày 1:Rời khỏi thành phố Hồ Chí Minh và đi đến Tây Ninh - Ngày 2:Rời khỏi khách sạn và đi đến Núi Bà Đen - Ngày 3:Tham quan Thị Trấn Củ Chi và khám phá hệ thống địa đạo Củ Chi', 'Chuyến đi Tây Ninh - Núi Bà Đen là một hành trình thú vị để khám phá văn hóa, tôn giáo và thiên nhiên của khu vực miền Nam Việt Nam.
	Điểm đến đầu tiên là Tây Ninh, nơi có Đền Cao Đài - trụ sở chính của Đạo Cao Đài, một tôn giáo độc đáo kết hợp yếu tố từ các tôn giáo khác nhau. Du khách có thể tham quan và tìm hiểu về tôn giáo này thông qua lễ nghi và kiến trúc đặc trưng của đền.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Mộc Hóa', '3.jpg', 6790000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đến Đồng Tháp - Ngày 2: Khám phá Đồng Tháp - Ngày 3: Đi Mộc Hóa - Ngày 4: Trở về thành phố Hồ Chí Minh', 'Tour Đồng Tháp - Mộc Hóa là chuyến hành trình để khám phá hai điểm đến hấp dẫn ở miền Nam Việt Nam.',50,'display'),
    ('Miền Nam', 1, 'Long An - Bến Lức', '8.jpg', 2790000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Rời khỏi thành phố Hồ Chí Minh và đi đến Long An. - Ngày 2: Ăn sáng tại khách sạn và chuẩn bị rời khỏi Long An.', 'Chuyến đi Long An - Bến Lức là một hành trình để khám phá vẻ đẹp tự nhiên, văn hóa và ẩm thực của vùng Đồng Bằng Sông Cửu Long.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Cai Lậy', '9.jpg', 3590000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Đến Tiền Giang - Ngày 2: Khám phá Cái Lậy - Ngày 3: Trở về thành phố Hồ Chí Minh', 'Tour Tiền Giang - Cái Lậy là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. ',50,'display'),
    ('Miền Nam', 1, 'Bình Dương - Suối Tiên', '10.jpg', 4490000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Buổi sáng: Rời khỏi thành phố Hồ Chí Minh và đến Bình Dương - Ngày 2: Buổi sáng: Tham quan Khu du lịch Suối Tiên ở thành phố Hồ Chí Minh - Ngày 3: Buổi sáng: Tham quan Khu du lịch Đại Nam Văn Hiến - Ngày 4: Trở về thành phố Hồ Chí Minh', 'Chuyến đi Bình Dương - Suối Tiên là một hành trình thú vị để khám phá vùng đất Bình Dương và tận hưởng các hoạt động giải trí tại khu du lịch Suối Tiên.',50,'display'),
    ('Miền Nam', 1, 'Bình Phước - Thác Ma Thiên Lân', '11.jpg', 2529000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Bình Phước là một tỉnh ở miền Nam Việt Nam, nổi tiếng với cảnh quan đồng bằng sông nước và rừng núi. Thác Ma Thiên Lân là một điểm đến đẹp và hoang sơ nằm ở Bình Phước, với thác nước hùng vĩ và cảnh quan thiên nhiên tuyệt đẹp. Du khách có thể tận hưởng viễn cảnh, leo núi và tắm mát dưới thác, mang lại trải nghiệm đáng nhớ.',50,'display'),
    ('Miền Nam', 1, 'Đồng Nai - Khu du lịch Bửu Long', '12.jpg', 7082000,@start_time, '3 ngày 4 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Nai là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với cảnh quan thiên nhiên đa dạng. Khu du lịch Bửu Long là một điểm đến phổ biến ở Đồng Nai, với hồ nước trong xanh và cảnh quan tuyệt đẹp. Du khách có thể tham quan các ngôi đền, thưởng thức không gian yên bình, và tận hưởng hoạt động như đi thuyền trên hồ và tham gia câu cá, mang đến những trải nghiệm thú vị.',50,'display'),
    ('Miền Nam', 1, 'Vũng Tàu - Hồ Tràm', '13.jpg', 4484000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Vũng Tàu là một thành phố ven biển nằm ở miền Nam Việt Nam, được biết đến với bãi biển đẹp và không khí biển trong lành. Hồ Tràm là một điểm đến phổ biến tại Vũng Tàu, với bãi biển dài và cát mịn. Du khách có thể thư giãn trên bãi biển, tắm biển và tham gia vào các hoạt động như lướt sóng, chèo thuyền kayak, mang lại những trải nghiệm tuyệt vời.',50,'display'),
    ('Miền Nam', 1, 'Tp Hồ Chí Minh - Vũng Tàu', '14.jpg', 5967000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Vũng Tàu là một thành phố ven biển nằm ở miền Nam Việt Nam, được biết đến với bãi biển đẹp và không khí biển trong lành.',50,'display'),
    ('Miền Nam', 1, 'Tp Hồ Chí Minh - Côn Đảo', '15.jpg', 2853000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Côn Đảo là một quần đảo nằm ở miền Nam Việt Nam, được biết đến với vẻ đẹp hoang sơ và biển xanh tuyệt đẹp. Nơi đây có những bãi biển trắng mịn, nước biển trong xanh và rừng nguyên sinh tươi tốt. Du khách có thể tham gia vào các hoạt động như tắm biển, lặn biển để khám phá động san hô và tham quan các di tích lịch sử như Nhà tù Côn Đảo và Bảo tàng Côn Đảo. Côn Đảo cũng nổi tiếng với ngôi chùa Quan Âm cao nhất Việt Nam, nơi du khách có thể tìm hiểu về đạo Phật và tận hưởng không gian yên bình.',50,'display'),
    ('Miền Nam', 1, 'Đồng Nai - Nam Cát Tiên', '16.jpg', 7978000,@start_time, '3 ngày 4 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Nai là một tỉnh nằm ở miền Nam Việt Nam, có cảnh quan thiên nhiên phong phú. Khu du lịch Nam Cát Tiên là một điểm đến nổi tiếng ở Đồng Nai, với khu rừng nguyên sinh hoang dã và đa dạng hệ động thực vật. Du khách có thể tham gia vào các hoạt động như đi bộ, câu cá và tham quan các trạm nuôi và bảo tồn động vật, mang lại trải nghiệm gần gũi với thiên nhiên và con người.',50,'display'),
    ('Miền Nam', 1, 'Núi Bà Đen - Camping', '17.jpg', 5043000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Núi Bà Đen là một ngọn núi nằm ở tỉnh Tây Ninh, miền Nam Việt Nam, có giá trị tâm linh và cảnh quan thiên nhiên đẹp. Núi Bà Đen thu hút nhiều du khách đến tham quan và leo núi để chiêm ngưỡng toàn cảnh từ đỉnh. Ngoài ra, khu vực này cũng là điểm đến cho hoạt động cắm trại (camping). Du khách có thể thưởng thức không gian thiên nhiên yên bình, hòa mình vào môi trường núi rừng và tận hưởng trải nghiệm trại ngoại độc đáo.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Đồng sen', '18.jpg', 6716000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với đồng bằng sông nước và vùng đất phát triển nông nghiệp. Đồng sen là một đặc sản địa phương nổi tiếng của Đồng Tháp, với những cánh đồng sen trải dài và hoa sen nở rực rỡ. Du khách có thể đi thuyền trên đầm sen, chiêm ngưỡng cảnh quan tuyệt đẹp và tận hưởng không gian yên bình. Đồng sen mang đến một trải nghiệm gần gũi với thiên nhiên và văn hóa đặc trưng của vùng đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'An Giang - Miệt vườn', '19.jpg', 2100000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'An Giang là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với cảnh quan hữu tình và nền văn hóa đa dạng. Miệt vườn là một điểm đến đặc biệt tại An Giang, là hệ thống các vườn cây trái và ruộng lúa xen kẽ với nhau, tạo nên một cảnh quan độc đáo. Du khách có thể tham quan, tắm mình trong không gian xanh mát và tận hưởng trải nghiệm văn hóa nông thôn. Miệt vườn mang đến không gian bình yên và gắn kết với cuộc sống nông dân và thiên nhiên tại An Giang.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Tân Phong', '20.jpg', 3520000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Tour Tiền Giang là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. ',50,'display'),
    ('Miền Nam', 1, 'Vĩnh Long - Sa Đéc', '21.jpg', 4480000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Vĩnh Long là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với vùng đồng bằng sông nước và trồng cây ăn quả. Sa Đéc là một thành phố nằm tại Vĩnh Long, được biết đến với vườn hoa và nền văn hóa đậm đà. Du khách có thể tham quan các vườn hoa đẹp như vườn hoa Tân Quy Đông, tham quan các nhà vườn và thưởng thức những hoa đặc sản. Sa Đéc mang đến trải nghiệm về vẻ đẹp thiên nhiên và văn hóa độc đáo của miền đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Trà Sư', '22.jpg', 2520000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với cánh đồng lúa và mạch nước rừng tràm. Trà Sư là một khu rừng tràm rừng nguyên sinh nằm tại Đồng Tháp, với hệ sinh thái đa dạng và cảnh quan thiên nhiên tuyệt đẹp. Du khách có thể tham quan bằng thuyền, ngắm chim, và khám phá các con đường qua rừng tràm. Trà Sư mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên hoang sơ và văn hóa đặc trưng của miền đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Bạc Liêu', '23.jpg', 7070000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Bạc Liêu là một tỉnh nằm ở miền Nam Việt Nam, có bờ biển dài và nền văn hóa đa dạng. Tỉnh này nổi tiếng với những rừng cồn, vùng đất mặn và đặc sản hấp dẫn. Du khách có thể tham quan các khu vực du lịch như hồ Bạc Liêu, chùa Long Điền và tham gia vào các hoạt động như câu cá và thưởng thức ẩm thực đặc sản. Bạc Liêu mang đến cho du khách một trải nghiệm về vẻ đẹp tự nhiên và nét văn hóa độc đáo của vùng đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Cà Mau - Đất Mũi', '24.webp', 3990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cà Mau là một tỉnh nằm ở miền Nam Việt Nam, là địa điểm cuối cùng của đất liền và được gọi là "Đất Mũi". Tỉnh này nổi tiếng với hệ sinh thái đa dạng và rừng ngập mặn, là nơi sinh sống của nhiều loài động vật và thực vật quý hiếm. Du khách có thể thăm Công viên quốc gia U Minh Hạ, tận hưởng cảnh quan thiên nhiên hoang sơ và trải nghiệm các hoạt động như đi thuyền, câu cá. Cà Mau mang đến cho du khách một trải nghiệm về sự hòa quyện giữa thiên nhiên và cuộc sống của người dân địa phương.',50,'display'),
    ('Miền Nam', 1, 'Sóc Trăng - Chùa Dơi', '25.png', 4500000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Sóc Trăng là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với văn hóa đa dạng và đền chùa đặc trưng. Chùa Dơi là một ngôi chùa nổi tiếng tại Sóc Trăng, có kiến trúc độc đáo và là nơi linh thiêng của người dân địa phương. Chùa Dơi thu hút du khách bởi kiến trúc đặc biệt và điêu khắc tinh xảo. Du khách có thể thăm quan, tìm hiểu về đức tin Phật giáo và tham gia vào các nghi lễ tại chùa. Chùa Dơi mang đến cho du khách một trải nghiệm văn hóa và tâm linh sâu sắc trong hành trình khám phá Sóc Trăng.',50,'display'),
    ('Miền Nam', 1, 'Bến Tre - Cồn Phụng', '26.webp', 5200000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và nền văn hóa phong phú. Cồn Phụng là một hòn đảo xinh đẹp nằm tại Bến Tre, được biết đến với những ngôi nhà rừng trên sông và đặc sản nổi tiếng như dừa. Du khách có thể tham quan, thưởng thức trái cây tươi ngon, và tận hưởng không gian yên bình của đảo. Cồn Phụng mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên, đời sống nông thôn và văn hóa đặc trưng của Bến Tre.',50,'display'),
    ('Miền Nam', 1, 'Trà Vinh - Ao Bà Om', '27.jpg', 3700000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Trà Vinh là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và nền văn hóa đa dạng. Ao Bà Om là một hồ nằm tại Trà Vinh, có cảnh quan hữu tình và phong cảnh thiên nhiên tươi đẹp. Du khách có thể tham quan, thư giãn bên bờ hồ, và tận hưởng không gian yên bình. Ao Bà Om mang đến cho du khách một trải nghiệm gần gũi với thiên nhiên và cảm nhận vẻ đẹp trong sự hài hòa giữa nước, cây cỏ và trời xanh của Trà Vinh.',50,'display'),
    ('Miền Nam', 1, 'Hậu Giang - Chợ nổi', '28.jpg', 4100000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Hậu Giang là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với cánh đồng lúa và hệ sinh thái sông nước. Chợ nổi là một điểm đặc biệt tại Hậu Giang, là nơi các thương lái và người dân địa phương trao đổi và buôn bán hàng hóa trên các thuyền nhỏ. Du khách có thể tham quan, mua sắm và thưởng thức ẩm thực đặc sản tại chợ nổi. Chợ nổi mang đến cho du khách một trải nghiệm độc đáo về văn hóa thương mại và cuộc sống sông nước tại Hậu Giang.',50,'display'),
    ('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '29.jpg', 4800000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Kiên Giang - Đảo Nam Du', '30.jpg', 3900000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Kiên Giang là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, được biết đến với quần đảo Phú Quốc và cảnh quan thiên nhiên đa dạng. Đảo Nam Du là một trong những đảo đẹp của Kiên Giang, có bãi biển trắng mịn và nước biển trong xanh. Du khách có thể tham quan, tắm biển và tham gia vào các hoạt động như lặn biển và câu cá. Đảo Nam Du mang đến cho du khách một trải nghiệm nghỉ dưỡng tuyệt vời và khám phá vẻ đẹp tự nhiên của biển đảo Kiên Giang.',50,'display'),
    ('Miền Nam', 1, 'Phú Quốc - Vinpearl Land', '31.jpg', 3800000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Phú Quốc là một hòn đảo nằm ở tỉnh Kiên Giang, miền Nam Việt Nam, được biết đến với bãi biển tuyệt đẹp và thiên nhiên hoang sơ. Vinpearl Land là một khu vui chơi giải trí nổi tiếng tại Phú Quốc, với công viên nước, khu vui chơi, khách sạn và trung tâm mua sắm. Du khách có thể tham gia các trò chơi nước, trượt toboggan, tham quan thế giới dưới nước và tận hưởng các dịch vụ giải trí đa dạng. Vinpearl Land mang đến trải nghiệm vui vẻ và thú vị cho du khách khi đến Phú Quốc.',50,'display'),
    ('Miền Nam', 1, 'Hà Tiên - Mũi Nai', '32.jpg', 4200000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Hà Tiên là một thành phố cảng nằm ở tỉnh Kiên Giang, miền Nam Việt Nam. Nằm gần biên giới với Campuchia, Hà Tiên có vị trí địa lý đặc biệt. Mũi Nai là một điểm đến hấp dẫn tại Hà Tiên, với bãi biển tuyệt đẹp và cảnh quan hoang sơ. Du khách có thể tắm biển, tắm nắng và tham gia vào các hoạt động như lặn biển và thưởng thức hải sản tươi ngon. Mũi Nai mang đến không gian thư giãn, tận hưởng biển xanh và nét văn hóa khác biệt của vùng biên giới.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Gáo Giồng', '33.png', 4700000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đồng Tháp là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, nổi tiếng với cánh đồng lúa và mạch nước rừng tràm. Gáo Giồng là một điểm đến nổi tiếng tại Đồng Tháp, là một khu du lịch sinh thái với cảnh quan thiên nhiên đa dạng. Du khách có thể tham quan các vườn cây trái, đi thuyền trên rừng tràm, và tận hưởng không gian yên bình. Gáo Giồng mang đến trải nghiệm gần gũi với đời sống ven sông và thiên nhiên đặc biệt của miền đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Long An - Cồn Long Mỹ', '34.jpg', 3900000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và vườn cây dừa. Chợ nổi Cái Bè là một điểm đến phổ biến tại Bến Tre, với sự sôi động và tính đặc trưng của chợ nổi. Du khách có thể tìm hiểu về đời sống ven sông của người dân địa phương, mua sắm các sản phẩm nông sản, trái cây tươi ngon và thưởng thức các món ăn đặc sản đường phố độc đáo. Chợ nổi Cái Bè mang đến trải nghiệm văn hóa và thương mại đặc biệt trong vùng đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Bến Tre - Chợ nổi Cái Bè', '35.jpg', 4600000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Bến Tre là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vùng đồng bằng sông nước và vườn cây dừa. Chợ nổi Cái Bè là một điểm đến phổ biến tại Bến Tre, với sự sôi động và tính đặc trưng của chợ nổi. Du khách có thể tìm hiểu về đời sống ven sông của người dân địa phương, mua sắm các sản phẩm nông sản, trái cây tươi ngon và thưởng thức các món ăn đặc sản đường phố độc đáo. Chợ nổi Cái Bè mang đến trải nghiệm văn hóa và thương mại đặc biệt trong vùng đồng bằng sông nước.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Cù lao Thới Sơn', '36.jpg', 5000000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Tour Tiền Giang là một hành trình khám phá vùng đồng bằng sông nước phong cảnh tại miền Nam Việt Nam. ',50,'display'),
    ('Miền Nam', 1, 'Trà Vinh - Chùa Âng', '37.jpg', 4300000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Trà Vinh là một tỉnh nằm ở miền Tây Nam Bộ Việt Nam, có nền văn hóa đa dạng và cảnh quan thiên nhiên đẹp. Chùa Âng là một ngôi chùa nổi tiếng tại Trà Vinh, được xây dựng theo kiến trúc Khmer đặc trưng. Chùa Âng có kiến trúc độc đáo, điêu khắc tinh xảo và là nơi tín đồ Phật giáo đến tham quan và cầu nguyện. Du khách có thể tìm hiểu về đạo Phật, ngắm nhìn kiến trúc độc đáo và tìm kiếm sự tĩnh lặng tại chùa Âng.',50,'display'),
    ('Miền Nam', 1, 'Đà Lạt - Cần Thơ', '38.jpg', 4100000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Nha Trang - Cần Thơ', '39.jpg', 4800000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Huế - Cần Thơ', '40.webp', 3900000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Đà Nẵng - Tiền Giang', '41.jpg', 4000000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Đà Nẵng là một thành phố nằm ở miền Trung Việt Nam, với bãi biển đẹp và kiến trúc độc đáo. Thành phố này có nhiều điểm đến nổi tiếng như cầu Rồng, bán đảo Sơn Trà và bãi biển Mỹ Khê. Du khách có thể tham gia vào các hoạt động như tắm biển, lướt sóng và khám phá các di tích lịch sử như Ngũ Hành Sơn và di tích Chăm Pa. Tiền Giang là một tỉnh nằm ở miền Nam Việt Nam, nổi tiếng với vườn trái cây phong phú và đồng quê xanh mát. Du khách có thể tham quan các vườn cây trái, tham gia vào các hoạt động như hái trái cây và thưởng thức đặc sản địa phương như xoài Cao Lãnh và mít Tân Phước.',50,'display'),
    ('Miền Nam', 1, 'Cần Thơ - Mỹ Khánh', '42.jpg', 3800000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Nha Trang - Cần Thơ', '43.jpg', 4300000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Huế - Cần Thơ', '44.jpg', 3900000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Bình Dương - Cần Thơ', '45.jpg', 4590000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Đồng Nai - Cần Thơ', '46.jpg', 5290000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '47.jpg', 3790000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '48.jpg', 4190000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '49.jpg', 4890000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '50.jpg', 3990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '51.jpg', 3890000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Bạc Liêu - Cần Thơ', '52.jpg', 4290000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Sóc Trăng - Cần Thơ', '53.jpg', 4790000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Cà Mau - Cần Thơ', '54.jpg', 3990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '55.webp', 4690000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '56.webp', 5090000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '57.jpg', 4390000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Đồng Tháp - Cần Thơ', '58.jpg', 4190000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'An Giang - Cần Thơ', '59.jpg', 4890000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '60.jpg', 3990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '61.jpg', 4090000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Mỹ Tho - Cần Thơ', '62.jpg', 3890000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '63.jpg', 4390000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Kiên Giang - Cần Thơ', '64.jpg', 3990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Châu Đốc - Cần Thơ', '65.jpg', 4190000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'An Giang - Cần Thơ', '66.jpg', 2890000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Long An - Cần Thơ', '67.webp', 7990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Tiền Giang - Cần Thơ', '68.jpg', 5390000,@start_time, '3 ngày 2 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Bến Tre - Cần Thơ', '69.jpg', 6790000,@start_time, '4 ngày 3 đêm', 'Ngày 1: . . . - Ngày 2: . . .  - Ngày 3: . . . - Ngày 4: . . .', 'Cần Thơ là một thành phố lớn và là trung tâm kinh tế, văn hóa của miền Tây Nam Bộ Việt Nam. Thành phố Cần Thơ cũng được biết đến với cảnh quan thiên nhiên tuyệt đẹp, nhưng đặc biệt là Làng Sen, nơi du khách có thể ngắm nhìn vườn sen tràn đầy nước và tham quan các nhà máy chế biến sen. Cần Thơ có một văn hóa ẩm thực phong phú, với các món ăn đặc sản địa phương. Tóm lại, Cần Thơ là một thành phố đáng để khám phá, với sự kết hợp giữa cảnh quan thiên nhiên, di sản văn hóa, và cuộc sống sôi động của người dân miền Tây Nam Bộ.',50,'display'),
    ('Miền Nam', 1, 'Cần Thơ - Chợ nổi Cái Răng', '70.jpg', 2076000,@start_time, '2 ngày 1 đêm', 'Ngày 1: . . . - Ngày 2: . . . ', 'Chợ Nổi Cái Răng là một chợ nổi nổi tiếng tại thành phố Cần Thơ, miền Tây Nam Bộ Việt Nam. Nằm trên sông Hậu, chợ Nổi Cái Răng là một điểm đến du lịch hấp dẫn với không gian sôi động và chất local.
Tại chợ Nổi Cái Răng, bạn sẽ được thấy các thuyền buôn đầy hàng hoá và sản phẩm đa dạng như rau củ quả, hải sản tươi ngon, hàng dệt may, và nhiều loại đặc sản địa phương khác. Du khách có thể mua sắm, thưởng thức những món ăn đường phố truyền thống, hoặc tham gia vào các hoạt động như đi thuyền ngắm cảnh và thăm quan khu vực xung quanh chợ.
Chợ Nổi Cái Răng là một điểm đến thu hút du khách bởi không chỉ là nơi mua sắm và trao đổi hàng hóa, mà còn là một cái nhìn sâu sắc vào cuộc sống và văn hóa dân gian của người dân miền Tây Nam Bộ.',50,'display'),
-- 71-140
    ('Miền Trung', 1, 'Quảng Bình - Kẻ Gỗ', '71.png', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Quảng Bình - Ngày 2: Kẻ Gỗ'
    ,'Quảng Bình và Kẻ Gỗ là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '72.png', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Đà Nẵng - Ngày 2: Hội An - Ngày 3: Hội An và về lại Đà Nẵng'
    ,'Đà Nẵng và Hội An là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Huế - Quảng Bình', '73.png', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Đà Nẵng - Ngày 2: Huế - Ngày 3: Quảng Bình'
    ,'Đà Nẵng, Huế, Quảng Bình là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, ' Huế - Đà Nẵng - Hội An', '74.png', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Huế - Ngày 2: Đà Nẵng - Ngày 3: Hội An'
    ,'Đà Nẵng, Huế, Hội An là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Phú Yên', '75.png', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Qui Nhơn- Ngày 2: Phú Yên'
    ,'Quy Nhơn - Phú Yên là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quảng Nam - Cù Lao Chàm', '76.png', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Quảng Nam - Ngày 2: Cù Lao Chàm'
    ,'Quảng Nam, Cù Lao Chàm là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Gia Lai - Kon Tum', '77.png', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Gia Lai - Ngày 2: Kon Tum'
    ,'Gia Lai, Kon Tum là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Đảo Hoa Lan', '78.png', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Nha Trang- Ngày 2: Đảo Hoa Lan'
    ,'Nha Trang, Đảo Hoa Lan là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quảng Bình - Đèo Ngang', '79.png', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Quảng Bình- Ngày 2: Đèo Ngang'
    ,'Quảng Bình - Đèo Ngang là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Phong Nha', '80.png', 2990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế- Ngày 3: Phong Nha-Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Huế - Phong Nha là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Pleiku - Kon Tum', '81.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Pleiku- Ngày 2: Gia Lai- Ngày 3: Kon Tum'
    ,'Pleiku - Gia Lai - Kon Tum là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Tam Kỳ - Quảng Ngãi', '82.png', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Tam Kỳ - Ngày 2: Quãng Ngãi'
    ,'Tam Kỳ - Quảng Ngãi là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Cửa Lò - Nghệ An', '83.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Cửa Lò- Ngày 2: Nghệ An- Ngày 3: Về lại Nghệ An'
    ,'Cửa Lò - Nghệ An là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Bình Thuận - Phan Thiết', '84.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Bình Thuận- Ngày 2: Phan Thiết- Ngày 3: Du lịch biển Phan Thiết-Ngày 4: Về lại Bình Thuận'
    ,'Bình Thuận - Phan Thiết là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Tam Đảo - Vĩnh Phúc', '85.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Tam Đảo- Ngày 2: Vĩnh Phúc- Ngày 3: Du lịch biển Vĩnh Phúc-Ngày 4: Về lại Tam Đảo'
    ,'Tam Đảo - Vĩnh Phúc là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Tràng An - Ninh Bình', '86.png', 2990000,@start_time, '3 ngày3 đêm', 'Ngày 1: Tràng An- Ngày 2: Ninh Bình- Ngày 3: Về lại Tràng An'
    ,'Tràng An - Ninh Bình là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '87.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Bà Nà Hills- Ngày 3: Tiếp tục khám phá Bà Nà Hills -Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Bà Nà Hills là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '88.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Hội An -Ngày 4: Về lại Đà Nẵng'
    ,'Đà Nẵng - Ngũ Hành Sơn - Hội An ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Huế', '89.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Huế'
    ,'Đà Nẵng - Ngũ Hành Sơn - Huế là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Nẵng', '90.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiện Mụ- Ngày 3: Đà Nẵng','Huế là một nơi tuyệt đẹp',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Đà Nẵng', '91.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Vinpearl Safari -Ngày 4: Đà Nẵng'
    ,'Nha Trang - Vinpearl Land - Vinpearl Safari - Đà Nẵng là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Hội An', '92.png', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Vinpearl Safari -Ngày 4: Hội An'
    ,'Nha Trang - Vinpearl Land - Vinpearl Safari - Hội An là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Hội An', '93.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3: Hội An'
    ,'Nha Trang - Vinpearl Land - Hội An là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '94.png', 2990000,@start_time, '3 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills'
    ,' Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '95.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế- Ngày 3: Hội An -Ngày 4: Bà Nà Hills'
    ,'Đà Nẵng - Huế - Hội An - Bà Nà Hills là bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '96.jpg', 4990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Chùa Thiên Mụ- Ngày 5: Cù Lao Chàm'
    ,' Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Chùa Thiên Mụ - Cù Lao Chàm là năm điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '97.jpg', 1990000,@start_time, '2 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Cù Lao Chàm'
    ,' Đà Nẵng - Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Cù Lao Chàm', '98.jpg', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiện Mụ- Ngày 3: Cù Lao Chàm'
    ,' Huế - Chùa Thiên Mụ - Cù Lao Chàm  là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Cù Lao Chàm', '99.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Huế- Ngày 2: Cù Lao Chàm'
    ,' Huế - Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Vinpearl Land', '100.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land'
    ,' Nha Trang - Vinpearl Land là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Vinpearl Safari', '101.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Safari'
    ,' Nha Trang - Vinpearl Safari là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Nha Trang - Vinpearl Safari', '102.jpg', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Nha Trang- Ngày 2: Vinpearl Land- Ngày 3:Vinpearl Safari'
    ,' Nha Trang - Vinpearl Land là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Eo Gió', '103.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Eo Gió'
    ,' Quy Nhơn - Eo Gió Land là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Kỳ Co', '104.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Kỳ Co'
    ,' Quy Nhơn - Kỳ Co  là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Gành Đá Dĩa', '105.jpg', 1990000,@start_time, '2 ngày 1 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Gành Đá Dĩa'
    ,' Quy Nhơn - Gành Đá Dĩa là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Quảng Bình', '106.png', 4990000,@start_time, '5 ngày 4 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế- Ngày 3: Hội An -Ngày 4: Quảng Bình- Ngày 5: Về lai Đà Nẵng'
    ,'Đà Nẵng - Huế - Hội An - Quảng Bình bốn điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Kẻ Bàng', '107.png', 6990000,@start_time, '7 ngày 6 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Huế- Ngày 5: Đại Nội- Ngày 6: Phong Nha- Ngày 7: Kẻ Bàng'
    ,'chuyến du lịch từ Đà Nẵng tới Kẻ Bàng sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Đà Lạt', '108.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Đà Lạt'
    ,' chuyến du lịch từ Đà Nẵng tới Đà Lạt sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Đà Lạt', '109.jpg', 5990000,@start_time, '5 ngày 5 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Thác Datanla- Ngày 5: Đà Nẵng- Ngày 6: Đà Lạt '
    ,' chuyến du lịch từ Đà Nẵng tới Đà Lạt sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Nẵng', '110.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiên Mụ- Ngày 3: Động Thiên Đường -Ngày 4: Đà Nẵng'
    ,' chuyến du lịch từ Huế tới Đà Nẵng sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Nẵng', '111.jpg', 5990000,@start_time, '5 ngày 5 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiên Mụ- Ngày 3: Động Thiên Đường -Ngày 4: Phong Nha- Ngày 5: Kẻ Bằng- Ngày 6: Đà Nẵng'
    ,' chuyến du lịch từ Huế tới Đà Nẵng sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Lạt', '112.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiên Mụ- Ngày 3: Động Thiên Đường -Ngày 4: Đà Lạt'
    ,' chuyến du lịch từ Huế tới Đà Lạt sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Lạt', '113.jpg', 5990000,@start_time, '5 ngày 5 đêm', 'Ngày 1: Huế- Ngày 2: Chùa Thiên Mụ- Ngày 3: Động Thiên Đường -Ngày 4: Thác Datanla- Ngày 5:chợ Đà Lạt- Ngày 6: Đà Lạt'
    ,' chuyến du lịch từ Huế tới Đà Lạt sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quảng Bình - Đà Nẵng', '114.jpg', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Quảng Bình - Ngày 2: Động Thiên Đường- Ngày 3:Đà Nẵng'
    ,'Quảng Bình - Đà Nẵng là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quảng Bình - Đà Nẵng', '115.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Quảng Bình - Ngày 2: Động Thiên Đường- Ngày 3:Phong Nha- Ngày 4: Đà Nẵng'
    ,'Quảng Bình - Đà Nẵng là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Lạt - Nha Trang', '116.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Lạt - Ngày 2: chợ Đà Lạt- Ngày 3:Thác Datanla- Ngày 4: Nha Trang'
    ,'chuyến du lịch từ Đà Lạt tới Nha Trang sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Lạt - Vinpearl Safari', '117.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Lạt - Ngày 2: chợ Đà Lạt- Ngày 3:Thác Datanla- Ngày 4: Vinpearl Safari'
    ,' chuyến du lịch từ Đà Lạt tới Nha Trang sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Lạt - Nha Trang', '118.jpg', 5990000,@start_time, '5 ngày 5 đêm', 'Ngày 1: Đà Lạt- Ngày 2: chợ Đà Lạt- Ngày 3: Thác Datanla -Ngày 4: Thác Datanla- Ngày 5:Vinpearl Land- Ngày 6: Nha Trang'
    ,' chuyến du lịch từ Đà Lạt tới Nha Trang sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Phú Yên - Đà Nẵng', '119.jpg', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Phú Yên - Ngày 2: Nha Trang- Ngày 3:Đà Nẵng'
    ,'Phú Yên - Đà Nẵng là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Phú Yên - Đà Nẵng', '120.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Phú Yên - Ngày 2: Gành Đá Dĩa- Ngày 3:Nha Trang- Ngày 4:Đà Nẵng'
    ,'Phú Yên - Đà Nẵng là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Ngũ Hành Sơn', '121.jpg', 990000,@start_time, '1 ngày 1 đêm', 'Sáng Ngày 1: Đà Nẵng- Chiều Ngày 1: Ngũ Hành Sơn'
    ,' chuyến du lịch từ Đà Nẵng tới Ngũ Hành Sơn sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Bà Nà Hills', '122.jpg', 990000,@start_time, '1 ngày 1 đêm', 'Sáng Ngày 1: Đà Nẵng- Chiều Ngày 1: Bà Nà Hills'
    ,' chuyến du lịch từ Đà Nẵng tới Bà Nà Hills sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '123.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Chợ Đà Nẵng- Ngày 3: Chợ Hội An -Ngày 4: Hội An'
    ,' chuyến du lịch từ Đà Nẵng tới Hội An sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '124.jpg', 990000,@start_time, '1 ngày 1 đêm', 'Sáng Ngày 1: Đà Nẵng- Chiều Ngày 1: Cù Lao Chàm'
    ,' chuyến du lịch từ Đà Nẵng tới Cù Lao Chàm sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đại Nội', '125.jpg', 990000,@start_time, '1 ngày 1 đêm', 'Sáng Ngày 1: Huế- Chiều Ngày 1: Đại Nội'
    ,' chuyến du lịch từ Huế tới Đại Nội sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đại Nội', '126.jpg', 990000,@start_time, '1 ngày 1 đêm', 'Sáng Ngày 1: Huế- Chiều Ngày 1: Chùa Thiên Mụ'
    ,' chuyến du lịch từ Huế tới Chùa Thiên Mụ sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Kẻ Bàng', '127.jpg', 2990000,@start_time, '3 ngày 2 đêm', 'Ngày 1: Huế- Ngày 2: Phong Nha- Ngày 3:Kẻ Bàng'
    ,'Huế - Phong Nha - Kẻ Bàng là ba điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Huế - Đà Nẵng', '128.jpg', 3990000,@start_time, '4 ngày 3 đêm', 'Ngày 1: Huế- Ngày 2: Động Thiên Đường- Ngày 3: Kẻ Bàng -Ngày 4: Đà Nẵng'
    ,' chuyến du lịch từ Huế tới Đà Nẵng sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Eo Gió', '129.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Eo Gió'
    ,' Quy Nhơn - Eo Gio là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Kỳ Co', '130.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Kỳ Co'
    ,' Quy Nhơn - Kỳ Co là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quy Nhơn - Gành Đá Dĩa', '131.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Quy Nhơn- Ngày 2: Gành Đá Dĩa'
    ,' Quy Nhơn - Gành Đá Dĩa là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Phú Yên - Gành Đá Đĩa', '132.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Phú Yên- Ngày 2: Gành Đá Dĩa'
    ,' Phú Yên - Gành Đá Dĩa là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Phú Yên - Vịnh Vũng Rô', '133.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Phú Yên- Ngày 2: Vịnh Vũng Rô'
    ,' Phú Yên - Vịnh Vũng Rô là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Hội An', '134.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Hội An'
    ,' Đà Nẵng - Hội An là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Huế', '135.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Huế'
    ,' Đà Nẵng - Huế là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Hội An - Đà Nẵng', '136.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Hội An- Ngày 2: Đà Nẵng'
    ,' Hội An, Đà Nẵng là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Cù Lao Chàm', '137.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Cù Lao Chàm'
    ,' Đà Nẵng và Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Đà Nẵng - Thánh địa Mỹ Sơn', '138.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Đà Nẵng- Ngày 2: Thánh địa Mỹ Sơn'
    ,' Đà Nẵng và Thánh địa Mỹ Sơn là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Quảng Bình - Đà Nẵng', '139.jpg', 6990000,@start_time, '7 ngày 6 đêm', 'Ngày 1: Quảng Bình- Ngày 2: Ngũ Hành Sơn- Ngày 3: Bà Nà Hills -Ngày 4: Huế- Ngày 5:Phong Nha- Ngày 6: Kẻ Bàng- Ngày 7: Đà Nẵng'
    ,' chuyến du lịch từ Quàng Bình tới Đà Nẵng sẽ mang đến cho du khách những điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),
    ('Miền Trung', 1, 'Cù Lao Chàm - Đà Nẵng', '140.jpg', 1990000,@start_time, '2 ngày 2 đêm', 'Ngày 1: Cù Lao Chàm- Ngày 2: Đà Nẵng'
    ,' Đà Nẵng và Cù Lao Chàm là hai điểm đến du lịch nổi tiếng ở miền Trung Việt Nam với vẻ đẹp tự nhiên, văn hóa độc đáo và ẩm thực hấp dẫn.',50,'display'),

-- 141 -->210----------------------------------->
    ('Miền Bắc', 1, 'Hà Nội - Yên Tử ','141.png', 9399000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Ninh Bình - Yên Tử ', ' Tham quan vườn hoa Bãi Đá Sông Hồng (hoặc Thung Lũng Hoa Hồ Tây)- Du ngoạn vịnh Hạ Long - một trong 7 kỳ quan thiên nhiên mới của thế giới. Chiêm ngưỡng động Thiên Cung, các hòn Đỉnh Hương - Trống Mái (Gà Chọi)- Chó Đá- Tham quan Động Am Tiên (Tuyệt Tình Cốc Ninh Bình)',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Bắc Ninh ','142.png', 1599000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Yên Tử - Hạ Long - Bắc Ninh ', 'Thăm quan quần thể di tích Yên Tử nơi đất phật linh thiêng .Thăm quan ngắm cảnh vịnh Hạ Long một trong 7 kỳ quan. Thỏa sức tắm biển bãi Cháy một trong những bãi biển nhân tạo đẹp nhất của vịnh Hạ Long. Thỏa sức ngắm nhìn vịnh Hạ Long từ trên cao. Khám phá công viên rồng địa điểm nhiều khu vui chơi đẳng cấp Tuần Châu. Ngắm nhìn cảng tàu quốc tế độc đáo. Trải nghiệm công trình cáp treo vượt biển đẳng cấp',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Cao Bằng ','143.png', 8499000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hà Giang - Cao Bằng',' thành phố lịch sử với những con phố nhộn nhịp và di tích lịch sử hùng vĩ. Du khách sẽ đắm chìm trong vẻ đẹp huyền bí của Hà Giang, khám phá những cung đường ngoằn nghèo giữa đồng bát ngát. Tới Cao Bằng, vùng đất trù phú với những thác Bản Giốc hùng vĩ và đỉnh núi Cốc Bó, tour du lịch này hứa hẹn mang lại trải nghiệm độc đáo, kết hợp giữa văn hóa đậm đà và khám phá thiên nhiên tuyệt vời.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Đồng Văn ','144.png', 5799000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hà Giang - Đồng Văn ', 'Hành trình du lịch từ Hà Nội đến Hà Giang và Cao Bằng là một chuyến phiêu lưu hấp dẫn, đưa bạn đến khám phá vẻ đẹp huyền bí của núi rừng Tây Bắc Việt Nam. Từ thủ đô lịch sử Hà Nội, bạn sẽ bắt đầu hành trình đến vùng núi cao Hà Giang, nơi có cảnh đồng cỏ bát ngát và đỉnh núi hùng vĩ. Sau đó, hành trình tiếp tục đến Cao Bằng, với cảnh đẹp tự nhiên hùng vĩ của thác Bản Giốc và hồ Ba Bể. Mỗi dấu chân của bạn là một câu chuyện mới trong cuộc phiêu lưu này.',50,'display'),
    ('Miền Bắc', 1, 'Hồ Chí Minh - Yên Tử - Sapa ','145.png', 4199000,@start_time, '4 ngày 3 đêm ', 'Sài Gòn - Hà Nội - Sapa - Yên Tử ', 'Tour du lịch Hạ Long - Yên Tử - Sapa là hành trình kỳ thú đưa du khách khám phá những vẻ đẹp hùng vĩ và thiên nhiên tuyệt vời của Việt Nam. Bắt đầu từ Hạ Long, quý khách sẽ đắm chìm trong vịnh biển tuyệt vời và tham gia các hoạt động thú vị. Tiếp theo, hành trình dẫn đến Yên Tử, nơi linh thiêng và huyền bí, thu hút những tâm hồn tìm kiếm bình yên. Cuối cùng, Sapa mang đến trải nghiệm với những cánh đồng bậc thang hùng vĩ và vùng núi tuyết phủ, tạo nên kí ức đẹp khó quên.',50,'display'),
    ('Miền Bắc', 1, 'Hạ Long - Fansipan ','146.png', 8499000,@start_time, '4 ngày 3 đêm ', 'Vịnh Hạ Long - Yên Tử - Sapa - Fansipan ', 'Hành trình du lịch đưa bạn đến những địa danh nổi tiếng và tuyệt vời của Việt Nam. Bắt đầu từ Hạ Long, bạn sẽ ngỡ ngàng trước vẻ đẹp huyền bí của vịnh và những tảng đá độc đáo. Tiếp theo, hành trình dẫn bạn lên đỉnh Yên Tử, nơi linh thiêng với những ngôi chùa cổ kính và không khí tĩnh lặng. Cuối cùng, Sapa là điểm dừng cuối cùng, nơi bạn sẽ bị quyến rũ bởi những thửa ruộng bậc thang tuyệt vời và vùng núi hùng vĩ. Đây sẽ là chuyến phiêu lưu đầy ấn tượng và trải nghiệm sâu sắc với văn hóa và thiên nhiên Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Tp Hồ Chí Minh - Hạ Long ','147.png', 8999000,@start_time, '4 ngày 3 đêm ', 'Sài Gòn - Hà Nội - Lào Cai - Hạ Long ', 'Tour du lịch bắt đầu từ thành phố Hạ Long, nơi bạn sẽ đắm chìm trong vẻ đẹp huyền bí của vịnh Hạ Long, được UNESCO công nhận. Tiếp theo, hành trình hướng về Yên Tử, nơi linh thiêng và tâm linh hòa quyện, với chân đèo Phố Cô và chùa Trân Quốc. Cuối cùng, tour dẫn bạn đến Sapa, thiên đường nằm trong mảnh đất tuyệt vời của dãy núi Hoàng Liên, với cảnh sắc hùng vĩ và văn hóa độc đáo của các dân tộc thiểu số. Đây sẽ là chuyến hành trình tuyệt vời, đầy ấn tượng và trải nghiệm đa dạng.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Yên Tử','148.png', 9299000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Yên Tử ', 'Tour du lịch kết hợp giữa Thành phố Hồ Chí Minh năng động và Hà Nội lịch lãm cùng với đỉnh núi thiêng Yên Tử tạo nên một hành trình đa dạng và phong cách. Trải nghiệm sự hối hả của cuộc sống đô thị tại TP.Hồ Chí Minh, khám phá văn hóa lâu dài của Hà Nội qua các di tích lịch sử và ẩm thực độc đáo. Kết thúc hành trình là cuộc phiêu lưu tâm linh tại Yên Tử, với khung cảnh thiên nhiên hùng vĩ và không khí trấn an.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Tràng An ','149.png', 9499000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Ninh Bình - Tràng An ', 'Tour du lịch từ Hà Nội đến Hạ Long, Ninh Bình và Tràng An là một hành trình đầy phấn khích, mang đến trải nghiệm đa dạng văn hóa và thiên nhiên. Từ thủ đô lịch sử Hà Nội, bạn sẽ bắt đầu hành trình đến vịnh Hạ Long, nơi những hòn đảo đá vôi nổi tiếng nổi bật giữa biển xanh bát ngát. Tiếp theo, Ninh Bình là điểm đến tuyệt vời với những cánh đồng lúa mênh mông và các di tích lịch sử. Tour kết thúc tại Tràng An, thước phim tuyệt vời với hệ thống hang động, sông rừng tạo nên bức tranh hùng vĩ và huyền bí.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hạ Long ','150.png', 2599000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Ninh Bình - Hòn Trống ', 'Hành trình du lịch bắt đầu tại Hà Nội, thủ đô lịch sử đầy năng động, với các điểm tham quan như Hoàn Kiếm và Quảng Bá. Tiếp theo, chúng ta sẽ khám phá vịnh Hạ Long, một kỳ quan thiên nhiên hùng vĩ với những hòn đảo đá ngọc bí ẩn. Từ đó, hành trình dẫn đến Ninh Bình, "vịnh Hạ Long trên cạn," nổi tiếng với những thảo nguyên xanh, dòng sông êm đềm và đỉnh núi kỳ vĩ. Cuối cùng, chúng ta đến Hòn Trống, nơi biển xanh, cát trắng và bãi ngọc tạo nên bức tranh tuyệt vời cho kỳ nghỉ đáng nhớ.',50,'display'),
    ('Miền Bắc', 1, 'Tp Hồ Chí Minh - Yên Bái','151.png', 9999000,@start_time, '3 ngày 2 đêm ', 'Thành phố Hồ Chí Minh - Mù Cang Chải - Yên Bái ', 'Tour du lịch này sẽ đưa bạn đến những điểm đẹp tuyệt vời, bắt đầu từ sự hối hả của Thành phố Hồ Chí Minh, nơi hiện đại và truyền thống giao thoa. Tiếp theo, Mù Cang Chải - vùng đất nổi tiếng với những thửa ruộng bậc thang hùng vĩ. Hành trình kết thúc tại Yên Bái, nơi thiên nhiên hòa quyện, từ cánh đồng lúa xanh mướt đến những dãy núi đầy huyền bí. Mỗi địa điểm mang đến cho bạn những trải nghiệm độc đáo, làm bừng sáng hành trình khám phá Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Mộc Châu - Sơn La ','152.png', 1199000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Mộc Châu - Cầu Kính Bạch Long ', 'Hành trình du lịch từ Hà Nội đến Mộc Châu và Cầu Kính Bạch Long là một chuyến phiêu lưu đậm đà với vẻ đẹp tự nhiên hùng vĩ. Tại Mộc Châu, bạn sẽ được chìm đắm trong những thảm cỏ trắng tinh khôi, thăm các trang trại chè độc đáo. Còn tại Cầu Kính Bạch Long, bạn có cơ hội đắm mình trong không gian linh thiêng của đền thờ và thưởng thức cảnh đẹp hữu tình từ đỉnh núi cao vút. Mỗi địa điểm đều làm cho hành trình trở nên không quên.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Mộc Châu - Điện Biên ','153.png', 8299000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Mộc Châu - Điện Biên ', 'Tour du lịch từ Hà Nội đến Mộc Châu và Điện Biên là một hành trình tuyệt vời, đưa du khách đắm chìm trong vẻ đẹp tự nhiên hùng vĩ và văn hóa độc đáo. Tại Mộc Châu, những cánh đồng hoa dã quỳ bát ngát sắc màu tạo nên bức tranh thiên nhiên huyền bí. Chuyến đi tiếp theo đến Điện Biên, nơi lưu giữ những kí ức lịch sử đầy cảm xúc về cuộc chiến tranh. Du khách sẽ được thưởng thức không khí yên bình, hòa mình vào văn hóa bản địa và khám phá những địa điểm độc đáo trải dài trên hành trình này.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Tràng An ','154.png', 4999000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Tràng An - Sapa - Bản Cát Cát ', 'Hành trình du lịch này mang đến cho bạn trải nghiệm tuyệt vời qua những điểm đẹp độc đáo tại Việt Nam. Bắt đầu từ thủ đô lịch sử Hà Nội, bạn sẽ khám phá văn hóa độc đáo tại Tràng An, một di sản thế giới nổi tiếng. Tiếp theo là hành trình đến Sapa, nơi có những thửa ruộng bậc thang hùng vĩ. Cuối cùng, Bản Cát Cát sẽ là điểm dừng cuối cùng, nơi bạn có cơ hội tìm hiểu về đời sống và văn hóa của người dân tộc thiểu số tại vùng núi phía Bắc.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sapa ','155.png', 4699000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Ninh Bình - Sapa ', 'Hành trình du lịch này đưa du khách qua những địa danh tuyệt vời của miền Bắc Việt Nam. Từ thủ đô Hà Nội, bạn sẽ bắt đầu hành trình khám phá văn hóa và lịch sử độc đáo. Hạ Long huyền bí với những danh thắng thiên nhiên kỳ vĩ sẽ là điểm dừng tiếp theo. Ninh Bình, với vẻ đẹp của các thảo nguyên xanh mướt và cảnh quan hùng vĩ, là nơi để trải nghiệm sự bình yên. Cuối cùng, Sapa, với những rẻo núi hùng vĩ và văn hóa dân tộc độc đáo, sẽ kết thúc chuyến phiêu lưu này, mang lại những trải nghiệm không thể quên.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Ngọc Chiến ','156.png', 5999000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Mù Cang Chải - Ngọc Chiến ', 'Hành trình du lịch từ Hà Nội đến Mù Cang Chải và Ngọc Chiến là một chuyến phiêu lưu tuyệt vời giữa vùng núi phong phú và hùng vĩ của Việt Nam. Từ thủ đô sôi động, du khách sẽ bắt đầu hành trình đi qua những cung đường ngoằn ngoèo đưa họ đến với bản đẹp như tranh ở Mù Cang Chải, nơi những thửa ruộng bậc thang mênh mông màu xanh non mắt tạo nên bức tranh tuyệt vời của sự hài hòa giữa con người và thiên nhiên. Khám phá Ngọc Chiến, vùng đất nơi văn hóa dân dụ truyền thống và vẻ đẹp tự nhiên hòa quyện, là trải nghiệm không thể quên trong chuyến hành trình này.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Ngọc Chiến ','157.png', 2499000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Mù cang Chải - Ngọc Chiến ', 'Hành trình du lịch này đưa du khách từ trung tâm sôi động của Hà Nội đến vùng núi hùng vĩ Mù Cang Chải, nổi tiếng với những thước đồng ruộng bậc thang hình thành bởi bàn tay khéo léo của người dân tộc thiểu số. Trải qua cung đường quanh co, du khách sẽ bắt gặp những cảnh đẹp thiên nhiên tuyệt vời, từ những thửa ruộng lúa mênh mông đến những ngôi làng truyền thống. Tới Ngọc Chiến, điểm kết thúc, du khách sẽ bị cuốn hút bởi không khí trong lành, văn hóa dân dụ bản địa và cảm giác yên bình trước vẻ đẹp hoang sơ của miền núi.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Check in Moana ','158.png', 2299000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Sapa - Bản Cát Cát - Check in Moana ', 'Tour du lịch "Hà Nội - Sapa - Bản Cát Cát - Check-in Moana" là hành trình tuyệt vời, đưa du khách đến những địa điểm tinh tế và hấp dẫn. Bắt đầu từ thủ đô lịch sử Hà Nội, du khách sẽ khám phá vẻ đẹp cổ kính và năng động. Tiếp theo, hành trình dẫn đến thị trấn Sapa, nơi tương tác với văn hóa độc đáo và thưởng ngoạn khung cảnh núi non hùng vĩ. Khám phá Bản Cát Cát mang đến trải nghiệm văn hóa dân dụ độc đáo. Kết thúc hành trình tại Check-in Moana, nơi du khách được đắm chìm trong không khí biển xanh mát, tận hưởng những khoảnh khắc trọn vẹn của kỳ nghỉ thư giãn và lưu giữ những kí ức đáng nhớ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nôi - Chùa Bái Đính ','159.png', 2199000,@start_time, '4 ngày 3 đêm ', 'Hà Nôi - Sapa - Fansipan - Chùa Bái Đính ', 'Hành trình đặc sắc này dẫn dắt du khách từ trung tâm văn hóa lịch sử Hà Nội, nơi nổi tiếng với vẻ đẹp cổ kính và ẩm thực phong phú. Sau đó, hành trình tiếp tục đến Sapa, vùng đất hiên ngang với những thửa ruộng bậc thang huyền bí. Tại đỉnh Fansipan, "Nóc nhà Đông Dương", du khách sẽ được chiêm ngưỡng toàn cảnh hùng vĩ. Cuối cùng, Chùa Bái Đính, ngôi chùa lớn nhất Đông Nam Á, là điểm kết thúc hành trình với không khí thiêng liêng và tâm linh.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sapa ','160.png', 2399000,@start_time, '3 ngày 2 đêm ', 'Du lịch Hà Nội - Sapa - Hàm Rồng dịp Lễ ', 'Tour du lịch Hà Nội - Sapa - Hàm Rồng dịp Lễ là một hành trình tuyệt vời mang đến trải nghiệm đa dạng văn hóa và thiên nhiên. Bắt đầu từ thủ đô lịch sự Hà Nội, du khách sẽ đắm chìm trong không khí tươi mới tại Sapa, với những cánh đồng lúa bậc thang và những ngôi làng dân dụ bản địa. Chuyến thăm Hàm Rồng, nơi hòa mình vào huyền bí, kết thúc chuyến đi với những kỷ niệm đáng nhớ và hứng khởi.',50,'display'),
    ('Miền Bắc', 1, 'Mộc Châu - Hoa Mận ','161.png', 3399000,@start_time, '2 ngày 1 đêm ', 'Mộc Châu Mùa Hoa Mơ - Hoa Mận ', 'Tour du lịch Mộc Châu Mùa Hoa Mơ mang đến cho du khách trải nghiệm tuyệt vời giữa bức tranh thiên nhiên tươi đẹp và huyền bí. Khi bước chân đặt xuống, bạn sẽ bị cuốn hút bởi những thảm hoa mận trắng muốt, tinh khôi, tạo nên không gian huyền bí giữa những thảm cỏ xanh ngắt. Không chỉ có vẻ đẹp tuyệt vời, tour còn mang đến cơ hội để du khách tận hưởng không khí trong lành, thưởng thức ẩm thực độc đáo và trải nghiệm văn hóa độc đáo của vùng cao nguyên tây bắc Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Mộc Châu - Mai Châu ','162.png', 4699000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Mộc Châu - Mai Châu ', 'Tour du lịch Hà Nội - Mộc Châu - Mai Châu trong dịp Lễ là hành trình hứa hẹn mang đến trải nghiệm độc đáo với những cảnh đẹp thiên nhiên tuyệt vời. Tại Hà Nội, du khách sẽ đắm chìm trong không khí trầm mặc của lịch sử và văn hóa. Mộc Châu với những thảm cỏ xanh mướt, hoa cải trắng bồng bềnh, tạo nên bức tranh hữu tình. Mai Châu, với những ngôi nhà gỗ truyền thống và đồng ruộng lúa bát ngát, gửi gắm hồn quê Việt sâu đậm. Mỗi dấu tích đều kể một câu chuyện, hòa mình vào thiên nhiên hùng vĩ, tour này là hành trình khám phá sự đẹp tinh khôi và tận hưởng bản sắc văn hóa của miền Bắc Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Mộc Châu ','163.png', 1899000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Mộc Châu - Cầu Kính Bạch Long ', 'Tour du lịch Hà Nội - Mộc Châu - Cầu Kính Bạch Long trong dịp Lễ là hành trình hòa mình vào vẻ đẹp hùng vĩ của núi rừng và thác nước tại Mộc Châu. Du khách sẽ được trải nghiệm không khí trong lành, hòa mình vào những thảm cỏ xanh mướt và ngắm nhìn những cánh đồng hoa mơ mộng. Điểm đặc biệt là chuyến thăm Cầu Kính Bạch Long, nơi mang đến góc nhìn tuyệt vời, mở ra bức tranh thiên nhiên tuyệt diệu, tạo nên những kỷ niệm đáng nhớ cho du khách.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Cát Cát - Hàm Rồng ','164.png', 8799000,@start_time, '5 ngày 4 đêm ', 'Hà Nội - Cát Cát - Hàm Rồng ', 'Hành trình du lịch kỳ nghỉ ngắn tại miền Bắc Việt Nam mang đến cho bạn trải nghiệm không ngừng kỳ quan thiên nhiên và văn hóa. Tour bắt đầu từ thủ đô trăm năm tuổi, Hà Nội, nơi bạn sẽ hòa mình trong không khí trầm lắng của phố cổ. Tiếp theo, hành trình đưa bạn đến với những cung đường đáng kỳ vị như Cát Cát, Hàm Rồng, và đỉnh Fansipan - nói lên vẻ đẹp huyền bí của vùng núi Sapa. Mỗi dấu tích, mỗi cảm xúc, đều tạo nên chuyến đi đáng nhớ, kết thúc bằng sự trở về Hà Nội, nơi tâm hồn của bạn được thăng hoa trong bản nhạc văn hóa tinh tế.',50,'display'),
    ('Miền Bắc', 1, 'Sapa - Fansipan ','165.png', 8299000,@start_time, '4 ngày 3 đêm ', 'Sapa - Bản Cát Cát - Hàm Rồng - Fansipan ', 'Hành trình du lịch từ Sapa đến Fansipan là một chuyến phiêu lưu tuyệt vời giữa vùng núi đầy nét đẹp hoang sơ của Bắc Việt Nam. Du khách sẽ bắt đầu từ thị trấn Sapa, nơi hòa mình vào văn hóa dân tộc độc đáo. Tiếp theo, họ sẽ đến Bản Cát Cát, nơi lưu giữ nền văn hóa truyền thống của người HMông. Hành trình tiếp tục đến Hàm Rồng, một điểm đến kỳ bí với các hòn đá khổng lồ. Cuối cùng, đỉnh Fansipan, nơi du khách có cơ hội chinh phục đỉnh cao nhất Đông Dương, hòa mình vào hùng vĩ thiên nhiên và tận hưởng không khí tinh khôi của núi rừng.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sapa - Bản Cát Cát ','166.png', 1399000,@start_time, '4 ngày 3 đêm ', 'Tour Lễ Hà Nội - Sapa - Bản Cát Cát ', 'Tour Lễ Hà Nội - Sapa - Bản Cát Cát là hành trình đắm chìm trong vẻ đẹp hùng vĩ của núi rừng Tây Bắc Việt Nam. Khám phá thủ đô lịch sử Hà Nội, với kiến trúc cổ kính và đời sống văn hóa độc đáo. Tiếp đó, du khách sẽ bước vào thế giới thơ mộng của Sapa, nơi những rừng thông xanh mướt hòa quyện với những thửa ruộng bậc thang tuyệt vời. Tour còn mang đến cơ hội khám phá Bản Cát Cát, với làng dân dụ bản địa, nơi lưu giữ và truyền thống nền văn hóa sặc sỡ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sin Suối Hồ  ','167.png', 3899000,@start_time,'4 ngày 3 đêm ', 'Hà Nội - Sapa - Lai Châu - Sin Suối Hồ ', 'Hành trình du lịch từ Hà Nội đến Sapa, tiếp theo là Lai Châu và kết thúc tại Sin Suối Hồ là một cuộc phiêu lưu tuyệt vời giữa vẻ đẹp hùng vĩ của núi rừng và vùng cao Bắc Bộ. Du khách sẽ bắt đầu từ thủ đô tráng lệ, trải nghiệm không khí trong lành của núi Sapa, khám phá văn hóa dân tộc thiểu số, và rồi lạc vào vùng đồng bằng sâu thẳm của Lai Châu. Cuộc hành trình kết thúc bằng sự huyền bí tại Sin Suối Hồ, nơi hòa mình vào khung cảnh hòn ngọc tự nhiên giữa núi rừng hùng vĩ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Fansipan ','168.png', 4399000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Sapa - Fansipan ', 'Tour du lịch Hà Nội - Sapa - Fansipan - Hàm Rồng là hành trình tuyệt vời đưa du khách khám phá vẻ đẹp đa dạng của miền Bắc Việt Nam. Khởi hành từ thủ đô Hà Nội, hành trình mang đến trải nghiệm tại thị trấn Sapa, nơi hòa mình vào khung cảnh nên thơ của những thửa ruộng bậc thang và dãy núi hùng vĩ. Đỉnh Fansipan, mái trời Việt Nam, là điểm đến đắm chìm trong sự hùng vĩ của dãy núi Hoàng Liên. Cuối cùng, Hàm Rồng với vườn hoa rực rỡ tạo nên kết thúc hoàn hảo cho hành trình đầy ấn tượng này',50,'display'),
    ('Miền Bắc', 1, 'Sapa - Fanxipang ','169.png', 2899000,@start_time, '4 ngày 3 đêm ', 'Sapa - Cát Bát - Hàm Rồng - Fanxipang ', 'Tour du lịch đưa bạn đến những vùng đất tuyệt vời và hùng vĩ của miền Bắc Việt Nam. Từ vẻ đẹp huyền bí của Sapa, nơi có những thửa ruộng bậc thang trải dài đến Cát Bà, hòn đảo xinh đẹp nằm giữa vịnh Lan Hạ. Tiếp theo, bạn sẽ khám phá Hàm Rồng, khu du lịch tự nhiên với những cảnh đẹp độc đáo. Cuối cùng, hành trình kết thúc tại đỉnh Fanxipang, điểm cao nhất Đông Nam Á, nơi mang đến trải nghiệm hấp dẫn và những kỷ niệm khó quên.',50,'display'),
    ('Miền Bắc', 1, 'Sapa - Fanxipan','170.png', 4299000,@start_time, '4 ngày 3 đêm ', 'Sapa - Cát Cát - Hàm Rồng - Fanxipan ', 'Hành trình du lịch khám phá vùng núi Tây Bắc tại Sapa sẽ đưa du khách đến những địa điểm tuyệt vời như thác Cát Cát hùng vĩ, làng Hàm Rồng truyền thống của dân tộc HMông, và đỉnh núi Fanxipan - "Rồng của Đông Dương". Trải nghiệm độc đáo này mang đến không khí trong lành, khám phá văn hóa độc đáo và cảm nhận vẻ đẹp huyền bí của núi rừng nơi đỉnh cao nhất Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Tây Bắc - Cầu Kính Bạch Long ','171.png', 6599000,@start_time, '4 ngày 3 đêm ', 'Tây Bắc - Hà Nội - Mộc Châu - Cầu Kính Bạch Long ', 'Hành trình du lịch Tây Bắc - Hà Nội - Mộc Châu - Cầu Kính Bạch Long là một chuyến phiêu lưu độc đáo, nơi bạn sẽ khám phá vẻ đẹp thiên nhiên hùng vĩ và đa dạng văn hóa của miền Bắc Việt Nam. Từ thành phố năng động Hà Nội, hành trình dẫn bạn đến vùng núi Tây Bắc, nơi có những cảnh đẹp huyền bí của đỉnh núi, thác nước và đồng cỏ xanh mát tại Mộc Châu. Cuối cùng, thưởng thức sự yên bình tại Cầu Kính Bạch Long, một điểm đến lý tưởng cho những ai muốn tận hưởng không khí trong lành và cảm nhận hòa mình vào bản hòa nhạc thiên nhiên tuyệt vời.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Phú Thọ - Đền Hùng ','172.png', 8199000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Đền Hùng - Phú Thọ', 'Tour du lịch Hà Nội - Đền Hùng - Phú Thọ là hành trình huyền bí đưa du khách khám phá vùng đất lịch sử và văn hóa tại miền Bắc Việt Nam. Tại Hà Nội, du khách sẽ đắm chìm trong không khí trầm lắng của Hoàn Kiếm, thăm Quảng trường Ba Đình và thưởng thức ẩm thực đặc sắc. Hành trình tiếp tục đến Đền Hùng, nơi tưởng nhớ tổ tiên và học hỏi về lịch sử dòng họ Việt Nam. Cuối cùng, tại Phú Thọ, du khách sẽ khám phá những di tích lịch sử và thưởng thức vẻ đẹp êm đềm của quê hương.',50,'display'),
    ('Miền Bắc', 1, 'Vĩnh Phúc - Tam Đảo - Tây Thiên ','173.png', 9999000,@start_time, '3 ngày 2 đêm ', 'Vĩnh Phúc - Tam Đảo - Tây Thiên ', 'Tour du lịch Vĩnh Phúc - Tam Đảo - Tây Thiên là hành trình tuyệt vời khám phá vùng Bắc Trung Bộ Việt Nam. Tại Vĩnh Phúc, du khách sẽ đắm chìm trong vẻ đẹp hòa mình vào cuộc sống đồng quê, trải nghiệm văn hóa và thưởng thức ẩm thực độc đáo. Tam Đảo, với khí hậu mát mẻ quanh năm, là điểm đến lý tưởng cho những chuyến trekking và khám phá thiên nhiên hùng vĩ. Cuối cùng, Tây Thiên mang đến không khí linh thiêng với các đền chùa tuyệt vời, là nơi hòa mình vào tâm linh và tận hưởng bình yên.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Bắc Ninh - Hạ Long ','174.png', 6499000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Bắc Ninh - Đền Đô - Hạ Long ', 'Tour du lịch này sẽ đưa du khách đến những điểm đẹp độc đáo của miền Bắc Việt Nam. Hành trình bắt đầu tại Hà Nội, thủ đô nghìn năm văn hiến với những di tích lịch sử và kiến trúc độc đáo. Tiếp theo là Bắc Ninh, nơi lưu giữ nét truyền thống văn hóa và nghệ thuật dân gian. Đến Đền Đô, du khách sẽ khám phá văn hóa tâm linh tại các đền đài lịch sử. Hành trình kết thúc tại Hạ Long, một trong những di sản thiên nhiên kỳ diệu của thế giới với vịnh biển hùng vĩ và hang động kỳ quái.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Yên Tử - Hạ Long ','175.png', 8599000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Yên Tử - Hạ Long - Đền Đô ', 'Hành trình du lịch đặc sắc từ Hà Nội đến Yên Tử, Hạ Long và Đền Đô là một cuộc phiêu lưu độc đáo, hòa mình vào vẻ đẹp lịch sử và thiên nhiên hùng vĩ. Từ thủ đô lịch sử Hà Nội, bạn sẽ bắt đầu hành trình tôn vinh tại Yên Tử, nơi linh thiêng và tâm linh hòa quyện. Tiếp theo, hòa mình trong hạnh phúc của Vịnh Hạ Long, thảo nguyên đá karst hùng vĩ. Cuối cùng, trở về Đền Đô để khám phá vẻ đẹp kiến trúc và lịch sử độc đáo. Đây chắc chắn là một hành trình đầy ấn tượng và trải nghiệm độc đáo.',50,'display'),
    ('Miền Bắc', 1, 'Ninh Bình - Chùa Bái Đính - Tràng An ','176.png', 4299000,@start_time, '3 ngày 2 đêm ', 'Ninh Bình - Chùa Bái Đính - Tràng An ', 'Tour du lịch Ninh Bình - Chùa Bái Đính - Tràng An là một hành trình đầy ấn tượng, mang đến trải nghiệm hòa mình vào vẻ đẹp tự nhiên tuyệt vời và tâm linh. Bắt đầu từ Ninh Bình, du khách sẽ khám phá vùng đất tươi đẹp với những cánh đồng lúa xanh bát ngát. Chùa Bái Đính, nằm giữa khung cảnh núi non hùng vĩ, là điểm đến tôn giáo và văn hóa quan trọng. Kết thúc hành trình là Tràng An, hệ thống hang động và hồ nước lạ mắt, nơi du khách có cơ hội thư giãn và tận hưởng sự hòa mình giữa thiên nhiên hùng vĩ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Tam Cốc ','177.png', 7299000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Bái Đính - Tràng An - Tam Cốc ', 'Tour du lịch Hà Nội - Bái Đính - Tràng An - Tam Cốc là một hành trình tuyệt vời, kết hợp giữa sự truyền thống và thiên nhiên tươi đẹp. Khám phá thủ đô lịch sử Hà Nội với những địa danh nổi tiếng, sau đó hướng về Bái Đính, nơi nằm lớn nhất thế giới về kiến trúc Phật giáo. Tiếp theo, du khách sẽ bị cuốn hút bởi vẻ đẹp hùng vĩ của Tràng An, di tích thiên nhiên và di sản thế giới Tam Cốc, nơi có những cánh đồng lúa bát ngát và hệ thống hang động độc đáo. Đây là hành trình độc đáo, mang lại trải nghiệm đầy ấn tượng cho những người yêu thích văn hóa và thiên nhiên.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Tuyệt Tình Cốc ','178.png', 4999000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Chùa Tam Chúc - Ninh Bình - Tuyệt Tình Cốc ', 'Tour du lịch đưa bạn đến những điểm đẹp tuyệt vời của miền Bắc Việt Nam. Hành trình bắt đầu tại Hà Nội, nơi lưu giữ vẻ đẹp lịch sử và văn hóa. Tiếp theo, bạn sẽ ghé thăm Chùa Tam Chúc, ngôi chùa lớn nhất Đông Nam Á, nằm giữa hồ nước xanh biếc. Sau đó, hành trình hướng về Ninh Bình, với cảnh đẹp ngoạn ngục của các vách đá và đèo non. Tour kết thúc tại Tuyệt Tình Cốc, một điểm đón chào bình minh huyền bí, tạo nên kỷ niệm đáng nhớ trong lòng du khách.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sapa ','179.png', 5199000,@start_time, '5 ngày 4 đêm ', 'Hà Nội - Hoa Lư - Sapa - Đền Hùng ', 'Hành trình du lịch đắm chìm trong vẻ đẹp lịch sử và thiên nhiên tuyệt vời, tour từ Hà Nội - Hoa Lư - Sapa - Đền Hùng Cốc là một chuyến phiêu lưu đầy ấn tượng. Bắt đầu từ thủ đô năng động Hà Nội, bạn sẽ khám phá di tích lịch sử Hoa Lư, ngắm nhìn vùng núi hùng vĩ tại Sapa, và trải nghiệm sự linh thiêng tại Đền Hùng Cốc. Đây là cuộc hành trình kỳ diệu đưa du khách đến với vẻ đẹp đa dạng của Việt Nam, từ thành phố sôi động đến cảnh đẹp tự nhiên hùng vĩ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hoa Lư ','180.png', 9599000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Bái Đính - Tràng An - Hoa Lư ', 'Hành trình du lịch này đưa du khách đến những điểm đẹp nổi tiếng và lịch sử tại Việt Nam. Bắt đầu từ thủ đô lịch sử Hà Nội, bạn sẽ ngắm nhìn vẻ đẹp tinh tế của Bái Đính, điểm hành hương lớn nhất Đông Nam Á. Tiếp theo, Tràng An hiền hòa và quyến rũ bởi hệ thống hang động và cảnh đồng quê hữu tình. Hành trình kết thúc tại Hoa Lư Cốc, nơi hòa mình trong không gian lịch sử cổ kính và tận hưởng tĩnh lặng của quê hương.',50,'display'),
    ('Miền Bắc', 1, 'Hoa Lư - Hang Múa ','181.png', 6999000,@start_time, '2 ngày 1 đêm ', 'Hà Nội - Hang Múa ', 'Tour du lịch Hà Nội - Hang Múa là một hành trình đầy hứng khởi, mang đến trải nghiệm tuyệt vời giữa văn hóa đậm đà của thủ đô Hà Nội và vẻ đẹp hùng vĩ của Hang Múa. Du khách sẽ khám phá những di tích lịch sử lâu dài, thưởng thức ẩm thực phong phú và thư giãn trong không khí yên bình. Đặc biệt, đến Hang Múa, du khách sẽ được hòa mình vào không gian thiên nhiên tuyệt vời, với cảnh đèn hoàng hôn tô điểm cho một trải nghiệm khó quên.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Chùa Hương ','182.png', 1599000,@start_time, '2 ngày 1 đêm ', 'Bắc Hà Nội - Chùa Hương ', 'Tour du lịch "Bắc Hà Nội - Chùa Hương" là hành trình tuyệt vời đưa du khách qua những vùng đất hùng vĩ và linh thiêng. Tại Bắc Hà Nội, bạn sẽ bắt gặp vẻ đẹp hoang sơ của núi rừng và hòa mình vào văn hóa độc đáo của các dân tộc thiểu số. Đến Chùa Hương, một điểm hành hương tâm linh nằm giữa cảnh đẹp hữu tình, du khách sẽ trải qua không gian thanh tịnh và cảm nhận sức sống tâm linh từ những nét kiến trúc độc đáo và lịch sử lâu dài.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Yên Tử','183.png', 5299000,@start_time, '2 ngày 1 đêm ', 'Hà Nội - Yên Tử ', 'Tour du lịch Hà Nội - Yên Tử là hành trình huyền bí đưa du khách từ trung tâm lịch sử và văn hóa Hà Nội đến ngôi chùa linh thiêng Yên Tử, nằm trên đỉnh núi Yên Tử hùng vĩ. Đây không chỉ là kỳ nghỉ thư giãn giữa không gian thiên nhiên tươi đẹp mà còn là cơ hội để du khách khám phá những di tích lịch sử, nền văn hóa độc đáo và tận hưởng không khí tĩnh lặng của miền núi Bắc Bộ.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Ba Vì','184.png', 6599000,@start_time, '1 ngày 0 đêm ', 'Hà Nội - Ba Vì', 'Tour du lịch "Hà Nội - Ba Vì" mang đến trải nghiệm độc đáo giữa bức tranh thiên nhiên tươi đẹp và văn hóa đậm đà. Khởi hành từ trái tim thủ đô Hà Nội, chúng ta sẽ bắt đầu hành trình khám phá Ba Vì, nơi núi non hùng vĩ và rừng xanh mát hòa quyện. Dạo bước trong không gian yên bình, du khách sẽ được thư giãn, thưởng thức ẩm thực độc đáo và trải nghiệm những hoạt động ngoại ô thú vị, tạo nên kỷ niệm đáng nhớ trong hành trình khám phá miền Bắc Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Tam Chúc - Chùa Bà Đanh ','185.png', 2399000,@start_time, '2 ngày 1 đêm ', 'Chùa Tam Chúc - Chùa Bà Đanh ', 'Chuyến du lịch đến Chùa Tam Chúc và Chùa Bà Đanh mang đến trải nghiệm tâm linh và hòa mình vào vẻ đẹp tâm hồn của Việt Nam. Tại Chùa Tam Chúc, du khách sẽ bị cuốn hút bởi hình ảnh hòa mình giữa hồ nước lớn và những ngôi chùa linh thiêng. Chùa Bà Đanh, với kiến trúc cổ kính, tạo nên không khí yên bình và trang nghiêm. Cả hai địa điểm đều là nơi lý tưởng để tìm kiếm bình an và tận hưởng vẻ đẹp văn hóa truyền thống.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - City Hà Nội - Hồ Gươm ','186.png', 1999000,@start_time, '3 ngày 2 đêm ', 'Bắc Hà Nội - City Hà Nội - Hồ Gươm ', 'Tour du lịch Hà Nội - City Hà Nội - Hồ Gươm là hành trình tuyệt vời đưa du khách khám phá vẻ đẹp lịch sử và văn hóa của thủ đô Việt Nam. Trải qua những con đường cổ kính của Hà Nội, du khách sẽ bắt gặp những di tích lịch sử nổi tiếng và thưởng thức những món ăn ngon đặc trưng. Đặc biệt, chuyến tham quan Hồ Gươm sẽ mang lại trải nghiệm tuyệt vời với không khí yên bình và hòa mình vào vẻ đẹp thơ mộng của hồ thành phố.',50,'display'),
    ('Miền Bắc', 1, 'Thanh Hóa ','187.png', 1999000,@start_time, '3 ngày 2 đêm ', 'Đền Sòng Sơn - Đền Cô Chín - Suối Cá ', 'Hành trình du lịch qua "Đền Sòng Sơn - Đền Cô Chín - Suối Cá" là một hành trình tuyệt vời khám phá vẻ đẹp tâm linh và thiên nhiên tại vùng miền. Bắt đầu từ sự trang nghiêm của Đền Sòng Sơn, nơi lưu giữ hồn quê hương, đưa du khách đến Đền Cô Chín, nơi linh thiêng với những câu chuyện lịch sử. Cuối cùng, Suối Cá mang lại trải nghiệm tận hưởng bản địa với cảnh đẹp thiên nhiên tươi mới và không khí trong lành, là điểm kết thúc hành trình đáng nhớ.',50,'display'),
    ('Miền Bắc', 1, 'Thanh Hóa ','188.png', 4399000,@start_time, '3 ngày 2 đêm ', 'Thanh Hóa - Yên Tử - Tràng An ', 'Tour du lịch từ Thanh Hóa đến Yên Tử và Tràng An là một hành trình tuyệt vời, mang đến trải nghiệm đa dạng về văn hóa và thiên nhiên. Từ vẻ đẹp lịch sử của Thanh Hóa, du khách sẽ hòa mình vào không khí tâm linh tại Yên Tử, nơi có đỉnh Phật tự linh thiêng. Sau đó, họ sẽ đắm chìm trong vẻ đẹp hùng vĩ của Tràng An, với những hệ thống hang động và cảnh quan thiên nhiên kỳ diệu. Mỗi điểm dừng đều là một trải nghiệm độc đáo, hấp dẫn du khách bằng sự phong phú và tinh tế của văn hóa Việt Nam.',50,'display'),
    ('Miền Bắc', 1, 'Thanh Hóa - Vịnh Hạ Long - Yên Tử ','189.png', 1799000,@start_time, '3 ngày 2 đêm ', 'Pù Luông - Vịnh Hạ Long - Yên Tử ', 'Tour du lịch kết hợp Pù Luông, Vịnh Hạ Long và Yên Tử là một hành trình tuyệt vời khám phá vẻ đẹp đa dạng của Việt Nam. Khởi hành từ thôn quê bình yên ở Pù Luông, du khách sẽ được trải nghiệm cuộc sống nông thôn truyền thống. Hành trình tiếp tục với Vịnh Hạ Long, với những danh thắng ngoạn mục, đảo đá hình thù độc đáo. Kết thúc chuyến đi ở Yên Tử, nơi tâm linh hòa mình giữa thiên nhiên hùng vĩ và không gian linh thiêng. Tour này là một hành trình đầy ấn tượng và trải nghiệm đa chiều.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hòa Bình ','190.png', 6399000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Thung Nai - Suối khoáng Kim Bồi - Hòa Bình ', 'Tour du lịch Hà Nội - Thung Nai - Suối khoáng Kim Bồi - Hòa Bình là hành trình tuyệt vời, đưa du khách khám phá vẻ đẹp hài hòa giữa nét cổ kính của Hà Nội, vùng quê thơ mộng Thung Nai, đến những nguồn nước khoáng tinh khiết tại Suối khoáng Kim Bồi. Du khách sẽ được trải nghiệm không khí trong lành, cảm nhận vị ngon của đặc sản địa phương và thư giãn trong khung cảnh tươi đẹp của Hòa Bình, tạo nên một chuyến đi đáng nhớ.',50,'display'),
    ('Miền Bắc', 1, 'Sapa ','191.png', 9299000,@start_time, '3 ngày 2 đêm ', 'Sa Pa - Bản Cát Cát - Hàm Rồng ', 'Tour du lịch Sa Pa - Bản Cát Cát - Hàm Rồng là một hành trình tuyệt vời khám phá vẻ đẹp huyền bí của vùng núi phía Bắc Việt Nam. Hành trình bắt đầu tại Sa Pa, nơi bạn sẽ được ngắm nhìn những thửa ruộng bậc thang lộng lẫy. Tiếp theo, tour dẫn bạn đến Bản Cát Cát, nơi văn hóa của các dân tộc thiểu số rực rỡ. Cuối cùng, Hàm Rồng, với cảnh đẹp hùng vĩ và sự tĩnh lặng của thiên nhiên, đưa du khách vào một trải nghiệm du lịch đậm chất thơ mộng và truyền thống.',50,'display'),
    ('Miền Bắc', 1, 'Sapa ','192.png', 9899000,@start_time, '2 ngày 1 đêm ', 'Tour Du lịch Sapa - Bản Cát Cát ', 'Tour du lịch Sapa - Bản Cát Cát là một hành trình tuyệt vời đưa du khách đến khám phá vùng núi phong cảnh hùng vĩ của Sapa, Việt Nam. Từ thị trấn Sapa, hành trình bắt đầu với những con đường mòn xanh ngắt, dẫn dắt khách qua thung lũng mộng mơ. Tại Bản Cát Cát, du khách sẽ trải nghiệm không khí bình dị của ngôi làng dân dụ HMông, ngắm nhìn những thửa ruộng bậc thang tuyệt vời và hiểu rõ văn hóa độc đáo của cộng đồng dân tộc thiểu số.',50,'display'),
    ('Miền Bắc', 1, 'Sapa ','193.png', 5799000,@start_time, '2 ngày 1 đêm ', 'Sapa - Chinh Phục Đỉnh Fansipan ', 'Tour du lịch "Sapa - Chinh Phục Đỉnh Fansipan" là chuyến hành trình kỳ thú đưa du khách đến với vùng núi hùng vĩ của Sapa, Việt Nam. Hành trình không chỉ khám phá văn hóa dân dụ độc đáo và thưởng thức ẩm thực tinh tế mà còn đưa du khách đến thách thức tuyệt vời nhất - leo lên Đỉnh Fansipan, đỉnh núi cao nhất Đông Nam Á. Trải nghiệm không chỉ là hành trình vượt đèo, mà còn là cuộc phiêu lưu tới những đỉnh cao, ngắm cảnh thiên nhiên tuyệt vời và gặp gỡ những bản làng truyền thống.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sapa','194.png', 2799000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hàm Rồng - Chinh Phục Đỉnh Fansipan ', 'Tour du lịch "Hà Nội - Hàm Rồng - Chinh Phục Đỉnh Fansipan" là hành trình kỳ thú khám phá vùng Bắc Việt Nam. Đặt chân đến thủ đô lịch sử Hà Nội, du khách sẽ trải nghiệm không khí hồn hương của thành phố cổ, khám phá Hàm Rồng - khu vườn thiên nhiên tuyệt vời với cảnh đẹp hùng vĩ. Hành trình đưa du khách đến thách thức bản thân khi chinh phục đỉnh Fansipan - đỉnh núi cao nhất Đông Nam Á. Một hành trình không chỉ là khám phá vẻ đẹp tự nhiên mà còn là thử thách tinh thần và trải nghiệm văn hóa độc đáo của dân tộc vùng núi.',50,'display'),
    ('Miền Bắc', 1, 'Lào Cai - Sapa ','195.png', 4199000,@start_time, '3 ngày 2 đêm ', 'Lào Cai - Hà Khẩu - Sapa ', 'Hành trình du lịch từ Lào Cai đến Hà Khẩu và Sapa là một chuyến phiêu lưu hấp dẫn, đưa du khách khám phá vùng núi Tây Bắc Việt Nam nổi tiếng với địa hình hùng vĩ và văn hóa dân dụ độc đáo. Từ thành phố biên giới Lào Cai, du khách sẽ trải nghiệm hương vị văn hóa dân dụ đặc trưng, tiếp theo là hành trình đến thị trấn Hà Khẩu, nơi kết nối với Sapa qua những con đường ngoằn nghèo, nhưng đồng thời ẩn chứa vẻ đẹp hoang sơ và tinh tế của miền núi Tây Bắc.',50,'display'),
    ('Miền Bắc', 1, 'Hà Giang ','196.png', 1699000,@start_time, '3 ngày 2 đêm ', 'Hà Giang - Quản Bạ - Đồng Văn ', 'Tour du lịch Hà Giang - Quản Bạ - Đồng Văn là hành trình hấp dẫn đưa du khách đến với vùng núi đồng bằng karst hùng vĩ. Từ Hà Giang, chúng ta sẽ bắt đầu cuộc phiêu lưu đến Quản Bạ, nơi có đèo Mã Pí Lèng ngoạn mục và cánh đồng bậc thang tuyệt vời. Đến Đồng Văn, khám phá Vườn địa đạo Đồng Văn và thưởng ngoạn cảnh đá mặt trời, tạo nên chuyến đi không gì so sánh. Tour mang lại trải nghiệm văn hóa độc đáo và hòa mình vào vẻ đẹp huyền bí của cao nguyên đá Đồng Văn.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Sơn La ','197.png', 6599000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hà Giang - Quản Bạ - Sơn La ', 'Hành trình du lịch từ Hà Nội đến Sơn La sẽ đưa bạn qua những địa điểm tuyệt vời nhất của Bắc Việt Nam. Từ sự trấn an và lịch sự của Hà Nội, bạn sẽ khám phá vẻ đẹp hùng vĩ của núi non ở Hà Giang và thăm thú cảnh đẹp thiên nhiên tại Quản Bạ. Hành trình sẽ kết thúc tại Sơn La, nơi bạn có cơ hội tận hưởng không khí trong lành, thưởng thức ẩm thực độc đáo và hiểu rõ hơn về văn hóa động bộ của người dân địa phương.',50,'display'),
    ('Miền Bắc', 1, 'Mộc Châu - Hà Nội ','198.png', 4399000,@start_time, '3 ngày 2 đêm ', 'Mộc Châu - Mai Châu - Hà Nội ', 'Tour du lịch từ Mộc Châu đến Mai Châu và cuối cùng là Hà Nội là một hành trình tuyệt vời, mang đến trải nghiệm đa dạng về văn hóa và thiên nhiên. Tại Mộc Châu, bạn sẽ bị cuốn hút bởi vùng núi rừng tươi tốt, đồng cỏ xanh mướt. Tiếp theo, Mai Châu mang đến không khí yên bình của làng quê, với những ngôi nhà gỗ truyền thống và văn hóa dân dụ độc đáo. Cuối cùng, Hà Nội với lịch sử lâu dài và văn hóa phồn thịnh sẽ là điểm kết thúc hoàn hảo cho hành trình khám phá này.',50,'display'),
    ('Miền Bắc', 1, 'Hà Giang - Cao Bằng','199.png', 6799000,@start_time, '3 ngày 2 đêm ', 'Hà Giang - Đồng Văn - Cao Bằng ', 'Tour du lịch từ Hà Giang đến Đồng Văn và Cao Bằng là một hành trình kỳ diệu khám phá vùng đất núi phong phú và hùng vĩ của miền Bắc Việt Nam. Du khách sẽ được đắm chìm trong khung cảnh thiên nhiên tuyệt vời, từ những thửa ruộng bậc thang xanh mướt của Hà Giang đến vùng Đồng Văn đá ngầm nổi tiếng. Tour còn mang đến trải nghiệm văn hóa độc đáo khi khám phá các bản làng dân dụ tự nhiên và thưởng thức ẩm thực đặc sắc của vùng cao nguyên Cao Bằng.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hà Giang ','200.png', 2799000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Đồng Văn - Cột cờ Lũng Cú ', 'Tour du lịch Hà Nội - Đồng Văn - Cột cờ Lũng Cú là hành trình huyền bí đưa du khách khám phá vẻ đẹp lịch sử và thiên nhiên tại Bắc Việt Nam. Từ Hà Nội, hành trình đưa bạn đến Đồng Văn, nơi giữa vùng cao nguyên đá độc đáo. Đây không chỉ là cơ hội để tận hưởng khung cảnh ngoạn ngục của đỉnh núi, mà còn là cơ hội để hiểu rõ về văn hóa và đời sống dân tộc thiểu số. Khám phá Cột cờ Lũng Cú, biểu tượng lịch sử, là hành trình đậm chất khám phá, kết nối với bản sắc văn hóa độc đáo của vùng đất núi.',50,'display'),
    ('Miền Bắc', 1, 'Hạ Long - Sapa ','201.png', 5199000,@start_time, '3 ngày 2 đêm ', 'Vịnh Hạ Long - Yên Tử - Sapa ', 'Tour du lịch hấp dẫn khám phá vùng Bắc Bộ Việt Nam bao gồm Vịnh Hạ Long, Yên Tử và Sapa. Khởi hành từ Hà Nội, bạn sẽ được đắm chìm trong vẻ đẹp huyền bí của Vịnh Hạ Long với những hòn đảo đá karst nổi tiếng. Tại Yên Tử, nơi có chùa dã ngoại thiêng liêng, bạn sẽ trải nghiệm không khí tâm linh và ngắm cảnh núi non hùng vĩ. Cuối cùng, Sapa đưa bạn đến với những thửa ruộng bậc thang đẹp như tranh, nơi gặp gỡ với văn hóa dân tộc sôi động.',50,'display'),
    ('Miền Bắc', 1, 'Yên Tử - Ba Vàng ','202.png', 1499000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Yên Tử - Ba Vàng - Mai Châu ', 'Hành trình du lịch qua Hà Nội, Yên Tử, Ba Vàng và Mai Châu mang đến trải nghiệm độc đáo của văn hóa Việt Nam. Bắt đầu tại Hà Nội, khám phá đô thị lịch sử với các di tích và món ăn đặc sắc. Tiếp theo, Yên Tử và Ba Vàng là những địa điểm linh thiêng, với chân đèo dẫn lên chùa trên đỉnh núi và tượng Chúa Buddha lấp lánh giữa không gian thiên nhiên hùng vĩ. Cuối cùng, tại Mai Châu, bạn sẽ ngắm nhìn vẻ đẹp hòa quyện của thác nước, rừng xanh và làng trại trải dài trên thung lũng.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hạ Long ','203.png', 6799000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Hang Múa - Bái Đính ', 'Tour du lịch từ Hà Nội đến Hạ Long, Hang Múa, và Bái Đính là một hành trình tuyệt vời khám phá vẻ đẹp đa dạng của miền Bắc Việt Nam. Bắt đầu từ Hà Nội, thủ đô lịch sử, bạn sẽ hồi hương qua các con phố cổ và thưởng thức ẩm thực độc đáo. Tiếp theo, Hạ Long hấp dẫn với vịnh nước kỳ vĩ và đảo quốc huyền bí. Tại Hang Múa, bạn sẽ ngỡ ngàng trước vẻ đẹp thiên nhiên và tận hưởng tầm nhìn toàn cảnh. Cuối cùng, thăm Bái Đính với kiến trúc độc đáo của chùa lớn và không khí tâm linh tuyệt vời.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hạ Long ','204.png', 4499000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hạ Long - Đảo Bạch Long Vĩ ', 'Tour du lịch "Hà Nội - Hạ Long - Đảo Bạch Long Vĩ" là hành trình tuyệt vời, kết hợp giữa sự huyền bí của thủ đô nghìn năm tuổi Hà Nội, với những di tích lịch sử và văn hóa, và vẻ đẹp tuyệt vời của vịnh Hạ Long với hàng nghìn đảo đá kỳ quặc. Hành trình tiếp tục đưa du khách đến Đảo Bạch Long Vĩ, một thiên đường hoang sơ, nơi họ có cơ hội khám phá bãi biển dịu dàng, thưởng thức ẩm thực độc đáo và tận hưởng không gian yên bình giữa biển cả.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Thác Bản Giốc ','205.png', 3399000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hồ Ba Bể - Thác Bản Gốc ', 'Tour du lịch này mang đến cho du khách một hành trình tuyệt vời qua những điểm đẹp tinh khôi của miền Bắc Việt Nam. Bắt đầu từ Hà Nội, thủ đô lịch sử với văn hóa độc đáo, du khách sẽ hòa mình trong không khí trấn an của Hồ Ba Bể, nơi hồ nước xanh bát ngát giữa những ngọn núi hùng vĩ. Chặng cuối cùng dẫn đến Thác Bản Gốc, nơi cảm nhận sức mạnh hùng vĩ của thiên nhiên và đắm chìm trong khung cảnh huyền bí, tạo nên một trải nghiệm du lịch đậm chất khám phá.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - chùa Tây Phương ','206.png', 3999000,@start_time, '1 ngày 0 đêm ', 'Hà Nội – chùa Thầy – Chùa Tây Phương', 'Hành trình du lịch này đưa du khách khám phá những địa điểm tâm linh tại miền Bắc Việt Nam. Từ Hà Nội, thành phố với vẻ đẹp hài hòa giữa nét cổ kính và hiện đại, du khách sẽ bắt đầu hành trình đến Chùa Thầy - nơi linh thiêng, trùng Hiếu khí tựa như thiên đàng hình trần. Tiếp theo là Chùa Tây Phương, điểm đến với kiến trúc độc đáo và tượng Phật đồ sộ. Tour du lịch này hứa hẹn mang đến trải nghiệm tâm linh và khám phá văn hóa độc đáo của miền Bắc.',50,'display'),
    ('Miền Bắc', 1, 'Bắc Ninh ','207.png', 2199000,@start_time, '1 ngày 0 đêm ', 'Hà nội – Bắc Ninh – Đền Đô ', 'Tour du lịch từ Hà Nội đến Bắc Ninh và Đền Đô là một hành trình hấp dẫn, mang đến trải nghiệm độc đáo của vùng miền Bắc Việt Nam. Khám phá sự hòa quyện giữa hiện đại và truyền thống tại thủ đô Hà Nội, nơi có lịch sử lâu dài và văn hóa đa dạng. Tại Bắc Ninh, du khách sẽ đắm chìm trong không khí bình yên của làng nghề truyền thống. Đến Đền Đô, một di tích lịch sử quan trọng, du khách sẽ khám phá kiến trúc độc đáo và tìm hiểu về câu chuyện lịch sử phong phú của vùng đất này.',50,'display'),
    ('Miền Bắc', 1, 'Tam Đảo - Đền Chúa Thượng ','208.png', 7299000,@start_time, '3 ngày 2 đêm ', 'Tam Đảo - Thác Bạc - Đền Chúa Thượng Ngàn ', 'Hành trình du lịch Tam Đảo - Thác Bạc - Đền Chúa Thượng Ngàn là một chuyến phiêu lưu đầy ắp với vẻ đẹp thiên nhiên hùng vĩ. Bắt đầu tại Tam Đảo, du khách sẽ khám phá thành phố nghỉ dưỡng với khí hậu mát mẻ và những con đường ngoằn nghèo quanh co. Tiếp theo là Thác Bạc, nơi dòng nước trong veo rơi từ độ cao, tạo ra cảnh quan huyền bí. Chuyến đi kết thúc tại Đền Chúa Thượng Ngàn, một ngôi đền linh thiêng với kiến trúc truyền thống, mang lại trải nghiệm tâm linh và tận hưởng vẻ đẹp tự nhiên tuyệt vời.',50,'display'),
    ('Miền Bắc', 1, 'Hà Nội - Hạ Long ','209.png', 2799000,@start_time, '4 ngày 3 đêm ', 'Hà Nội - Hạ Long - Đảo Tuần Châu - Hòn Đinh Hương ', 'Tour du lịch từ Hà Nội đến Hạ Long, Đảo Tuần Châu, và Hòn Đinh Hương là hành trình đầy ấn tượng giữa vẻ đẹp tự nhiên và di sản văn hóa. Khám phá thủ đô lịch sử Hà Nội với kiến trúc cổ kính, sau đó hướng ra Hạ Long, một trong Những Kỳ Quan Thiên Nhiên Thế Giới, nơi bạn sẽ ngạc nhiên trước vịnh biển hùng vĩ. Du khách tiếp tục đến Đảo Tuần Châu, nơi tận hưởng cảnh đẹp tuyệt vời và trải nghiệm hoạt động giải trí thú vị. Hành trình kết thúc ở Hòn Đinh Hương, nơi du khách thư giãn trong không khí yên bình và hòa mình vào huyền bí của vịnh Hạ Long.',50,'display'),
    ('Miền Bắc', 1, 'Hà Giang ','210.png', 7899000,@start_time, '3 ngày 2 đêm ', 'Hà Nội - Hà Giang - Sông Nho Quế ', 'Tour du lịch Hà Nội - Hà Giang - Sông Nho Quế là hành trình kỳ vĩ, mang đến trải nghiệm độc đáo giữa vùng thủ đô lịch sự và vùng miền núi hùng vĩ. Tại Hà Nội, du khách sẽ bắt đầu hành trình với những di tích lịch sử, văn hóa đặc sắc. Hành trình tiếp tục đến Hà Giang, nơi mênh mông những cánh đồng hào hùng, đỉnh núi cao vút và đường mòn ngoằn nghèo. Cuối cùng, Sông Nho Quế nối liền tâm hồn du khách với hình ảnh hữu tình của vùng quê tĩnh lặng.',50,'display');





-- Tạo dữ liệu cho bảng service_tours
INSERT INTO `service_tours` (`name`, `price`, `description`)
VALUES
    ('Gói Vip', 200000, 'Trải nghiệm tour du lịch vip với các tiện ích '),
    ('Vận Chuyển', 200000, 'Xe đưa đón tới tận nhà'),
    ('Thợ chụp ảnh', 1200000, 'Thuê một nhiếp ảnh gia chuyên nghiệp để chụp ảnh cho bạn trong các địa điểm du lịch đẹp.'),
    ('Thuê trang phục', 500000, 'Thuê trang phục: Cho phép bạn thuê trang phục đặc biệt để mặc trong suốt chuyến đi, ví dụ như trang phục truyền thống, trang phục cổ điển, trang phục của văn hóa địa phương và nhiều hơn nữa.'),
    ('Phòng riêng đơn', 500000, 'Cung cấp phòng riêng cho du khách đơn lẻ trong suốt chuyến đi');


INSERT INTO `valies` (`userId`, `tourId`, `numChildren`, `numAdult`) VALUES
        (1, 1, 2, 3),
        (2, 2, 1, 2),
        (3, 3, 2, 2);

-- Thêm dữ liệu cho bảng `Booking`
INSERT INTO `booking` (`userId`, `dateBooking`, `tourId`, `numChildren`, `numAdult`, `name`, `phone`,`email`, `address`,`dateStart`) VALUES
    (2, '2024-07-01', 1, 2, 3, 'Nguyễn Văn A', '123456789','123@gmail.com', '123 Đường ABC, Quận XYZ','2024-07-25'),
    (2, '2024-07-02', 2, 1, 2, 'Trần Thị B', '987654321','123@gmail.com', '456 Đường XYZ, Quận ABC','2024-07-23'),
    (2, '2024-07-03', 3, 2, 2, 'Phạm Văn C', '456123789','123@gmail.com', '789 Đường XYZ, Quận ABC','2024-07-17');
-- Chèn dữ liệu vào bảng `options`
INSERT INTO `options` (`departDate`, `serviceId`, `valiId`) VALUES
    ('2024-04-01', 1, 1),
    ('2024-04-02', 2, 2),
    ('2024-04-03', 3, 3);

-- Thêm dữ liệu cho bảng `bills`
INSERT INTO `bills` (`bookingId`, `paymentMethod`, `totalPrice`, `status`,`noteBill`) VALUES
    (1, 'Thanh toán khi nhận hàng', 500000, 'Chờ xác nhận',null),
    (2, 'Chuyển khoản ngân hàng', 750000, 'Đã xác nhận',null),
    (3, 'Thanh toán khi nhận hàng', 1000000, 'Đã hủy','Hủy bởi khách hàng');

-- Thêm dữ liệu cho bảng `customer`
INSERT INTO `customer` (`name`, `male`, `dateOfBirth`, `billId`) VALUES
    ('Nguyễn Văn A', 'Nam', '1990-05-15', 1),
    ('Trần Thị B', 'Nữ', '1985-08-20', 2),
    ('Phạm Văn C', 'Nam', '1995-12-10', 3);


-- Tạo bảng `images`
CREATE TABLE `images` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `URL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `tourId` int(11) NOT NULL,
                          PRIMARY KEY (`id`),
                          CONSTRAINT `fk_tour_image_id` FOREIGN KEY (`tourId`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Mô tả chi tiết lịch trình
DROP TABLE IF EXISTS `detailDuration`;
CREATE TABLE `detailDuration` (
                                  `id` int(11) NOT NULL AUTO_INCREMENT,
                                  `day1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `day2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `day3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `day4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `day5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `tourId` int(11) NOT NULL,
                                  PRIMARY KEY (`id`),
                                  CONSTRAINT `fk_tourId_detaildes` FOREIGN KEY (`tourId`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `images` (`URL`, `tourId`)
VALUES
    ('162.png', 1),
    ('15.jpg', 1),
    ('92.png', 1),
    ('201.png', 2),
    ('79.png', 2),
    ('43.jpg', 2),
    ('36.jpg', 3),
    ('128.jpg', 3),
    ('130.jpg', 3),
    ('157.png', 3),
    ('200.png', 4),
    ('8.jpg', 4),
    ('180.png', 5),
    ('201.png', 5),
    ('70.jpg', 6),
    ('51.jpg', 6),
    ('66.jpg', 6),
    ('10.jpg', 7),
    ('114.jpg', 7),
    ('181.png', 7),
    ('68.jpg', 7),
    ('59.jpg', 8),
    ('138.jpg', 8),
    ('3.jpg', 9),
    ('190.png', 9),
    ('141.png', 9),
    ('88.png', 10),
    ('201.png', 10),
    ('182.png', 10),
    ('102.jpg', 10),
    ('145.png', 11),
    ('76.png', 11),
    ('134.jpg', 12),
    ('75.png', 12),
    ('154.png', 12),
    ('181.png', 13),
    ('178.png', 13),
    ('86.png', 13),
    ('191.png', 14),
    ('103.jpg', 14),
    ('107.png', 14),
    ('190.png', 14),
    ('15.jpg', 15),
    ('131.jpg', 15),
    ('180.png', 16),
    ('66.jpg', 16),
    ('40.webp', 16),
    ('77.png', 17),
    ('108.jpg', 17),
    ('12.jpg', 17),
    ('74.png', 18),
    ('197.png', 18),
    ('82.png', 18),
    ('161.png', 18),
    ('170.png', 19),
    ('91.png', 19),
    ('134.jpg', 20),
    ('73.png', 20),
    ('110.jpg', 20),
    ('89.png', 21),
    ('8.jpg', 21),
    ('127.jpg', 21),
    ('24.webp', 21),
    ('74.png', 22),
    ('8.jpg', 22),
    ('102.jpg', 23),
    ('55.webp', 23),
    ('118.jpg', 23),
    ('44.jpg', 24),
    ('23.jpg', 24),
    ('53.jpg', 24),
    ('131.jpg', 25),
    ('15.jpg', 25),
    ('123.jpg', 25),
    ('84.png', 25),
    ('25.png', 26),
    ('120.jpg', 26),
    ('3.jpg', 27),
    ('90.png', 27),
    ('158.png', 27),
    ('39.jpg', 28),
    ('105.jpg', 28),
    ('61.jpg', 28),
    ('145.png', 29),
    ('25.png', 29),
    ('110.jpg', 29),
    ('172.png', 29),
    ('200.png', 30),
    ('145.png', 30),
    ('207.png', 31),
    ('32.jpg', 31),
    ('197.png', 31),
    ('142.png', 31),
    ('182.png', 32),
    ('150.png', 32),
    ('13.jpg', 33),
    ('157.png', 33),
    ('208.png', 33),
    ('200.png', 34),
    ('84.png', 34),
    ('200.png', 34),
    ('75.png', 35),
    ('120.jpg', 35),
    ('39.jpg', 35),
    ('159.png', 35),
    ('77.png', 36),
    ('52.jpg', 36),
    ('12.jpg', 37),
    ('104.jpg', 37),
    ('81.png', 37),
    ('96.jpg', 38),
    ('155.png', 38),
    ('120.jpg', 38),
    ('37.jpg', 39),
    ('133.jpg', 39),
    ('153.png', 39),
    ('80.png', 39),
    ('117.jpg', 40),
    ('50.jpg', 40),
    ('48.jpg', 41),
    ('14.jpg', 41),
    ('103.jpg', 41),
    ('91.png', 42),
    ('6.jpg', 42),
    ('138.jpg', 42),
    ('13.jpg', 42),
    ('18.jpg', 43),
    ('155.png', 43),
    ('53.jpg', 44),
    ('129.jpg', 44),
    ('77.png', 44),
    ('131.jpg', 45),
    ('114.jpg', 45),
    ('168.png', 45),
    ('143.png', 45),
    ('161.png', 46),
    ('136.jpg', 46),
    ('22.jpg', 47),
    ('185.png', 47),
    ('4.jpg', 47),
    ('16.jpg', 48),
    ('134.jpg', 48),
    ('168.png', 48),
    ('2.jpg', 49),
    ('172.png', 49),
    ('45.jpg', 49),
    ('204.png', 49),
    ('67.webp', 50),
    ('177.png', 50),
    ('136.jpg', 51),
    ('165.png', 51),
    ('108.jpg', 51),
    ('170.png', 51),
    ('5.jpg', 52),
    ('3.jpg', 52),
    ('141.png', 53),
    ('24.webp', 53),
    ('180.png', 53),
    ('146.png', 54),
    ('23.jpg', 54),
    ('182.png', 54),
    ('195.png', 55),
    ('186.png', 55),
    ('205.png', 55),
    ('30.jpg', 55),
    ('10.jpg', 56),
    ('13.jpg', 56),
    ('140.jpg', 57),
    ('9.jpg', 57),
    ('200.png', 57),
    ('63.jpg', 58),
    ('69.jpg', 58),
    ('141.png', 58),
    ('144.png', 59),
    ('68.jpg', 59),
    ('122.jpg', 59),
    ('96.jpg', 59),
    ('74.png', 60),
    ('184.png', 60),
    ('83.png', 61),
    ('109.jpg', 61),
    ('103.jpg', 61),
    ('64.jpg', 62),
    ('33.png', 62),
    ('134.jpg', 62),
    ('98.jpg', 62),
    ('9.jpg', 63),
    ('159.png', 63),
    ('97.jpg', 64),
    ('146.png', 64),
    ('175.png', 64),
    ('46.jpg', 65),
    ('207.png', 65),
    ('95.jpg', 65),
    ('196.png', 66),
    ('122.jpg', 66),
    ('62.jpg', 67),
    ('195.png', 67),
    ('144.png', 67),
    ('56.webp', 68),
    ('156.png', 68),
    ('110.jpg', 68),
    ('14.jpg', 69),
    ('142.png', 69),
    ('41.jpg', 69),
    ('154.png', 69),
    ('57.jpg', 70),
    ('62.jpg', 70),
    ('158.png', 71),
    ('134.jpg', 71),
    ('105.jpg', 72),
    ('100.jpg', 72),
    ('181.png', 72),
    ('154.png', 73),
    ('96.jpg', 73),
    ('153.png', 73),
    ('104.jpg', 74),
    ('190.png', 74),
    ('160.png', 74),
    ('101.jpg', 75),
    ('136.jpg', 75),
    ('89.png', 76),
    ('32.jpg', 76),
    ('115.jpg', 77),
    ('166.png', 77),
    ('180.png', 78),
    ('31.jpg', 78),
    ('167.png', 79),
    ('186.png', 79),
    ('93.png', 80),
    ('69.jpg', 80),
    ('184.png', 80),
    ('202.png', 80),
    ('182.png', 81),
    ('61.jpg', 81),
    ('119.jpg', 81),
    ('83.png', 82),
    ('205.png', 82),
    ('81.png', 83),
    ('166.png', 83),
    ('156.png', 83),
    ('192.png', 84),
    ('113.jpg', 84),
    ('11.jpg', 84),
    ('38.jpg', 84),
    ('6.jpg', 85),
    ('87.png', 85),
    ('37.jpg', 85),
    ('171.png', 85),
    ('6.jpg', 86),
    ('158.png', 86),
    ('65.jpg', 86),
    ('91.png', 87),
    ('136.jpg', 87),
    ('31.jpg', 87),
    ('159.png', 87),
    ('208.png', 88),
    ('64.jpg', 88),
    ('132.jpg', 88),
    ('74.png', 88),
    ('121.jpg', 89),
    ('99.jpg', 89),
    ('155.png', 89),
    ('77.png', 90),
    ('101.jpg', 90),
    ('22.jpg', 90),
    ('204.png', 91),
    ('196.png', 91),
    ('19.jpg', 91),
    ('200.png', 91),
    ('51.jpg', 92),
    ('124.jpg', 92),
    ('139.jpg', 92),
    ('74.png', 92),
    ('8.jpg', 93),
    ('46.jpg', 93),
    ('101.jpg', 93),
    ('102.jpg', 94),
    ('38.jpg', 94),
    ('91.png', 94),
    ('65.jpg', 95),
    ('151.png', 95),
    ('3.jpg', 95),
    ('27.jpg', 95),
    ('105.jpg', 96),
    ('116.jpg', 96),
    ('128.jpg', 96),
    ('106.png', 96),
    ('26.webp', 97),
    ('150.png', 97),
    ('144.png', 98),
    ('3.jpg', 98),
    ('134.jpg', 98),
    ('80.png', 99),
    ('44.jpg', 99),
    ('26.webp', 100),
    ('55.webp', 100),
    ('94.png', 101),
    ('189.png', 101),
    ('49.jpg', 102),
    ('199.png', 102),
    ('170.png', 102),
    ('117.jpg', 103),
    ('164.png', 103),
    ('206.png', 104),
    ('18.jpg', 104),
    ('130.jpg', 105),
    ('104.jpg', 105),
    ('25.png', 106),
    ('51.jpg', 106),
    ('27.jpg', 106),
    ('62.jpg', 106),
    ('171.png', 106),
    ('41.jpg', 107),
    ('81.png', 107),
    ('131.jpg', 107),
    ('26.webp', 107),
    ('188.png', 107),
    ('106.png', 107),
    ('194.png', 107),
    ('38.jpg', 108),
    ('152.png', 108),
    ('128.jpg', 108),
    ('51.jpg', 108),
    ('64.jpg', 109),
    ('94.png', 109),
    ('15.jpg', 109),
    ('130.jpg', 109),
    ('143.png', 109),
    ('97.jpg', 109),
    ('139.jpg', 110),
    ('87.png', 110),
    ('10.jpg', 110),
    ('84.png', 110),
    ('109.jpg', 111),
    ('111.jpg', 111),
    ('167.png', 111),
    ('19.jpg', 111),
    ('40.webp', 111),
    ('115.jpg', 111),
    ('207.png', 112),
    ('176.png', 112),
    ('107.png', 112),
    ('171.png', 112),
    ('38.jpg', 113),
    ('29.jpg', 113),
    ('131.jpg', 113),
    ('208.png', 113),
    ('154.png', 113),
    ('127.jpg', 113),
    ('80.png', 114),
    ('14.jpg', 114),
    ('139.jpg', 114),
    ('147.png', 115),
    ('9.jpg', 115),
    ('18.jpg', 115),
    ('193.png', 115),
    ('23.jpg', 116),
    ('5.jpg', 116),
    ('18.jpg', 116),
    ('108.jpg', 116),
    ('87.png', 117),
    ('44.jpg', 117),
    ('142.png', 117),
    ('66.jpg', 117),
    ('98.jpg', 118),
    ('68.jpg', 118),
    ('2.jpg', 118),
    ('38.jpg', 118),
    ('51.jpg', 118),
    ('13.jpg', 118),
    ('169.png', 119),
    ('24.webp', 119),
    ('52.jpg', 119),
    ('15.jpg', 120),
    ('5.jpg', 120),
    ('171.png', 120),
    ('91.png', 120),
    ('210.png', 121),
    ('25.png', 122),
    ('85.png', 123),
    ('6.jpg', 123),
    ('160.png', 123),
    ('163.png', 123),
    ('115.jpg', 124),
    ('190.png', 125),
    ('161.png', 126),
    ('183.png', 127),
    ('26.webp', 127),
    ('79.png', 127),
    ('143.png', 128),
    ('72.png', 128),
    ('57.jpg', 128),
    ('140.jpg', 128),
    ('123.jpg', 129),
    ('144.png', 129),
    ('141.png', 130),
    ('149.png', 130),
    ('104.jpg', 131),
    ('131.jpg', 131),
    ('116.jpg', 132),
    ('184.png', 132),
    ('207.png', 133),
    ('157.png', 133),
    ('40.webp', 134),
    ('146.png', 134),
    ('93.png', 135),
    ('173.png', 135),
    ('117.jpg', 136),
    ('99.jpg', 136),
    ('192.png', 137),
    ('165.png', 137),
    ('196.png', 138),
    ('208.png', 138),
    ('149.png', 139),
    ('126.jpg', 139),
    ('107.png', 139),
    ('38.jpg', 139),
    ('121.jpg', 139),
    ('147.png', 139),
    ('97.jpg', 139),
    ('90.png', 140),
    ('117.jpg', 140),
    ('5.jpg', 141),
    ('146.png', 141),
    ('133.jpg', 141),
    ('28.jpg', 141),
    ('55.webp', 142),
    ('90.png', 142),
    ('135.jpg', 142),
    ('178.png', 142),
    ('103.jpg', 143),
    ('201.png', 143),
    ('3.jpg', 143),
    ('50.jpg', 144),
    ('133.jpg', 144),
    ('111.jpg', 144),
    ('158.png', 145),
    ('128.jpg', 145),
    ('155.png', 145),
    ('194.png', 145),
    ('166.png', 146),
    ('128.jpg', 146),
    ('203.png', 146),
    ('177.png', 146),
    ('23.jpg', 147),
    ('71.png', 147),
    ('151.png', 147),
    ('9.jpg', 147),
    ('88.png', 148),
    ('190.png', 148),
    ('137.jpg', 148),
    ('203.png', 149),
    ('121.jpg', 149),
    ('203.png', 149),
    ('145.png', 149),
    ('74.png', 150),
    ('123.jpg', 150),
    ('204.png', 150),
    ('134.jpg', 150),
    ('99.jpg', 151),
    ('38.jpg', 151),
    ('165.png', 151),
    ('144.png', 152),
    ('48.jpg', 152),
    ('133.jpg', 152),
    ('22.jpg', 153),
    ('202.png', 153),
    ('26.webp', 153),
    ('161.png', 154),
    ('93.png', 154),
    ('61.jpg', 154),
    ('77.png', 154),
    ('15.jpg', 155),
    ('209.png', 155),
    ('187.png', 155),
    ('11.jpg', 155),
    ('3.jpg', 156),
    ('198.png', 156),
    ('117.jpg', 156),
    ('183.png', 157),
    ('42.jpg', 157),
    ('26.webp', 157),
    ('182.png', 158),
    ('32.jpg', 158),
    ('19.jpg', 158),
    ('155.png', 158),
    ('164.png', 159),
    ('168.png', 159),
    ('60.jpg', 159),
    ('192.png', 159),
    ('15.jpg', 160),
    ('38.jpg', 160),
    ('70.jpg', 160),
    ('73.png', 161),
    ('205.png', 161),
    ('78.png', 162),
    ('116.jpg', 162),
    ('117.jpg', 162),
    ('19.jpg', 162),
    ('57.jpg', 163),
    ('172.png', 163),
    ('69.jpg', 163),
    ('103.jpg', 164),
    ('148.png', 164),
    ('157.png', 164),
    ('26.webp', 164),
    ('103.jpg', 164),
    ('97.jpg', 165),
    ('120.jpg', 165),
    ('40.webp', 165),
    ('8.jpg', 165),
    ('88.png', 166),
    ('142.png', 166),
    ('188.png', 166),
    ('167.png', 166),
    ('154.png', 167),
    ('196.png', 167),
    ('171.png', 167),
    ('66.jpg', 167),
    ('73.png', 168),
    ('12.jpg', 168),
    ('74.png', 168),
    ('157.png', 168),
    ('164.png', 169),
    ('70.jpg', 169),
    ('172.png', 169),
    ('129.jpg', 169),
    ('119.jpg', 170),
    ('163.png', 170),
    ('113.jpg', 170),
    ('84.png', 170),
    ('197.png', 171),
    ('52.jpg', 171),
    ('20.jpg', 171),
    ('176.png', 171),
    ('89.png', 172),
    ('17.jpg', 172),
    ('100.jpg', 172),
    ('209.png', 173),
    ('9.jpg', 173),
    ('151.png', 173),
    ('204.png', 174),
    ('105.jpg', 174),
    ('91.png', 174),
    ('41.jpg', 174),
    ('207.png', 175),
    ('46.jpg', 175),
    ('36.jpg', 175),
    ('210.png', 175),
    ('208.png', 176),
    ('163.png', 176),
    ('69.jpg', 176),
    ('121.jpg', 177),
    ('148.png', 177),
    ('100.jpg', 177),
    ('190.png', 177),
    ('18.jpg', 178),
    ('104.jpg', 178),
    ('22.jpg', 178),
    ('166.png', 178),
    ('205.png', 179),
    ('33.png', 179),
    ('113.jpg', 179),
    ('61.jpg', 179),
    ('200.png', 179),
    ('181.png', 180),
    ('90.png', 180),
    ('169.png', 180),
    ('183.png', 180),
    ('82.png', 181),
    ('78.png', 181),
    ('123.jpg', 182),
    ('143.png', 182),
    ('82.png', 183),
    ('20.jpg', 183),
    ('72.png', 184),
    ('96.jpg', 185),
    ('98.jpg', 185),
    ('126.jpg', 186),
    ('3.jpg', 186),
    ('177.png', 186),
    ('19.jpg', 187),
    ('101.jpg', 187),
    ('90.png', 187),
    ('40.webp', 188),
    ('143.png', 188),
    ('22.jpg', 188),
    ('38.jpg', 189),
    ('59.jpg', 189),
    ('121.jpg', 189),
    ('200.png', 190),
    ('107.png', 190),
    ('23.jpg', 190),
    ('82.png', 190),
    ('9.jpg', 191),
    ('39.jpg', 191),
    ('191.png', 191),
    ('209.png', 192),
    ('204.png', 192),
    ('156.png', 193),
    ('74.png', 193),
    ('174.png', 194),
    ('167.png', 194),
    ('185.png', 194),
    ('37.jpg', 195),
    ('103.jpg', 195),
    ('173.png', 195),
    ('132.jpg', 196),
    ('191.png', 196),
    ('104.jpg', 196),
    ('195.png', 197),
    ('82.png', 197),
    ('124.jpg', 197),
    ('73.png', 197),
    ('20.jpg', 198),
    ('39.jpg', 198),
    ('99.jpg', 198),
    ('15.jpg', 199),
    ('37.jpg', 199),
    ('92.png', 199),
    ('118.jpg', 200),
    ('55.webp', 200),
    ('169.png', 200),
    ('106.png', 201),
    ('96.jpg', 201),
    ('107.png', 201),
    ('40.webp', 202),
    ('50.jpg', 202),
    ('179.png', 202),
    ('114.jpg', 202),
    ('184.png', 203),
    ('30.jpg', 203),
    ('210.png', 203),
    ('20.jpg', 203),
    ('87.png', 204),
    ('31.jpg', 204),
    ('29.jpg', 204),
    ('161.png', 205),
    ('5.jpg', 205),
    ('125.jpg', 205),
    ('148.png', 206),
    ('191.png', 207),
    ('117.jpg', 208),
    ('183.png', 208),
    ('37.jpg', 208),
    ('9.jpg', 209),
    ('163.png', 209),
    ('10.jpg', 209),
    ('67.webp', 209),
    ('130.jpg', 210),
    ('204.png', 210),
    ('146.png', 210);

INSERT INTO `detailDuration` (`day1`, `day2`, `day3`, `day4`, `day5`, `tourId`)
VALUES
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 1),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 2),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 3),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 4),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 5),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 6),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 7),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 8),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 9),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 10),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 11),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 12),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 13),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 14),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 15),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 16),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 17),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 18),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 19),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 20),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 21),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 22),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 23),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 24),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 25),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 26),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 27),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 28),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 29),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 30),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 31),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 32),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 33),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 34),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 35),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 36),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 37),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 38),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 39),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 40),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 41),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 42),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 43),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 44),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 45),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 46),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 47),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 48),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 49),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 50),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 51),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 52),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 53),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 54),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 55),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 56),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 57),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 58),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 59),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 60),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 61),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 62),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 63),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 64),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 65),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 66),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 67),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 68),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 69),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 70),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 71),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 72),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 73),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 74),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 75),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 76),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 77),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 78),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 79),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 80),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 81),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 82),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 83),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 84),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 85),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 86),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 87),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 88),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 89),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 90),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 91),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 92),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 93),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 94),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 95),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 96),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 97),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 98),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 99),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 100),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 101),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 102),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 103),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 104),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 105),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 106),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 108),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 109),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 110),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 111),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 112),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 113),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 114),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 115),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 116),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 117),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 118),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 119),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 120),
    ('Day 1 activities',null, null, null, null, 121),
    ('Day 1 activities',null, null, null, null, 122),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 123),
    ('Day 1 activities',null, null, null, null, 124),
    ('Day 1 activities',null, null, null, null, 125),
    ('Day 1 activities',null, null, null, null, 126),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 127),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 128),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 129),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 130),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 131),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 132),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 133),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 134),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 135),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 136),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 137),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 138),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 140),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 141),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 142),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 143),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 144),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 145),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 146),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 147),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 148),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 149),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 150),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 151),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 152),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 153),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 154),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 155),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 156),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 157),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 158),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 159),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 160),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 161),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 162),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 163),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 164),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 165),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 166),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 167),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 168),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 169),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 170),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 171),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 172),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 173),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 174),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 175),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 176),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 177),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 178),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', 'Day 5 activities', 179),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 180),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 181),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 182),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 183),
    ('Day 1 activities',null, null, null, null, 184),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 185),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 186),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 187),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 188),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 189),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 190),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 191),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 192),
    ('Day 1 activities', 'Day 2 activities',null, null, null, 193),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 194),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 195),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 196),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 197),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 198),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 199),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 200),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 201),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 202),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 203),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 204),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 205),
    ('Day 1 activities',null, null, null, null, 206),
    ('Day 1 activities',null, null, null, null, 207),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 208),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', 'Day 4 activities', null, 209),
    ('Day 1 activities', 'Day 2 activities', 'Day 3 activities', null, null, 210);