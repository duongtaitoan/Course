-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshop
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `captcha`
--

DROP TABLE IF EXISTS `captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha` (
  `email` varchar(250) NOT NULL,
  `captcha` varchar(250) NOT NULL,
  `timelife` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha`
--

LOCK TABLES `captcha` WRITE;
/*!40000 ALTER TABLE `captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `expert_id` int NOT NULL,
  `course_type` varchar(50) NOT NULL,
  `course_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` mediumtext,
  `content` mediumtext,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `is_available` tinyint DEFAULT NULL,
  `rating` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mentor_id` int DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lessonID` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,0,'CNTT','Xây dựng Website ','Xây dựng Website Responsive với HTML5, CSS3','Khóa học bao gồm 14 chương với 76 bài giảng. ',4900000,10,1,'4',1,'https://static.unica.vn/upload/images/2019/04/hoc-lap-trinh-java-trong-4-tuan_m_1555641940.jpg',1),(2,0,'Ngoại Ngữ','Tiếng Anh','Anh văn giao tiếp cho người hoàn toàn mất gốc','Học một ngôn ngữ đồng nghĩa với việc bạn sẽ học thêm một ngôn ngữ của một nền văn hóa. Hiện nay, Tiếng Anh được xem là ngôn ngữ chung của thế giới, vì vậy ngày càng nhiều người Việt đầu tư học tiếng Anh. ',2999000,20,1,'5',2,'https://static.unica.vn/upload/images/2019/04/anh-van-giao-tiep-cho-nguoi-hoan-toan-mat-goc_m_1555555777.jpg',2),(3,0,'Ngoại Ngữ','Tiếng Trung','Tiếng trung sơ cấp 1','Giáo trình có 65 bài giảng bao gồm 10 phần học chính',1999000,20,1,'4',3,'https://static.unica.vn/upload/images/2019/06/tieng-trung-so-cap-2_m_1561366544.jpg',3),(4,0,'Ngoại Ngữ','Tiếng Nhật','Chinh phục kỳ thi năng lực tiếng Nhật N3','Khóa học ôn luyện N3 gồm 5 chương với 40 bài học hướng dẫn từ bố cục, cấu trúc đề thi cho đến các mẫu ngữ pháp trọng điểm, cách ôn tập và xử lý bài thi giúp bạn không những nắm rõ được chương trình thi, từ đó phân bổ thời gian học, mà còn giúp bạn tìm ra điểm yếu và điểm mạnh của bản thân để có định hướng phù hợp. ',2999000,15,1,'3',4,'https://static.unica.vn/upload/images/2019/06/chinh-phuc-nang-luc-tieng-nhat-n3_m_1561427542.jpg',4),(5,0,'Ngoại Ngữ','Tiếng Hàn','Học giao tiếp tiếng Hàn thật dễ','Tất cả những vấn đề đó của bạn sẽ được giải quyết nhanh chóng với khóa Học giao tiếp tiếng Hàn thật dễ cùng giảng viên xinh đẹp Châu Thùy Trang trên UNICA. Khóa học trang bị cho bạn kho từ vựng tiếng Hàn trong sinh hoạt, giao tiếp hàng ngày, cũng như kiến thức ngữ pháp cơ bản nhất, để bạn có thể tự tin trong giao tiếp và trò chuyện cùng người Hàn Quốc.',2500000,15,1,'5',5,'https://static.unica.vn/upload/images/2019/04/hoc-giao-tiep-tieng-han-that-de_m_1555558815.jpg',5),(6,0,'Ngoại Ngữ','Tiếng Trung du Lịch','Ước mơ của bạn là đi du lịch vòng quanh thế giới?','Giáo trình có 28 bài giảng bao gồm 2 phần học ngoại ngữ online',1000000,10,1,'4',6,'https://static.unica.vn/upload/images/2019/06/tieng-trung-du-lich_m_1561538317.jpg',6),(7,0,'Marketing','Chứng Khoán','Khóa học chứng khoán','Bao quát thị trường hiện nay và nghiên cứu các dòng chứng khoản và bất đổng sản khác. Áp dụng kiến thức để đầu tư chứng khoán mang lại lợi nhuận và giảm chi phi cho người chơi chứng khoán',1500000,18,1,'5',7,'https://static.unica.vn/upload/images/2019/05/lam-chu-he-thong-marketing-thong-minh_m_1557995435.jpg',7),(8,0,'Marketing','Kinh Tế','Phân tích dự án ','Xem sét dự án của 1 công ty và đưa ra yêu cầu phân tích bao quanh dự án. Khi cần thiết để giảm chi phí ',1900000,20,1,'5',8,'https://static.unica.vn/uploads/images/linhntd@unica.vn/Van_Thuong_Hi_m.jpg',8),(9,0,'Marketing','Design','Dùng ứng dụng 3D để Design 1 mô hình','Mô hình vẽ bao quát hết những đời sống thực thế sử dụng',1800000,15,1,'4',9,'https://static.unica.vn/upload/images/2019/04/Vua-email-marketing-han-quang-du_m_1555569804.jpg',9),(10,0,'Kỹ năng mềm','Tall show','Kỹ năng giao tiếp','Bao gồm các bố cục phân tích trước khi tương tác với mọi người',1000000,25,1,'4',10,'https://static.unica.vn/upload/images/2019/04/bi-quyet-viet-cv-du-phong-van_m_1555575879.jpg',10),(11,0,'Kỹ năng mềm','Sử dụng Power Point','Cách sử dụng Power Point và template mới','Ứng dụng các icon và template để thiết kế 1 Power Point đẹp',1500000,25,1,'4',1,'https://static.unica.vn/upload/images/2019/04/giai-ma-tinh-cach-qua-sinh-trac-van-tay_m_1555642638.jpg',11),(12,0,'Kỹ năng mềm','Sử dụng Word','Kỹ năng giao tiếp ứng xử trong xã hội','Hỗ trợ người mới một cách cẩn thận từng bước khi sử dụng ứng dụng. Các ứng dụng sẽ được khóa học cung cấp cụ thể và thời hạn sử dụng ứng dụng. Các bạn sẽ được thực hành và trải nghiệm nhiều kĩ năng khi sử dụng word.',1750000,25,1,'4',2,'https://static.unica.vn/upload/images/2019/04/ky-nang-giao-tiep-va-ung-xu-hieu-qua_m_1555642567.jpg',12),(13,0,'Kỹ năng mềm','Kỹ thuật đàm phán','Phân tích vấn đề và đưa ra yêu cầu đàm phán','Dựa trên tình hình hiện tại và xã hội phân tích và đưa ra đàm phán. Các kỹ năng đàm phán cần được phân tích cụ thể khi giao tiếp với người đối diện. Cần đưa ra các phân tích thích hợp để giúp kỹ năng đàm phát tốt nhất',1400000,15,1,'5',3,'https://static.unica.vn/upload/images/2019/04/khoa-hoc-tu-duy-dot-phat_m_1555658528.jpg',13),(14,0,'Sale','Kỹ thuật khi sale','Tương tác với khách hàng và cách sale','Phân tích và đánh giá người mua. Tìm ra điểm yêu cầu đối với khách hàng họ cần gì và muốn trải nghiệm sản phẩm nào. Từ đó giới thiệu tới khách hàng chi tiết về sản phẩm cũng như là sản phẩm liên quan .',1200000,18,1,'5',4,'https://static.unica.vn/upload/images/2019/06/phan-tich-ky-thuat-co-ban-den-nang-cao-trong-chung-khoan_m_1561535923.jpg',14),(15,0,'Sale','Kỹ thuật làm việc nhóm','Thu nhập thu động','Lên kế hoạch trước mỗi ngày hoặc tuần để giao công việc cho nhân viên',500000,20,1,'5',5,'https://static.unica.vn/upload/images/2022/01/Untitled-design_m_1642599011.jpg',15),(16,0,'Kinh doanh và khởi nghiệp','Quản trị cuộc đời ','Quản trị cuộc đời - Đường đến thành công','Với mong muốn chia sẻ kiến thức và kinh nghiệm sống thực tế tới tất cả mọi người, đặc biệt là với các bạn trẻ, TS.Lê Thẩm Dương sẽ giúp bạn giúp mọi người định vị lại chính mình và cuộc đời mình, biết trân trọng và yêu quý hơn những giá trị riêng có của bản thân để tự tin quản trị và sống cuộc đời của chính mình. Mỗi một cá thể là một thế giới riêng không ai có thể hiểu được bạn ngoài chính bản thân bạn, nhiệm vụ của chúng ta là khám phá nó và thành công, hạnh phúc đều khởi nguồn từ hành trình khám phá vô tận này. ',1200000,25,1,'4',6,'https://static.unica.vn/upload/images/2019/04/quan-tri-cuoc-doi-le-tham-duong_m_1555575906.jpg',15),(17,0,'Kinh doanh và khởi nghiệp','Thành công ở tuổi 18-25','Làm chủ tuổi 20','Và kết thúc bài viết này thì tôi có một món quà cho các bạn. Đó chính là những điều sau khoá học này bạn nhận được:',999000,39,1,'5',7,'https://static.unica.vn/upload/images/2019/04/lam-chu-tuoi-20_m_1555564799.jpg',14),(18,0,'Thiết kế','Tuyệt chiêu REVIT ARCH','Thiết lập thông số trong Revit Architecture','Nội dung khóa học Revit online được chia thành 4 level từ sơ cấp cho đến level đỉnh cao phù hợp với tất cả những ai muốn học REVIT ARCH từ đầu ',1000000,40,1,'4',8,'https://static.unica.vn/upload/images/2019/04/hoc-ky-nang-photoshop-cho-hoa-si-concept-art_m_1555642039.jpg',13),(19,0,'Thiết kế','Photoshop Concept Art','Kỹ năng photoshop cho họa sỹ Concept Art','Khóa học được thiết kế nhằm cung cấp những kiến thức cơ bản nhất cho đến những kiến thức nâng cao để các bạn có thể đáp ứng được nhu cầu của nhà tuyển dụng.',800000,25,1,'4',9,'https://static.unica.vn/upload/images/2019/06/dung-hinh-3d-voi-autodesk-maya_m_1561370281.jpg',12),(20,0,'Tin học văn phòng','PowerPoint','Thiết kế Powerpoint chuyên nghiệp','PowerPoint là một trong những công cụ tuyệt vời giúp bạn có được bài thuyết trình ấn tượng, cuốn hút. Là ứng dụng được tích hợp trong bộ Microsoft Office, PowerPoint cung cấp các công cụ xử lý văn bản, vẽ đồ thị, lên ý tưởng trình bày, phác thảo, tất cả giúp bạn tạo nên gói đồ họa trình bày hoàn chỉnh và đẹp mắt. ',500000,35,1,'4',10,'https://static.unica.vn/upload/images/2019/04/thiet-ke-powerpoint-chuyen-nghiep_m_1555572817.jpg',11),(21,0,'Bán hàng','Chốt sale','Tuyệt chiêu để chốt Sales','Giáo trình có 18 bài giảng bao gồm 5 phần chính như sau',650000,30,1,'5',1,'https://static.unica.vn/upload/images/2019/05/tuyet-chieu-de-chot-sale_m_1557996232.jpg',10),(22,0,'Phong cách sống','Cờ vua','Nhập môn cờ vua cho người mới bắt đầu','Các nhà khoa học thế giới đã chứng minh được rằng chơi cờ vua sẽ giúp chống lại được sự trì trệ, chậm chạp của bộ não và giúp cho cả hai bán cầu não được thường xuyên làm việc. Chỉ số thông minh IQ được tăng cường, kích thích sự sáng tạo, tư duy sắc sảo, logic hơn, kích thích sự hưng phấn của não giúp cho não phát triển và nâng cao hơn các chức năng của não bộ.',400000,28,1,'4',2,'https://static.unica.vn/upload/images/2019/06/nhap-mon-co-vua-cho-nguoi-bat-dau_m_1561366306.jpg',9),(23,0,'Sức khoẻ','Massage ','Massage dưỡng sinh Đầu - Vai - Gáy','Phương pháp Massage dưỡng sinh đầu - vai - gáy là phương pháp bảo vệ sức khỏe và thư giãn hệ thần kinh hiệu quả nhất, giúp tăng cường thể chất, củng cố hệ miễn dịch, nâng cao sức đề kháng cho cơ thể.',500000,40,1,'4',3,'https://static.unica.vn/upload/images/2019/05/massage-duong-sinh-dau-vai-gay_m_1557995407.jpg',8);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackID` int NOT NULL,
  `courseID` int DEFAULT NULL,
  `feedbackDetailsID` int DEFAULT NULL,
  `userID` int DEFAULT NULL,
  PRIMARY KEY (`feedbackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,2),(5,1,5,2),(6,1,6,2),(7,1,7,1),(8,1,8,1),(9,1,9,2),(10,1,10,1),(11,2,11,1),(12,2,12,2),(13,2,13,3),(14,2,14,4),(15,2,15,4),(16,3,16,3),(17,3,17,2),(18,3,18,1),(19,3,19,1),(20,3,20,2),(21,4,21,3),(22,4,22,4),(23,4,23,4),(24,4,24,3),(25,4,25,2),(26,5,26,1),(27,5,27,1),(28,5,28,2),(29,5,29,3),(30,6,30,4),(31,6,31,4),(32,6,32,3),(33,6,33,2),(34,7,34,1),(35,7,35,1),(36,7,36,2),(37,7,37,3),(38,7,38,4),(39,7,39,4),(40,7,40,3),(41,8,41,5),(42,8,42,4),(43,8,43,4),(44,8,44,4),(45,9,45,3),(46,9,46,2),(47,9,47,4),(48,9,48,3),(49,9,49,2),(50,10,50,2),(51,10,51,1),(52,10,52,1),(53,10,53,2),(54,10,54,3),(55,10,55,4),(56,11,56,4),(57,11,57,3),(58,11,58,2),(59,11,59,1),(60,12,60,1),(61,12,61,2),(62,12,62,3),(63,12,63,4),(64,12,64,4),(65,13,65,3),(66,13,66,2),(67,13,67,1),(68,13,68,1),(69,13,69,2),(70,13,70,3),(71,14,71,4),(72,14,72,1),(73,14,73,2),(74,15,74,3),(75,15,75,4);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackdetails`
--

DROP TABLE IF EXISTS `feedbackdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbackdetails` (
  `feedbackDetailsID` int NOT NULL,
  `feedbackContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `dateFeedback` datetime DEFAULT NULL,
  PRIMARY KEY (`feedbackDetailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackdetails`
--

LOCK TABLES `feedbackdetails` WRITE;
/*!40000 ALTER TABLE `feedbackdetails` DISABLE KEYS */;
INSERT INTO `feedbackdetails` VALUES (1,'khóa học có nhiều nội dung thiết thực',5,'2022-03-05 00:00:00'),(2,'Kiến thức thực tiễn cho người mới bắt đầu, giáo viên tâm huyết. Có nhiều kiến thức để bạn học hỏi khi bắt đầu tham gia thi trường chứng khoán',5,'2022-04-07 00:00:00'),(3,'Mình rất thích các khóa học về đầu tư chứng khoán của thầy Khang. Thầy tạo những nền tảng chắc chắn và những lơi khuyên hữu ích cho nhà đầu tư F0',5,'2022-01-03 00:00:00'),(4,'Tuyệt vời, học đi đôi với hành sẽ giúp mọi người có thành quả tốt.',4,'2022-03-05 00:00:00'),(5,'Khóa học rất hữu ích dành cho những người mới bắt đầu tiếp cận vào thị trường chứng khoán giống như tôi, cảm ơn Unica, cảm ơn giảng viên Đặng Trọng Khang rất nhiều. Rất mong nhận được nhiều khóa học bổ ích hơn nữa, trân trọng.',4,'2022-04-04 00:00:00'),(6,'Khóa học rất hay và bổ ích. Từ lý thuyết đến ví dụ Thầy trình bày tỉ mỉ dễ hiểu và dễ vận dụng. Cảm ơn Thầy Khang nhiều!',4,'2022-03-05 00:00:00'),(7,'Khóa học thực sự rất hữu ích với rất nhiều những kiến thức từ căn bản đến nâng cao dần cho người học, cho những nhà đầu tư mới',5,'2022-04-04 00:00:00'),(8,'Khóa học có rất nhiều kiến thức hay và bổ ích dành cho những nhà đầu tư',5,'2022-04-03 00:00:00'),(9,'Khóa học hay, bổ ích cung cấp những kiến thức cơ bản cho những bạn đang muốn tìm hiểu để đầu tư vào thị trường chứng khoán. Đặc biệt khóa học sẽ định hướng cho bạn cách chọn một cổ phiếu tốt trên thị trường.',4,'2022-01-03 00:00:00'),(10,'Thầy giảng chi tiết, phân mục rõ ràng. Mục tiêu hiểu được giá trị cốt lõi của đầu tư',4,'2022-04-03 00:00:00'),(11,'Khóa học thật tuyệt vời',3,'2022-01-03 00:00:00'),(12,'Xem đi xem lại vẫn thấy hay',4,'2022-04-07 00:00:00'),(13,'Bài học rất bổ ich. Xin Cảm ơn',5,'2022-01-03 00:00:00'),(14,'Nội dung cơ bản, chuyên sâu hơn sẽ tuyệt',4,'2022-04-08 00:00:00'),(15,'bài học hay dễ hiểu và áp dụng được ngay.',5,'2022-04-03 00:00:00'),(16,'Khóa học này rất hữu ích , em học chủ yếu trên các video youtube nên không có lộ trình hay sườn bài cụ thể. Cảm thấy được khai sáng tất cả ',3,'2022-04-04 00:00:00'),(17,'khóa học cần có nội dung thiết thực để áp dụng vào thực tế hơn',2,'2022-04-07 00:00:00'),(18,'khóa học không hứng thú người học',1,'2022-03-05 00:00:00'),(19,'Kiến thức thực tiễn cho người mới bắt đầu, giáo viên tâm huyết. Có nhiều kiến thức để bạn học hỏi khi bắt đầu tham gia thi trường chứng khoán',4,'2022-04-03 00:00:00'),(20,'Bài học rất hay mong thầy có thêm những bài học nữa ạ',5,'2022-03-05 00:00:00'),(21,'Cảm ơn Thầy, bài giảng rất chi tiết, hữu ích, mang tính cập nhật cao. Cuối khóa học còn có bài kiểm tra để nhớ lại kiến thức. Một lần nữa cảm ơn Thầy đã \"dốc túi\" giảng dạy. Mong sẽ thấy được nhiều bài học chất lượng từ Thầy ạ!',4,'2022-04-08 00:00:00'),(22,'Khóa học tạm ổn',3,'2022-04-07 00:00:00'),(23,'Khóa học chưa tập trung nội dung chính',2,'2022-04-04 00:00:00'),(24,'Bài học quá hay và thiết thực. Quả đáng đồng tiền bát gạo',4,'2022-04-08 00:00:00'),(25,'Cho mình tham gia nhóm trên facebook, hướng dẫn cho mình link nha, cám ơn nhiều',5,'2022-04-04 00:00:00'),(26,'So với mức học phí thì khóa học giá trị hơn rất nhiều. Khóa học cung cấp những kiến thức gần như toàn diện cho việc chạy google ads. Cám ơn Thầy, cám ơn UNICA.',5,'2022-04-08 00:00:00'),(27,'rất bỏ ích, e đã từng tự chạy quảng cáo ad nhưng học xong mới thấy vì sao trước kia mình chạy lại tốn tiền mà không hiệu quả',5,'2022-03-05 00:00:00'),(28,'Nội dung khóa học cô đọng và rất hay, cảm ơn thầy và các bạn ê-kip thực hiện!',4,'2022-04-07 00:00:00'),(29,'Những nội dung có giao diện Google cũ nên sửa mới thành giao diện Google mới',3,'2022-04-04 00:00:00'),(30,'cảm ơn thầy đã khai mở nhận thức và suy nghĩ cho em. Rất mong chờ các bài giảng tiếp theo của thầy',4,'2022-04-03 00:00:00'),(31,'Cảm ơn thầy đã hệ thống rất bài bản. Xem tới đâu phê tới đó. Quá nhiều thứ để áp dụng. Rất đáng đồng tiền bát gạo',5,'2022-04-08 00:00:00'),(32,'Nên để thêm slide để học viên dễ tiếp cận hơn',3,'2022-03-05 00:00:00'),(33,'cảm ơn thầy rât nhiều . e chúc thầy nhiều sức khỏe để cống hiến nhiều hơn cho thế hệ trẻ việt nam .xây dựng đât nước mình giàu mạnh .',4,'2022-03-07 00:00:00'),(34,'Khóa học tuyệt vời. Học xong, bắt đầu làm. Các động tác bắt đầu. Nhưng còn học thêm khóa Đam mê - Chìa khóa thành công ở edumall để trọn vẹn về Năng lực và 3 cụm lông nhím. Hãy học đi và làm đi. Chúc các bạn não nhăn thêm vài nếp.',5,'2022-03-05 00:00:00'),(35,'Nội dung giảng không được chỉnh chu cần chỉnh lại',3,'2022-03-07 00:00:00'),(36,'Kiến thức thầy chia sẻ em đang rất cần ạ, em sẽ áp dụng để quản trị cuộc đời để thành công hơn nữa ạ, chân thành cảm ơn thầy',5,'2022-03-07 00:00:00'),(37,'Nội dung khá ổn giảng viên tốt nhưng thiếu tập trung vào slide',3,'2022-04-03 00:00:00'),(38,'Những nội dung trên khong áp dụng vào thực tiễn',2,'2022-04-07 00:00:00'),(39,'Bài học không hấp dẫn không lôi cuốn',1,'2022-04-04 00:00:00'),(40,'bài học vô giá, Bạn nên học nó để biết mình đang ở đâu và nên làm gì để có được thành công',4,'2022-03-07 00:00:00'),(41,'Kiến thức hay tuyệt vời. Thầy chưa bao giờ làm em thất vọng. Cám ơn thầy rất nhiều.',5,'2022-03-07 00:00:00'),(42,'khóa học rất tốt tôi rất hài lòng',4,'2022-04-08 00:00:00'),(43,'Khóa học rất bổ ích, thầy dạy hay, ngắn gọn súc tích, kiến thức cô đọng đủ để mình có thể ứng dụng ngay sau khi học. Ngoài ra mình cũng thích phong cách dạy của thầy, có thể thấy được sự đam mê và nhiệt huyết khi thầy chia sẻ kinh nghiệm của mình cho học viên.',4,'2022-04-03 00:00:00'),(44,'Cảm ơn a Chương với bài giảng rất chuyên nghiệp và hữu ích. Anh dạy tâm huyết và em sẽ cố gắng thực hiện theo những điều anh dạy và hành động để đạt được mục tiêu của mình. Chúc anh nhiều sức khoẻ để mang giá trị nhiều hơn cho cộng đồng. Khi tạo được thành quả em sẽ báo anh ngay nhé! Hi',5,'2022-04-03 00:00:00'),(45,'Nội dung khóa học thật tuyệt vời, cảm ơn sự đam mê & nhiệt huyết của thầy đã thúc đẩy em học tập và sẽ tạo khóa học Online trong tương lai gần nhất ạ.',4,'2022-04-08 00:00:00'),(46,'thay giang de hieu va ro rang , nhung nhieu doan sau cua video bi cat xen bot',3,'2022-04-07 00:00:00'),(47,'Thầy giảng và truyền cảm hứng rất tuyệt vời ! Cảm ơn Thầy',4,'2022-03-12 00:00:00'),(48,'Khóa học rất tốt, giảng viên rất có nhiệt tâm!',5,'2022-04-08 00:00:00'),(49,'Kiến thức rất giá trị, với số tiền rất rẻ để có được. Giảng viên nhiệt tình, tôi thấy anh rất đam mê, tâm huyết khi trao kiến thức, chất lượng Video rất tốt. Tôi sẽ mua khóa học khác của anh nếu nó đúng lĩnh vực tôi cần. Rất cám ơn.',5,'2022-03-12 00:00:00'),(50,'Tôi đang tìm kiếm một khóa học Excel để nâng cao hiệu quả công việc, sau thời gian tìm hiểu tôi chọn khóa học của Unica. Khóa học thiết kế thuận tiện cho việc học, nội dung bài giảng, bài tập rất chất lượng, tôi có thể tận dụng thời gian rảnh để học một kỹ năng mới, nhất là trong thời gian dịch Covid diên ra. Học hết khóa Excel, tôi sẽ tìm học thêm các khóa học trên Unica',5,'2022-03-01 00:00:00'),(51,'Giảng viên cần đưa link chi tiết hơn đễ học viên dễ dàng lấy tài liệu',3,'2022-03-01 00:00:00'),(52,'Tài liệu sai với mục học ',3,'2022-03-05 00:00:00'),(53,'very good, thầy giáo dạy rất hay , rất kỹ càng, bạn nào muốn giỏi excel nên học nhé, mình học xong giỏi luôn rồi nè. cám ơn thầy nhiều',4,'2022-03-12 00:00:00'),(54,'Silde bị nhiều chỗ cắt bớt so với ban đầu',3,'2022-03-01 00:00:00'),(55,'Khóa học cần hướng dẫn người học chi tiết hơn',2,'2022-03-07 00:00:00'),(56,'Nội dung cần được làm mới liên tục',2,'2022-03-05 00:00:00'),(57,'Tôi đang tìm kiếm một khóa học Excel để nâng cao hiệu quả công việc, sau thời gian tìm hiểu tôi chọn khóa học của Unica. Khóa học thiết kế thuận tiện cho việc học, nội dung bài giảng, bài tập rất chất lượng, tôi có thể tận dụng thời gian rảnh để học một kỹ năng mới, nhất là trong thời gian dịch Covid diên ra. Học hết khóa Excel, tôi sẽ tìm học thêm các khóa học trên Unica',4,'2022-01-01 00:00:00'),(58,'Lúc đầu hơi nản đấy, nhưng mà càng học càng cuốn, các bạn nên cố học hết khoảng 1/3 khóa là bắt đầu thấy hay r',4,'2022-03-12 00:00:00'),(59,'khóa học đơn giản dễ hiểu, tuy nhiên một số stock trong video không có, phải tìm bổ sung trong phần tài liệu hoặc ghi chép',4,'2022-03-01 00:00:00'),(60,'thầy hướng dẫn khá đầy đủ , xong có điều nhiều video chất lượng 720 quá, mong a thay thế 1080 cho tốt hơn,',5,'2022-02-12 00:00:00'),(61,'Nội dung bài học thực tế dễ làm',4,'2022-03-07 00:00:00'),(62,'Bài giảng dễ hiểu, dễ tiếp thu',4,'2022-01-05 00:00:00'),(63,'Thầu dậy học dễ hiểu,ngắn gọn đúng trọng tâm',4,'2022-03-07 00:00:00'),(64,'Nội dung đã bị cắt bớt',3,'2022-04-07 00:00:00'),(65,'Cần chia sẽ bài giảng qua link để học viên có thể lấy tài liệu ',3,'2022-04-23 00:00:00'),(66,'Bài giảng giáo viên không tập trung vào nội dung',2,'2022-04-21 00:00:00'),(67,'Nội dung đã quá cũ so với hiện tại',2,'2022-04-23 00:00:00'),(68,'Khóa học rất hay. Chúng ta hãy đánh thức con người vĩ đại của mình. Chỉ có rèn luyện mới dẫn đến thành công. Không có gì là không thể.',4,'2022-04-28 00:00:00'),(69,'Mình là giáo viên tiểu học rất yêu thích khóa học này đã giúp mình biết được nhiều điều cần phải sửa ở giọng nói của mình.',5,'2022-04-23 00:00:00'),(70,'Đây là khóa học cơ bản, giúp tôi hiểu tổng quan về các tông giọng, loại giọng phù hợp với từng nghề. Việc làm chủ giọng nói trong mỗi nghề là luôn phải có. Cảm ơn cô Trần Thị Minh Hải đã giảng dạy cho em cách làm chủ giọng nói, kỹ thuật cụ thể, cách khởi động hàm - làm mềm lưỡi - ngân vang xa (rất hữu ích với bản thân em) và các bài tập thực hành. Cảm ơn UNICA đã là cầu nối đưa được nhiều giá trị tới mọi người. Rất mong UNICA có thêm nhiều các khóa học trong lĩnh vực Hội họa. Trân trọng cảm ơn!',5,'2022-04-24 00:00:00'),(71,'Khóa học rất hay! Mình giờ có thể nói hay và hát hay hơn xưa rồi!! Xin cảm ơn Cô Hải và Unica đã mang đến khóa học bổ ích này!!!',5,'2022-01-28 00:00:00'),(72,'Khóa học thật chuyên sâu và dễ hiểu. Cảm ơn Chuyên gia Minh Hải đã giúp tôi có những kiến thức và bài luyện tập thực tiễn để tôi có thể phát triển giọng nói của mình',5,'2022-04-24 00:00:00'),(73,'Qua khoá học cải thiện được giọng nói nhiều, giúp tự tin khi giao tiếp hơn!',4,'2022-02-24 00:00:00'),(74,'Cần chia sẽ thêm thông tin thực tiễn để áp dụng ',3,'2022-01-23 00:00:00'),(75,'Nội dung khóa học trực tiếp, cụ thể và dễ hiểu cho một người mới. Tuy nhiên, mong nhận được các nội dung sâu hơn về ba vòng tròn nội dung hoặc cách lựa chọn chủ đề bài giảng.',3,'2022-04-23 00:00:00');
/*!40000 ALTER TABLE `feedbackdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `lessonID` int NOT NULL,
  `lesson_type_id` int DEFAULT NULL,
  `lesson_learning_id` int DEFAULT NULL,
  `time_lesson` int DEFAULT NULL,
  `list_lesson` int DEFAULT NULL,
  PRIMARY KEY (`lessonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,1,1,120,50),(2,2,2,140,40),(3,3,3,150,45),(4,4,4,123,65),(5,5,5,155,65),(6,6,6,124,35),(7,7,7,99,49),(8,8,8,89,56),(9,9,9,78,63),(10,10,10,86,46),(11,11,11,96,43),(12,12,12,90,56),(13,13,13,102,53),(14,14,14,111,67),(15,15,15,95,58);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessondetails`
--

DROP TABLE IF EXISTS `lessondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessondetails` (
  `lesson_details_id` int NOT NULL,
  `lesson_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time_details_lesson` int DEFAULT NULL,
  `lesson_type_id` int DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lesson_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessondetails`
--

LOCK TABLES `lessondetails` WRITE;
/*!40000 ALTER TABLE `lessondetails` DISABLE KEYS */;
INSERT INTO `lessondetails` VALUES (1,'Bài 1: Đổ lỗi',10,1,1),(2,'Bài 2: Mong muốn kiếm lời nhanh',12,1,1),(3,'Bài 3: Thích dự đoán thị trường',7,1,1),(4,'Bài 4: Không chịu học hỏi',8,1,1),(5,'Bài 5: Thích đầu cơ hơn đầu tư',9,1,0),(6,'Bài 6: Không có phương pháp đầu tư rõ ràng',8,1,0),(7,'Bài 7: Không giữ vững nguyên tắc đầu tư',6,1,0),(8,'Bài 8: Trở nên quá tự tin khi đang chiến thắng',7,1,0),(9,'Bài 9: Bị cảm xúc chi phối',8,1,0),(10,'Bài 10: Không kiên trì vận dụng lãi suất kép',9,1,0),(11,'Bài 11: 04 nguồn lợi nhuận từ đầu tư',14,2,0),(12,'Bài 12: Khả năng kiểm soát rủi ro',12,2,0),(13,'Bài 13: Pháp lý và thanh khoản',13,2,0),(14,'Bài 14: Luôn luôn trong vị thế (chu kỳ) thuận lợi',11,2,0),(15,'Bài 15: Nguyên lý trường phái Giá trị',8,3,0),(16,'Bài 16: Nguyên lý trường phái Tăng trưởng',7,3,0),(17,'Bài 17: Nguyên lý trường phái Phân tích kỹ thuật',6,3,0),(18,'Bài 18: Nguyên lý trường phái Nhân quả (CI - Causality Investing)',9,3,0),(19,'Bài 19: Bức tranh 01: Đồng tiền chân chính',8,3,0),(20,'Bài 20: Bức tranh 02: Đồng tiền khôn ngoan',7,3,0),(21,'Bài 21: Bức tranh 03: Con đường Tự do & thịnh vượng',6,3,0),(22,'Bài 22: Lợi thế cạnh tranh lâu bền',6,4,0),(23,'Bài 23: Chỉ số ROE',7,4,0),(24,'Bài 24: Chỉ số ROA',8,4,0),(25,'Bài 25: Tỷ lệ lãi gộp',9,4,0),(26,'Bài 26: Tỷ lệ lãi ròng',9,4,0),(27,'Bài 27: Vấn đề cổ tức',7,4,0),(28,'Bài 28: Thiết lập danh mục đầu tư & cơ cấu vốn',8,4,0),(29,'Bài 29: Ví dụ 1',8,5,0),(30,'Bài 30: Ví dụ 2',9,5,0),(31,'Bài 31: Vạn sự tùy duyên',6,6,0),(32,'Bài 1: Quản trị',5,7,1),(33,'Bài 2: Quản trị cuộc đời',6,7,1),(34,'Bài 3: Ý niệm về chiến lược cuộc đời',6,7,0),(35,'Bài 4: Định vị bản thân',5,8,0),(36,'Bài 5: Ấn định mục tiêu',7,8,0),(37,'Bài 6: 4 chiến lược thực hiện mục tiêu',7,8,0),(38,'Bài 7: Xác định đúng sở trường',8,9,0),(39,'Bài 8: Loại bỏ tật xấu',9,9,0),(40,'Bài 9: Tận dụng 5 người thầy',12,9,0),(41,'Bài 10: Quản trị thời gian',23,9,0),(42,'Bài 11: Lên kịch bản',22,9,0),(43,'Bài 1: Charles Dow và Edward Jones',10,10,1),(44,'Bài 2: 03 tiền đề của PTKT',9,10,1),(45,'Bài 3: 03 thành tố của thị trường',8,10,1),(46,'Bài 4: 03 xu hướng',7,10,1),(47,'Bài 5: Tại sao lịch sử tự lặp lại?',8,10,1),(48,'Bài 6: Đồ thị: phân loại, cách vẽ, công cụ',9,10,1),(49,'Bài 7: Lý thuyết DOW',11,10,1),(50,'Bài 8: Lý thuyết sóng Elliott',12,10,0),(51,'Bài 9: Ngưỡng hỗ trợ & Ngưỡng kháng cự',23,10,0),(52,'Bài 10: Mô hình & chỉ báo kỹ thuật: đặc điểm & phân loại',14,10,0),(53,'Bài 11: Mô hình Vai Đầu Vai',16,11,0),(54,'Bài 12: Mô hình 2 đỉnh/2 đáy',17,11,0),(55,'Bài 13: Mô hình 3 đỉnh/3 đáy',15,11,0),(56,'Bài 14: Các loại Cờ',16,11,0),(57,'Bài 15: Mô hình Tách - Tay cầm',21,11,0),(58,'Bài 16: Mô hình Ngọn đồi cao',7,11,0),(59,'Bài 17: Mô hình nến Nhật',8,11,0),(60,'Bài 18: Ưu tiên doanh nghiệp tốt',9,11,0),(61,'Bài 19: Kỷ luật',11,12,0),(62,'Bài 20: Kiên trì & Lãi kép',24,12,0),(63,'Bài 21: Con số 65%',21,12,0),(64,'Bài 22: Tỷ lệ 7/3',12,13,0),(65,'Bài 23: Tỷ lệ 3/1',14,13,0),(66,'Bài 24: Sự kết hợp giữa các tuyệt chiêu',15,13,0),(67,'Bài 25: Nghiên cứu chuyên sâu về Phân Tích Kỹ Thuật',16,14,0),(68,'Bài 26: Một ví dụ đầu tư thực tế',17,14,0),(69,'Bài 27: Vạn sự tùy duyên',18,15,0),(70,'Bài 1: Bốn nấc thang phát triển',11,16,1),(71,'Bài 2: Ước mơ và động lực đủ lớn để kiếm tiền',12,16,1),(72,'Bài 3: Nghệ thuật ăn mừng',13,16,1),(73,'Bài 4: Hai bàn tay trắng và một ước mơ đủ lớn',14,16,0),(74,'Bài 5: Họ làm được mình cũng làm được',15,16,0),(75,'Bài 6: Niềm tin vào những gì mình làm',16,17,0),(76,'Bài 7: Câu chuyện arnold định hình niềm tin',17,17,0),(77,'Bài 8: Cách tìm đam mê và mục đích cuộc đời',22,17,0),(78,'Bài 9: Cách mình làm một việc là cách mình làm mọi việc',24,17,0),(79,'Bài 10: Câu chuyện cái bẫy của anh Nam khi tuổi 35',25,17,0),(80,'Bài 11: Câu chuyện Arnold kiên trì đến cùng',32,17,0),(81,'Bài 1: Tạo project và làm quen với Xcode',22,18,1),(82,'Bài 2: Các thành phần chính trong Xcode project',24,18,1),(83,'Bài 3: Kết nối giao diện với mã nguồn',25,18,1),(84,'Bài 4: Làm việc với Storyboard',26,18,1),(85,'Bài 5: Làm việc với UILabel',27,18,0),(86,'Bài 6: Làm việc với UIButton',26,18,0),(87,'Bài 7: Làm việc với UITextField',27,18,0),(88,'Bài 8: Làm việc với UIAlertControlle',23,18,0),(89,'Bài 9: Làm việc với UIImageView',25,19,0),(90,'Bài 10: Làm việc với UISwitch',26,19,0),(91,'Bài 11: Làm việc với UIProgressView',32,19,0),(92,'Bài 12: Làm việc với UISlider',23,19,0),(93,'Bài 13: Hướng dẫn tạo Animation bằng UIImageView và UISlider',35,19,0),(94,'Bài 14: Làm việc với UIActivityIndicator',22,19,0),(95,'Bài 15: Làm việc với UITextView',25,19,0),(96,'Bài 1: Cơ hội - cam kết - điều kiện học khoá học này',14,20,1),(97,'Bài 2: Kỹ thuật xác định chủ đề để giảng dạy Online hiệu quả',15,20,1),(98,'Bài 3: Ví dụ: Kỹ thuật xác định chủ đề để giảng dạy Online hiệu quả',9,20,1),(99,'Bài 4: Vòng tròn nền tảng để tạo nội dung khoá học',8,21,0),(100,'Bài 5: Xây dựng đề cương bài giảng với Unica',9,21,0),(101,'Bài 6: Cấu trúc nội dung cho mỗi video giảng dạy',11,21,0),(102,'Bài 7: Tổng quan phần 3',14,22,0),(103,'Bài 8: Ngoại hình và ngôn ngữ cơ thể của Giảng viên',15,22,0),(104,'Bài 9: Sử dụng giọng nói và ngữ điệu chuyên nghiệp',20,22,0),(105,'Bài 10: Kỹ thuật giúp học viên nhớ và áp dụng nội dung bài học',9,23,0),(106,'Bài 11: Tổng quan nội dung chương 4',8,23,0),(107,'Bài 12: Các nguyên tắc căn bản để sản xuất Video giảng dạy',7,23,0),(108,'Bài 13: Đỉnh của đỉnh là Đứng trên vai người khổng lồ Unica',10,24,0),(109,'Bài 14: Tự tạo website để bán khoá học',11,24,0),(110,'Bài 15: Quảng cáo khoá học',12,25,0),(111,'Bài 16: Ôn tập nội dung khoá học',14,25,0),(112,'Bài 1: Giới thiệu khóa học',10,26,1),(113,'Bài 2: Bí mật Luật hấp dẫn',11,26,1),(114,'Bài 3: Nguyên tắc vận hành của Luật hấp dẫn',12,26,1),(115,'Bài 4: Sức mạnh kỳ diệu của suy nghĩ',12,27,0),(116,'Bài 5: Sức mạnh kỳ diệu của cảm xúc',14,27,0),(117,'Bài 6: Sức mạnh kỳ diệu của niềm tin',15,27,0),(118,'Bài 7: Nguyên nhân của những gì xảy đến cuộc đời bạn',12,28,0),(119,'Bài 8: Kết nối giữa Luật hấp dẫn và bạn',11,28,0),(120,'Bài 9: Kết nối giữa bạn với vạn vật và mọi người',12,28,0),(121,'Bài 10: 03 bước nhiệm màu để đạt được mọi điều bạn muốn',14,29,0),(122,'Bài 11: Vì sao Luật hấp dẫn không hiệu quả với bạn ?',15,29,0),(123,'Bài 12: 04 công cụ nhiệm màu gia tăng lực hút những điều bạn muốn',16,29,0),(124,'Bài 13: Luật hấp dẫn và 05 mục tiêu sống ý nghĩa của đời bạn',17,30,0),(125,'Bài 14: Các khuôn mẫu định hình tư duy tài chính của bạn',17,30,0),(126,'Bài 15: Vận dụng Luật hấp dẫn để thu hút tiền bạc',19,30,0),(127,'Bài 16: Hãy bước tiếp để kiến tạo cuộc đời như bạn mong ước',20,31,0),(128,'Bài 17: Lời kết từ giảng viên',21,31,0),(129,'Bài 1: Lời nói đầu, cách học',22,32,1),(130,'Bài 2: Hướng dẫn cài đặt phần mềm photoshop cc 2020',24,32,1),(131,'Bài 3: Tìm hiểu định dạng file trong photoshop',25,32,0),(132,'Bài 4: Tìm hiểu sơ lược các công cụ trong photoshop',26,33,1),(133,'Bài 5: Tìm hiểu về bảng layer',26,33,1),(134,'Bài 6: Chọn vùng tìm hiểu công cụ Ctr T (tranform)',23,33,0),(135,'Bài 7: Hướng dẫn sử dụng công cụ Quick slection tool',12,34,0),(136,'Bài 8: Cách đổ màu nền cho backround và sử dụng chế độ hòa trộn',15,34,0),(137,'Bài 9: Cách thay nền backround cho đối tượng cần ghép',16,34,0),(138,'Bài 10: Quản lý và xử lý vùng chọn',16,34,0),(139,'Bài 11: Sử dụng công cụ Pachtool ',17,35,0),(140,'Bài 12: Thực hành thay backround cho đối tượng',18,35,0),(141,'Bài 13: Thực hành xóa người nâng cao',12,35,0),(142,'Bài 14: Thực hành Blend màu cơ bản với ctrl+U',9,35,0),(143,'Bài 1: Thomas R. Price & Philip A. Fisher',10,36,1),(144,'Bài 2: Đầu tư đà tăng trưởng hiện đại',19,36,1),(145,'Bài 3: Tập trung vào doanh nghiệp',21,37,1),(146,'Bài 4: Quan sát thị trường chung',25,37,0),(147,'Bài 5: Làm chủ cảm xúc',26,38,0),(148,'Bài 6: Nguyên lý 3G',16,38,0),(149,'Bài 7: Chu kỳ dài hạn',14,39,0),(150,'Bài 8: Chu kỳ trung hạn',15,39,0),(151,'Bài 9: Cổ phiếu Ưu tiên',16,40,0),(152,'Bài 10: Yếu tố tin tức',11,40,0),(153,'Bài 11: Fisher: 15 tiêu chí & 04 thành tố',12,40,0),(154,'Bài 12: Vùng đáy',13,40,0),(155,'Bài 13: Vùng tích lũy',14,41,0),(156,'Bài 14: Phân tích kỹ thuật: mẫu hình tăng giá',15,41,0),(157,'Bài 15: Gió xoay chiều',15,42,0),(158,'Bài 16: Cơ hội tốt hơn',16,42,0),(159,'Bài 17: Sử dụng cộng cụ đầu tư',17,43,0),(160,'Bài 18: Phân tích nhanh một ví dụ cụ thể',18,43,0),(161,'Bài 1: Tại sao bạn cần phải làm Tik Tok ngay bây giờ ?',18,44,1),(162,'Bài 2: Thiết kế mô hình kiếm tiền của bạn – Đừng làm TikTok khi chưa có điều này !',17,44,0),(163,'Bài 3: Những “con đường huyền thoại” để tạo dựng lên 1 kênh hàng triệu follow',16,44,0),(164,'Bài 4: Bẻ khoá thuật toán – để liên tục có clip triệu view',16,45,1),(165,'Bài 5: “Mượn nước đấy thuyền” – mưu kế khiến follow tăng ùn ùn',16,45,0),(166,'Bài 6: Để tài khoản của bạn không bao giờ vi phạm chính sách',15,45,0),(167,'Bài 7: Cắt ghép video, tua nhanh tua chậm trên Capcut',15,46,1),(168,'Bài 8: Hướng dẫn lồng nhạc, âm thanh chèn ảnh trên Capcut',17,46,0),(169,'Bài 9: Lồng giọng chị Google, thêm phụ đề đầu trên Capcut',18,46,0),(170,'Bài 1: Giới thiệu khóa học Figma',18,47,1),(171,'Bài 2: Giới thiệu Figma',16,47,1),(172,'Bài 3: Cách cài đặt',15,47,1),(173,'Bài 4: Giao diện chính Figma',15,48,0),(174,'Bài 5: Các section thuộc tính đối tượng',17,48,1),(175,'Bài 6: Các công cụ cơ bản nhất',18,48,1),(176,'Bài 7: Vẽ vector trong Figma',19,49,0),(177,'Bài 8: Tổng kết phần mở đầu và bài tập',18,49,0),(178,'Bài 9: Giới thiệu frame',17,49,0),(179,'Bài 10: Tạo và làm việc với frame',17,50,0),(180,'Bài 11: So sánh frame và group',18,50,0),(181,'Bài 12: Constraints của frame - siêu công cụ cho responsive',19,50,0),(182,'Bài 13: Tổng kết chương và bài tập',17,51,0),(183,'Bài 14: Giới thiệu autolayout',18,51,1),(184,'Bài 15: Autolayout và text',19,51,1),(185,'Bài 16: Tạo autolayout',19,52,0),(186,'Bài 17: Thuộc tính chính của autolayout',19,52,0),(187,'Bài 18: Resizing với autolayout',18,52,1),(188,'Bài 19: Autolayout lồng ghép phức tạp',17,53,1),(189,'Bài 20: Các demo và công dụng',17,53,0),(190,'Bài 21: Bài tập autolayout: tạo chatbox',15,53,0),(191,'Bài 1: Làm tỷ lệ bản vẽ bằng cách Scale khung trên model',15,54,1),(192,'Bài 2: Giải Thích các làm tỷ lệ Scale khung trên model',18,54,0),(193,'Bài 3: Làm tỷ lệ bản vẽ bằng cách Scale hình trên model',17,54,0),(194,'Bài 4: Giải thích các làm tỷ lệ Scale hình trên model',18,54,1),(195,'Bài 5: Dùng layout, vận dụng kiến thức Scale khung trên model',18,55,1),(196,'Bài 6: Dùng layout, Annotative cho dim, text, hatch, Block',19,55,1),(197,'Bài 7: Dùng layout, Dim tự biến đổi từ layout qua model',17,55,0),(198,'Bài 8: Dùng layout, Dim tự biến trên layout',17,55,0),(199,'Bài 9: Dùng layout, Dim trên layout kết hợp biến Dimlfac',17,56,1),(200,'Bài 10: Giới thiệu quy trình thiết kế và triển khai bản vẽ thi công nội thất',18,56,0),(201,'Bài 11: Triển khai chi tiết trần thạch cao',19,56,0),(202,'Bài 12: Triển khai chi tiết bố trí đèn trần, đi dây lộ điện',19,56,0),(203,'Bài 1: Kiếm tiền nhờ nhớ số?',19,57,1),(204,'Bài 2: 3 hành trang tâm lý quan trọng',16,57,0),(205,'Bài 3: Đánh thức siêu trí nhớ của bạn trong 2 phút',18,57,1),(206,'Bài 4: Trải nghiệm sức mạnh móc treo trí nhớ',15,58,0),(207,'Bài 5: Ứng dụng móc treo: Tự tin ra khỏi nhà',16,59,1),(208,'Bài 6: Ứng dụng móc treo: Todo-list thú vị',17,59,0),(209,'Bài 7: Tách từ liên tưởng, chinh phục mọi thuật ngữ',18,60,1),(210,'Bài 8: Tự tin thuyết trình, không cần giấy nhớ',17,60,1),(211,'Bài 9: Biến phòng học thành ‘phao thi‘',21,60,0),(212,'Bài 10: Bí mật mái nhà trí quên',24,61,0),(213,'Bài 11: Công thức M.P.3 giúp nhớ mãi tới già',12,61,0),(214,'Bài 12: Thử thách nhớ bản đồ Việt Nam',16,61,0),(215,'Bài 13: Quà sinh nhật ấn tượng và 01-09',17,62,0),(216,'Bài 14: Trắc nghiệm Numagician 01-09',21,62,0),(217,'Bài 15: Cách nhớ ngày tháng năm',12,62,1),(218,'Bài 16: Cách nhớ dãy chữ cái (mật khẩu, công thức...)',15,63,0),(219,'Bài 17: Móc treo trên 100',25,63,0),(220,'Bài 18: Tập vẽ số hình 61-70',26,63,0),(221,'Bài 19: Cách quên kỷ niệm cũ',12,64,1),(222,'Bài 20: Cách đặt mục tiêu hiệu quả với chữ T',12,64,0),(223,'Bài 21: Đặt mục tiêu hiệu quả với chữ S',26,64,0),(224,'Bài 22: Bí mật P.C - Biến cả chương sách lên tờ giấy nhỏ - Bước 1',9,65,0),(225,'Bài 23: Bí mật P.C - Biến cả chương sách lên tờ giấy nhỏ - Bước 2',7,65,1),(226,'Bài 24: Bí mật P.C - Biến cả chương sách lên tờ giấy nhỏ - Bước 3',8,65,0),(227,'Bài 25: Giới thiệu đỉnh núi Pi và nguyên tắc chinh phục',19,65,1),(228,'Bài 26: Chặng 1 - 100 số đầu tiên của hằng số Pi',15,65,0),(229,'Bài 27: Trắc nghiệm chặng 1',16,65,0),(230,'Bài 1: Cách tạo tài khoản Taobao để tìm kiếm sản phẩm Trung Quốc',7,66,0),(231,'Bài 2: Bộ từ khóa sản phẩm dịch sang tiếng Trung tham khảo khi nhập hàng',17,66,0),(232,'Bài 3: Cách xem Top seller - Hot trends trên Taobao, 1688, As seen on tv (Phần 1)',14,66,0),(233,'Bài 4: Cách xem Top seller - Hot trends trên Taobao, 1688, As seen on tv (Phần 2)',13,67,1),(234,'Bài 5: Kỹ năng, Công cụ cần thiết khi Kinh doanh Online',12,67,1),(235,'Bài 6: Lựa chọn sản phẩm kinh doanh, mô hình kinh doanh (Phần 1)',6,67,0),(236,'Bài 7: Lựa chọn sản phẩm kinh doanh, mô hình kinh doanh (Phần 2)',16,68,0),(237,'Bài 8: Tìm kiếm, cách liên hệ nguồn hàng kinh doanh (Phần 1)',17,68,0),(238,'Bài 9: Tìm kiếm, cách liên hệ nguồn hàng kinh doanh (Phần 2)',5,68,1),(239,'Bài 10: Tìm kiếm, cách liên hệ nguồn hàng kinh doanh (Phần 3)',16,69,1),(240,'Bài 11: Sản phẩm Hot. Đặt hàng Trung Quốc và các công cụ hỗ trợ (Phần 1)',5,69,0),(241,'Bài 12: Sản phẩm Hot. Đặt hàng Trung Quốc và các công cụ hỗ trợ (Phần 2)',20,69,0),(242,'Bài 13: Hoàn thiện chính sách bán hàng, kịch bản bán hàng, chính sách giá',21,70,0),(243,'Bài 14: Xây dựng hệ thống Marketing Online Đa Kênh',25,70,1),(244,'Bài 15: Xây dựng Kế hoạch Marketing cơ bản',16,70,1),(245,'Bài 16: Đặt tên thương hiệu riêng. Tên miền, logo cho bạn',14,71,0),(246,'Bài 17: Bài trắc nghiệm 1',13,71,0),(247,'Bài 18: Tổng Quan Ưu và Nhược điểm của Facebook Marketing',12,71,0),(248,'Bài 19: Tạo và Bảo mật tài khoản Facebook cá nhân',16,72,0),(249,'Bài 20: Hướng dẫn Tạo ảnh cover chuyên nghiệp với Photoshop',17,72,0),(250,'Bài 21: Facebook nghĩ rằng bạn thích gì. Tìm hiểu cơ chế hiển thị Quảng cáo Facebook',17,72,0),(251,'Bài 22: Chuẩn Bị Nội dung bài viết. Cách Tăng follow Page cá nhân',18,73,0),(252,'Bài 23: Bán hàng trên Facebook Cá nhân và những lưu ý quan trọng',29,73,1),(253,'Bài 24: Khởi tạo và tối ưu SEO Fanpage Facebook (Phần 1)',22,73,0),(254,'Bài 25: Khởi tạo và tối ưu SEO Fanpage Facebook (Phần 2)',24,73,0),(255,'Bài 1: Hướng dẫn xem video trên Unica',12,74,1),(256,'Bài 2: Giới thiệu khoá học',14,74,1),(257,'Bài 3: Nội dung của khoá học',15,74,1),(258,'Bài 4: Cách học của khoá học [QUAN TRỌNG]',16,75,1),(259,'Bài 5: Tham gia group giải bài tập [QUAN TRỌNG]',12,75,0),(260,'Bài 6: Hướng dẫn chạy và debug với Visual Studio Code',12,75,0),(261,'Bài 7: Hướng dẫn chạy và debug với IntelliJ',12,75,0),(262,'Bài 8: Cách làm bài và nộp bài trên LeetCode',14,76,0),(263,'Bài 9: Tham gia group Discord',14,76,0),(264,'Bài 10: Tặng thêm khóa học MIỄN PHÍ',15,76,1),(265,'Bài 11: Duyệt mảng',15,77,1),(266,'Bài 12: Thêm/Chèn phần tử vào mảng',12,77,0),(267,'Bài 13: Xoá phần tử trong mảng',12,77,0),(268,'Bài 14: Kỹ thuật 2 con trỏ: Xoá phần tử trong mảng',11,77,0),(269,'Bài 15: Kỹ thuật 2 con trỏ: Thêm phần tử vào mảng',14,79,0),(270,'Bài 16: List và Array List trong Java',15,79,1),(271,'Bài 17: Làm việc với mảng 2 chiều',15,79,1),(272,'Bài 18: Giới thiệu về String, Character và char',16,79,0),(273,'Bài 19: Thực hành với String và Character',14,80,0),(274,'Bài 20: Làm quen với StringBuilder',13,80,0),(275,'Bài 21: Giới thiệu',14,80,1),(276,'Bài 22: Bubble Sort | Sắp xếp nỏi bọt',15,81,1),(277,'Bài 23: Insertion Sort | Sắp xếp chèn',16,81,0),(278,'Bài 24: Selection Sort | Sắp xếp chọn',16,81,0),(279,'Bài 25: Bài toán tìm số lớn thứ 3',14,82,0),(280,'Bài 26: Giới thiệu về đệ quy | Định nghĩa đệ quy',13,82,1),(281,'Bài 27: Đặc điểm của đệ quy',14,82,1),(282,'Bài 28: Thực hành 1: Tính giai thừa (phần 1)',15,83,0),(283,'Bài 29: Thực hành 1: Tính giai thừa (phần 2)',16,83,0),(284,'Bài 30: Thực hành 2: Tính số Fibonacy (phần 1)',14,83,1),(285,'Bài 31: Thực hành 2: Tính số Fibonacy (phần 2)',13,83,1),(286,'Bài 32: Một số bài toán khác',13,84,0),(287,'Bài 33: Phân loại đệ quy (phần 1)',14,84,1),(288,'Bài 34: Phân loại đệ quy (phần 2)',15,84,0),(289,'Bài 35: Ưu điểm và nhược điểm của đệ quy',15,85,0),(290,'Bài 36: Tối ưu hoá đệ quy',16,85,0),(291,'Bài 37: Khử đệ quy',16,85,0),(292,'Bài 38: Nên sử dụng đệ quy khi nào?',16,86,1),(293,'Bài 39: Giới thiệu về Binary Search',17,86,1),(294,'Bài 40: Cài đặt Binary Search bằng vòng lặp',17,86,0),(295,'Bài 41: Cài đặt Binary Search bằng đệ quy',14,87,1),(296,'Bài 42: Đánh giá thuật toán',14,87,0),(297,'Bài 43: Merge Sort: Ý tưởng',15,87,0),(298,'Bài 44: Merge Sort: Cài đặt',16,87,1),(299,'Bài 45: Merge Sort: Testing',14,87,0),(300,'Bài 46: Quick Sort: Ý tưởng',11,87,1);
/*!40000 ALTER TABLE `lessondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessonlearning`
--

DROP TABLE IF EXISTS `lessonlearning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessonlearning` (
  `lesson_learning_id` int NOT NULL,
  `lessonOfType` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lessonID` int DEFAULT NULL,
  PRIMARY KEY (`lesson_learning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessonlearning`
--

LOCK TABLES `lessonlearning` WRITE;
/*!40000 ALTER TABLE `lessonlearning` DISABLE KEYS */;
INSERT INTO `lessonlearning` VALUES (1,'Tư duy đúng trong đầu tư cổ phiếu',1),(2,'Hiểu được 04 nguồn thu nhập từ đầu tư',1),(3,'Dễ dàng tham gia vào nhóm 05% những nhà đầu tư chiến thắng trên thị trường',1),(4,'Tránh được những rủi ro, cạm bẫy trên TTCK',1),(5,'Chiến lược đầu tư tạo thu nhập thụ động từ cổ phiếu',1),(6,'Khả năng đầu tư thực tế thành công ngay sau khóa học',1),(7,'Hiểu được thế nào là quản trị và quản trị cuộc đời',2),(8,'Có được khả năng định vị bản thân một cách chính xác và nhanh chóng',2),(9,'Biết được phương pháp, cách thức thực hiện mục tiêu thành công',2),(10,'Nắm rõ quy trình thực hiện mục tiêu',2),(11,'Nắm được 4 chiến lược thực hiện mục tiêu chiếc lược cuộc đời',2),(12,'Khám phá giá trị bản thân và vận dụng nguồn lực sẵn có',2),(13,'Hiểu rõ nền tảng, gốc rễ của phân tích kỹ thuật trong chứng khoán',3),(14,'Nắm chắc 7 tử huyệt trong đầu tư chứng khoán',3),(15,'Nắm được các công cụ phân tích chứng khoán',3),(16,'Sở hữu 15 tuyệt chiêu phân tích kỹ thuật thông dụng',3),(17,'Nắm được 02 bí mật của những siêu sao phân tích kỹ thuật chứng khoán thực chiến',3),(18,'Biết các tỉ lệ vàng trong đầu tư',3),(19,'Bạn sẽ học được cách tư duy, những công cụ , những kỹ năng để duy trì thu nhập và xây',4),(20,'Bạn sẽ hiểu được bí mật về tư duy và cách làm của những người thành công, giàu có;',4),(21,'Bạn sẽ trở nên sáng suốt, nhìn thấu hết mọi khó khăn trong cuộc sống, giải quyết',4),(22,'Tôi chia sẻ cho bạn vòng đời kinh doanh giúp bạn biết doanh nghiệp mình đang ở đâu và',4),(23,'Tôi hướng dẫn bạn cách tôi đi từng bước, xây cái gì, làm việc như thế nào, và tập trung vào',4),(24,'Bạn cũng sẽ biết cách tự kinh doanh và kiếm về vài trăm triệu mỗi tháng cũng không phải',4),(25,'Hiểu rõ tại sao TikToker thế giới kiếm được 10 triệu đô/năm        ',5),(26,'Biết cách xây dựng phong cách riêng cho kênh TikTok của mình',5),(27,'Học được 10 kỹ năng edit clip trên điện thoại cho TikToker',5),(28,'Được thêm vào nhóm kín 2000 học viên TikTokVip',5),(29,'Hiểu rõ về cơ chế đề xuất clip, để sản xuất có clip triệu View',5),(30,'Dẫn dắt khách hàng từ việc biết mình trên TikTok đến khi bán được hàng',5),(31,'Thành thạo làm việc với Xcode, UI, Gesture, Tableview,...',6),(32,'Ứng dụng vào thực tế công việc đạt hiệu quả tốt',6),(33,'Bạn sẽ nhận biết mình có thể trở thành giảng viên trong lãnh vực nào?',7),(34,'Bạn sẽ sở hữu kỹ năng giảng dạy Online cơ bản để truyền tải nội dung',7),(35,'Bạn sẽ biết cách xây dựng cấu trúc bài giảng một cách chuyên nghiệp',7),(36,'Bạn có thể biên tập được Video giảng dạy để tạo khoá học Online',7),(37,'Vận dụng Luật hấp dẫn để thay đổi hoàn toàn cuộc sống của mình',8),(38,'Hình thành thói quen luôn tư duy tích cực, luôn nghĩ về những điều tốt đẹp',8),(39,'Biết cách biến những ước mơ, những khao khát, mong muốn của mình trong mọi',8),(40,'Luôn vui vẻ đón nhận những điều tốt đẹp đến với cuộc sống của mình',8),(41,'Thành thạo kỹ năng ghép và chỉnh sửa ảnh bằng Photoshop',9),(42,'Cắt ghép ảnh cùng các idol yêu thích',9),(43,'Tự thiết kế hình ảnh cho website, Fanpage facebook, Group',9),(44,'Thỏa sức sáng tạo hình ảnh, tự thực hiện các ý tưởng của bạn qua hình ảnh cùng',9),(45,'06 tư duy đúng trong đầu tư tăng trưởng',10),(46,'Cách chính xác chọn được doanh nghiệp tiềm năng tăng trưởng cao trong tương lai',10),(47,'Tự tin đầu tư chứng khoán',10),(48,'Cách nhận diện thị trường đang trong giai đoạn thuận lợi',10),(49,'Cách Mua/Bán trong đầu tư đà tăng trưởng thực chiến',10),(50,'Có kiến thức phát triển doanh nghiệp',10),(51,'Thuần thục cách sử dụng công cụ; hiểu rõ ngôn ngữ thiết kế; thấu hiểu tư duy bài bản',11),(52,'Biết cách dùng phần mềm như một người làm UI/UX với lối tư duy hệ thống, nắm vững',11),(53,'Tự tạo ra những thiết kế Website/App cực chất, sẵn sàng để trở thành một Designer ở',11),(54,'Tự tin thực hiện hoá ý tưởng của mình trên các thiết kế',11),(55,'Giảm đến hơn 60% thời gian cho các thao tác lặp đi lặp lại bằng việc tạo ra các component',11),(56,'Đặc biệt, quà tặng Ebook Figma Design Notebook được gửi tặng ngay sau khóa học',11),(57,'Thành thạo việc làm tỷ lệ bản vẽ trong autocad với 7 cách làm khác nhau và dùng',12),(58,'Hiểu rõ quy trình triển khai hoàn thiện một bộ hồ sơ thiết kế thi công nội thất.',12),(59,'Tự tin với mọi thể loại đồ nội thất với nhiều thể loại khác nhau.',12),(60,'Giúp bạn tự tin ứng tuyển vào các vị trí thiết kế - diễn họa nội thất tại các công ty doanh',12),(61,'Hiểu rõ được cấu tạo sản phẩm nhiều đồ nội thất, cách chọn thiết bị, chủng loại vật liệu sử',12),(62,'Bổ trợ tốt cho các bạn khi diễn họa để phương án luôn khả thi và dễ thi công nhất.',12),(63,'Nắm bí quyết thuộc nhanh nhớ chuẩn như chụp ảnh.',13),(64,'Làm chủ 100 móc treo trí nhớ, giúp ghi nhớ cả ngàn thứ.',13),(65,'Đưa cả chương sách lên tờ giấy nhỏ và ghi nhớ cực lâu.',13),(66,'Ứng dụng trí não để thay đổi bản thân hiệu quả, bền vững.',13),(67,'Sở hữu Ebook 200 trang: Đánh Thức Họa Sĩ Sáng Tạo Trong Bạn (song ngữ, trị giá 340k)',13),(68,'Phát triển siêu trí tưởng tượng, kích hoạt ai bán cầu não.',13),(69,'Phát triển khả năng \'vẽ như làm ảo thuật\' với Numagician.',13),(70,'Biết cách ứng dụng siêu trí nhớ vào mọi mặt của cuộc sống.',13),(71,'Hệ thống Toàn bộ Kiến thức Cốt lõi và Quan trọng nhất trong Khởi nghiệp Online',14),(72,'Có được Nguồn hàng kinh doanh khi liên hệ trực tiếp với người bán, nhà cung cấp',14),(73,'Cách nghiên cứu, học hỏi từ Đối thủ cạnh tranh qua các công cụ Miễn phí bí mật',14),(74,'Từng bước bài bản Triển khai đồng loạt kênh Marketing Online',14),(75,'Instagram Marketing - Xu hướng Giới trẻ ',14),(76,'Youtube Marketing - Video Marketing lên ngôi',14),(77,'Xác định Sản phẩm kinh doanh phù hợp, Mô hình bạn sẽ Kinh doanh',14),(78,'Nhận diện chân dung khách hàng Tiềm năng, chăm sóc khách hàng bài bản',14),(79,'Tìm kiếm các nguồn nội dung Fanpage tự động, bài bản.',14),(80,'Facebook Marketing - Đa nhiệm Phân tích khách hàng, đối thủ',14),(81,'Zalo Marketing - Xu hướng phát triển',14),(82,'Email Marketing - Xây dựng chuỗi Email chuyên nghiệp',14),(83,'Hệ thống lại toàn bộ cấu trúc dữ liệu và thuật toán đã được học',15),(84,'Biết cách đánh giá một thuật toán dựa trên độ phức tạp (không gian và thời gian).',15),(85,'Được làm và chữa hàng chục bài tập trên trang lập trình online rất nổi tiếng LeetCode.',15),(86,'Tự mình cài đặt lại các cấu trúc dữ liệu cũng như thuật toán đó.',15),(87,'Học cách sử dụng cách thư viện của Java để thực thi các thuật toán.',15),(88,'Học cách sử dụng framework thư viện của Java.',15);
/*!40000 ALTER TABLE `lessonlearning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessontype`
--

DROP TABLE IF EXISTS `lessontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessontype` (
  `lesson_type_id` int NOT NULL,
  `lesson_type_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lessonID` int DEFAULT NULL,
  PRIMARY KEY (`lesson_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessontype`
--

LOCK TABLES `lessontype` WRITE;
/*!40000 ALTER TABLE `lessontype` DISABLE KEYS */;
INSERT INTO `lessontype` VALUES (1,'Phần 1: Những sai lầm mất tiền của nhà đầu tư chứng khoán',1),(2,'Phần 2: Những ưu thế tuyệt vời của đầu tư chứng khoán',1),(3,'Phần 3: Nguyên lý đầu tư tạo lợi nhuận trường tồn',1),(4,'Phần 4: Công thức đầu tư kỳ diệu',1),(5,'Phần 5: Ví dụ thực tế',1),(6,'Phần 6: Bước tiếp theo là gì?',1),(7,'Phần 1: Đặt vấn đề',2),(8,'Phần 2: Chiến lược cuộc đời',2),(9,'Phần 3: Thực hiện chiến lược',2),(10,'Phần 1: Các vấn đề nền tảng',3),(11,'Phần 2: 15 Tuyệt chiêu phân tích kỹ thuật thông dụng',3),(12,'Phần 3: 7 Tử huyệt trong thực chiến',3),(13,'Phần 4: 2 Tỷ lệ vàng trong đầu tư',3),(14,'Phần 5: Hướng dẫn đầu tư thực tế',3),(15,'Phần 6: Bước tiếp theo là gì?',3),(16,'Phần 1: GIỚI THIỆU',4),(17,'Phần 2: CASE STUDY',4),(18,'Phần 1: Làm việc với Xcode',5),(19,'Phần 2: Làm việc với UI',5),(20,'Phần 1: Giới thiệu tổng quan và lựa chọn chủ đề huấn luyện Online',6),(21,'Phần 2: Xây dựng cấu trúc bài giảng Online chuyên nghiệp',6),(22,'Phần 3: Kỹ thuật giảng dạy Online',6),(23,'Phần 4: Biên tập Video để tạo khoá học Online',6),(24,'Phần 5: Làm thế nào để bán khoá học của bạn',6),(25,'Phần 6: Tổng kết khoá học',6),(26,'Phần 1: Giới thiệu tổng quan',7),(27,'Phần 2: Những nguồn sức mạnh tiềm ẩn bên trong bạn',7),(28,'Phần 3: Luật hấp dẫn và những kết nối kỳ diệu trong cuộc sống',7),(29,'Phần 4: Cách vận dụng Luật hấp dẫn hiệu quả',7),(30,'Phần 5: Vận dụng Luật hấp dẫn để đạt mọi điều bạn muốn',7),(31,'Phần 6: Tổng kết khóa học',7),(32,'Phần 1: MỞ ĐẦU',8),(33,'Phần 2: TÌM HIỂU VÀ THỰC HÀNH SỬ DỤNG CÔNG CỤ TRONG PHOTOSHOP',8),(34,'Phần 3: HƯỚNG DẪN',8),(35,'Phần 4: THỰC HÀNH',8),(36,'Phần 1: Khái quát',9),(37,'Phần 2: 6 Tư duy đầu tư đà tăng trưởng',9),(38,'Phần 3: Đầu tư đà tăng trưởng thực chiến',9),(39,'Phần 4: Thị trường tăng trưởng',9),(40,'Phần 5: Doanh nghiệp tăng trưởng',9),(41,'Phần 6: Điểm mua cổ phiếu tăng trưởng',9),(42,'Phần 7: Điểm bán cổ phiếu tăng trưởng',9),(43,'Phần 8: Hướng dẫn đầu tư thực tế',9),(44,'Phần 1: TÌM HIỂU THỊ TRƯỜNG VÀ CHUẨN BỊ CƠ BẢN',10),(45,'Phần 2: CHÍNH SÁCH VÀ THUẬT TOÁN TIKTOK',10),(46,'Phần 3: KỸ THUẬT NÂNG CAO',10),(47,'Phần 1: Các yếu tố cơ bản (Hiểu về Figma, các thành phần và công cụ cơ bản)',11),(48,'Phần 2: Các yếu tố về frame (Frame là thành phần nền tảng và cốt lõi trong figma, chương này giúp bạn hiểu về frame)',11),(49,'Phần 3: Autolayout (Autolayout là một công cụ rất hiểu quả để thực hiện dàn trải các thiết mang tính bố cục thứ tự)',11),(50,'Phần 4: Component/Instance/Variants (Công cụ nền tảng hỗ trợ cho sự tự động hóa trong figma)',11),(51,'Phần 5: Hệ thống hóa (Trong chương này chúng ta sẽ học cách để tạo ra các cấu trúc hệ thống cho file figma của bạn)',11),(52,'Phần 6: Thực chiến (Đem kiến thức đã học ở các chương vừa rồi vào việc thực hiện một website/app)',11),(53,'Phần 7: Prototype và trình diễn (Trình diễn trong figma giúp bạn làm rõ hơn về quy trình vận hành của web/app)',11),(54,'Phần 1: Các Cách Làm Tỷ Lệ Trong Autocad',12),(55,'Phần 2: Triển Khai Nội thất Nhà ở Gia Đình',12),(56,'Phần 3: Triển Khai Nội Thất Văn Phòng',12),(57,'Phần 1: Đánh thức phù thủy trí nhớ',13),(58,'Phần 2: Móc treo trí nhớ',13),(59,'Phần 3: E.A.T thông tin phức tạp',13),(60,'Phần 4: Công thức M.P.3',13),(61,'Phần 5: Con số ảo thuật',13),(62,'Phần 6: Ảo thuật trí nhớ',13),(63,'Phần 7: Trên cả trí nhớ',13),(64,'Phần 8: Hành trình bắt đầu',13),(65,'Phần 9: Cùng bạn chinh phục đỉnh Pi - nhớ dãy dài 1000 số!',13),(66,'Phần 1: NGUỒN HÀNG KINH DOANH - LẬP KẾ HOẠCH MARKETING - XÂY DỰNG THƯƠNG HIỆU',14),(67,'Phần 2: FACEBOOK MARKETING và PHÂN TÍCH KHÁCH HÀNG - ĐỐI THỦ - XÂY DỰNG NỘI DUNG - MỞ RỘNG QUY MÔ',14),(68,'Phần 3: TỐI ƯU FANPAGE VÀ QUẢNG CÁO FACEBOOK CHUYỂN ĐỔI',14),(69,'Phần 4: TỐI ƯU QUẢNG CÁO FACEBOOK ADS NÂNG CAO',14),(70,'Phần 5: INSTAGRAM MARKETING - XU HƯỚNG TIẾP CẬN GIỚI TRẺ',14),(71,'Phần 6: ZALO MARKETING - TIỀM NĂNG DÀI HẠN',14),(72,'Phần 7: YOUTUBE MARKETING - XU HƯỚNG VIDEO MARKETING',14),(73,'Phần 8: EMAIL MARKETING - CHĂM SÓC KHÁCH HÀNG TỰ ĐỘNG',14),(74,'Phần 1: Giới thiệu',15),(75,'Phần 2: Array and String | Mảng và Chuỗi',15),(76,'Phần 3: Sorting (1) | Các thuật toán sắp xếp (Phần 1)',15),(77,'Phần 4: Recursion | Đệ quy',15),(78,'Phần 5: Binary Search | Tìm kiếm nhị phân',15),(79,'Phần 6: Sorting (2) | Các thuật toán sắp xếp (phần 2)',15),(80,'Phần 7: Độ phức tạp của thuật toán',15),(81,'Phần 8: Linked List | Danh sách liên kết',15),(82,'Phần 9: Stack and Queue | Ngăn xếp và Hàng đợi',15),(83,'Phần 10: Hash Table | Set and Map',15),(84,'Phần 11: Tree | Cây',15),(85,'Phần 12: Graph | Đồ thị',15),(86,'Phần 13: Heap | Đống',15),(87,'Phần 14: Các CTDL và giải thuật NÂNG CAO',15);
/*!40000 ALTER TABLE `lessontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `mentor_id` int NOT NULL,
  `mentor_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mentor_content` varchar(8126) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(8126) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `working` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trailer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `achievements` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mentor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'Lê Quang Vinh','Tổng giám đốc B Coaching','- CEO – B Coaching','	https://bizuni.vn/upload/images/giang-vien/0.jpg?v=1640230312',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/A7T0rlfUdw8','Giảng viên Lê Quang Vinh là người có thâm niên đầu tư thực tế gần 15 năm trong thị trường chứng khoán từ 2006 - 2020'),(2,'Nguyễn Cảnh Bình','Chủ tịch Alphabooks','- Ông Nguyễn Cảnh Bình là Chủ tịch HĐQT, người sáng lập Công ty Cổ phần Sách Alpha (Alpha Books) và Omega Việt Nam. Ông cũng là Giám đốc Trung tâm hợp tác Trí tuệ Việt Nam (VICC), đồng thời là người sáng lập Chương trình Đào tạo Lãnh đạo Trẻ ABG – ABG Young Leaders Program.','https://bizuni.vn/upload/images/giang-vien/5.png?v=1594973533',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/1HhbADCHH8k','Mai Xuân Huy (Huy Quần Hoa) với kinh nghiệm hơn 8 năm trong lĩnh vực Photoshop'),(3,'Lâm Minh Chánh','Sáng lập Trường đào tạo QTKD BizUni, Đồng sáng lập Cộng đồng Quản trị và Khởi nghiệp.','- Anh Lâm Minh Chánh là Sáng lập và Chủ tịch Học viện Kinh doanh & Tài chính BizUni với sứ mệnh nâng tầm doanh trí, giúp trang bị kiến thức kỹ năng cho các chủ doanh nghiệp, các Startup Founders, khởi nghiệp, các cấp quản lý và nhân viên.','https://bizuni.vn/upload/images/giang-vien/34.jpg?v=1650691201',5,'Giảng Viên Bộ Môn','https://www.youtube.com/embed/E2oVmiT-fkY','Mai Xuân Huy (Huy Quần Hoa) với kinh nghiệm hơn 8 năm trong lĩnh vực Photoshop'),(4,'Hồ Minh Long','Sáng lập và điều hành KAS Training & Coaching','- 2006 – đến nay: Sáng lập và điều hành KAS Training & Coaching.','https://bizuni.vn/upload/images/giang-vien/2.jpg?v=1594973533',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/bbaPdACGsn8','Vũ Thùy Linh Giám đốc công ty TNHH đào tạo Lego.'),(5,'Bùi Minh Hiếu','Chủ tịch CML Training Group','- Tốt nghiệp Thạc sĩ Luật tại Khoa đặc biệt của trường V.K.I.M.O (Moskow).','https://bizuni.vn/upload/images/giang-vien/27.jpg?v=1594973533',5,'Giảng Viên Hợp đồng','https://www.youtube.com/embed/YmsmBwK4Efw','10 năm kinh nghiệm huấn luyện và đào tạo kỹ năng bán hàng, Marketing, CSKH tại các tập đoàn lớn như: điện máy Nguyễn Kim, thời trang CANIFA'),(6,'Trịnh Văn Hoa','Phó Tổng Giám đốc Cấp cao RedSun',' Trịnh Vân Hoa là Phó Tổng Giám đốc Cấp cao RedSun, Kiêm Phó Chủ tịch của Central Group, Việt Nam, và Giám đốc thương mại điện tử cấp cao và B2S tại Nguyenkim.com,','https://bizuni.vn/upload/images/giang-vien/10.jpg?v=1594973534',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/zrsij8nZzFc','CEO công ty TNHH Giải pháp truyền thông GIA PHÚC'),(7,'Hồ Đức Hòa','Founder & CEO của edu2review','Khen thưởng:','https://bizuni.vn/upload/images/giang-vien/do-duc-hoan.jpg?v=1594973534',5,'Giảng Viên Hợp đồng','https://www.youtube.com/embed/fKgdDpS6asc','Giảng viên Nguyễn Chương'),(8,'Nguyễn Tuần Quỳnh','Chủ tịch SaigonBooks','- Anh Nguyễn Tuấn Quỳnh, hiện là CEO Sài Gòn Books, Cựu Chủ tịch HĐQT tại Công ty Doanh Chủ, bên cạnh đó, anh còn đang nắm giữ cương vị TV HĐQT Công ty Cổ phần Nhiên liệu Sài Gòn (SFC), thành viên HĐQT của Công ty CP Vàng Bạc Đá Quý Phú Nhuận – PNJ, và tham gia HĐQT của một số công ty khác.','	https://bizuni.vn/upload/images/giang-vien/nguyen-kim-hung.jpg?v=1594973534',5,'Giảng Viên Hợp đồng','https://www.youtube.com/embed/IiukJurTmsM','Người hướng dẫn trực tiếp - Thầy Trịnh Duy Đông - Giảng viên tại khoa Design trường đại học Công Nghệ Sài Gòn (STU)'),(9,'Hà Anh Tuấn','Chủ tịch VinaLink','- Ông Hà Anh Tuấn được coi như là bậc thầy về Digital Marketing và người đồng sáng lập kiêm phó chủ tịch VMCC - Cộng đồng tiếp thị và Truyền thông Việt Nam. Ngoài ra, ông còn là giảng viên thỉnh giảng khóa cao học Marketing CFVG Pháp Việt, người sáng lập ra mạng Khảo sát Trực tuyến Việt Nam Vietnamsurvey.com cũng như Học viện Vinalink Đào tạo Marketing lớn nhất tại Việt Nam.','https://bizuni.vn/upload/images/giang-vien/12.jpg?v=1594973533',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/xIOGXya0RSE','- Vũ Ngọc Quyền là Founder Học Viện PAcademy, Trung Tâm Đào Tạo Digital Marketing Thực Chiến'),(10,'Hồ Thị Mộng Thu','Giảng Viên Trung Tâm Đào Tạo BBC','- ThS. Hồ Thị Mộng Thu có hơn 19 năm kinh nghiệm trong Quản lý nhân sự và Pháp lý. Hiện đang giữ chức Phó Tổng Giám Đốc tại Công ty INVESCO, phụ trách Nhân sự - Pháp lý. Đồng thời, cô hiện đang phụ trách giảng dạy môn Luật tại một số trường Đại học tại Việt Nam.','https://bizuni.vn/upload/images/giang-vien/15.jpg?v=1594973533',5,'Giảng Viên Chính Thức','https://www.youtube.com/embed/SCobKtKN6nk','Giáo sư, Doanh nhân Phan Văn Trường là chuyên gia cao cấp trong lĩnh vực đàm phán quốc tế và nguyên cố vấn của Chính phủ Pháp về thương mại Quốc tế.');
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Chào tèo, chúc bạn 1 kỳ nghỉ 30/4 vui vẻ với gia đình','teo@gmail.com','2022-04-03 00:00:00','Như vậy một kỳ nghỉ 30/4 đã trôi qua. Các bạn đã được trải nghiệm khóa học từ chúng tôi. Nếu có những điều chưa tốt từ chúng tôi xin vui lòng gửi phản hồi về ứng dụng để chúng tôi cải thiện thêm.',1),(2,'Chào tèo, bạn đã đăng ký thành công khóa học trên ứng dụng','teo@gmail.com','2022-04-01 00:00:00','Khóa học bạn đăng ký được ghi nhận lại xin vui lòng kiểm tra lại tài khoản về khóa học. Có thắc mắc xin phản hồi về địa chỉ email: xxx@gmail.com để chúng tôi ghi nhận',1),(3,'Chào tèo, bạn được tặng khóa học giảm 30% ','teo@gmail.com','2022-03-29 00:00:00','Trong thời gian học vừa qua chúng tôi ghi nhận bạn đã đăng ký nhiều khóa học nên chúng tôi muốn gửi tới bạn 1  phần giảm giá để giúp bạn học thật nhiều hôn',1),(4,'Chào tèo, bạn đã lâu chưa ghé lại khóa học','teo@gmail.com','2022-03-10 00:00:00','Chúng tôi ghi nhận tài khoản của bạn đã lâu chưa đăng nhập lại. Chúng tôi muốn gửi phản hồi tới bạn để kiểm tra lại. ',1),(5,'Chào tèo, bạn đã đăng ký tài khoản thành công','teo@gmail.com','2022-03-01 00:00:00','Bạn đã đăng ký tài khoản ở app của chúng tôi thành công xin vui lòng vào khóa học để đăng ký',1),(6,'Chào tèo, bạn cần chú ý không chia sẽ tài khỏa cho người khác để tránh việc mất tài khoản không đáng tiếc','teo@gmail.com','2022-03-06 00:00:00','Xin vui lòng không chia sẽ tài khoản của bạn cho 1 người khác để tránh trường hợp mất tài khoản vô cùng đáng tiếc xin vui lòng cảm ơn.',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_created` date NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,2,1,'2022-04-24',3999000),(2,2,2,'2022-04-22',3999000),(3,2,3,'2022-04-20',3999000),(4,2,4,'2022-04-18',3999000),(5,2,1,'2022-04-10',3999000),(6,2,2,'2022-04-10',3999000),(7,3,4,'2022-04-10',1999000),(8,3,3,'2022-04-01',1999000),(9,3,2,'2022-04-09',1999000),(10,4,1,'2022-04-11',2999000),(11,4,2,'2022-01-11',2999000),(12,4,3,'2022-03-02',2500000),(13,5,3,'2022-03-12',1000000),(14,6,2,'2022-03-04',1000000),(15,1,2,'2022-03-04',1000000),(16,1,3,'2022-03-12',1000000),(17,7,4,'2022-03-04',1000000),(18,7,4,'2022-03-04',2500000),(19,7,4,'2022-03-04',2500000),(20,8,3,'2022-03-12',1900000),(21,8,3,'2022-03-04',1900000),(22,8,3,'2022-01-11',1900000),(23,9,2,'2022-01-11',2800000),(24,9,3,'2022-03-04',2800000),(25,9,4,'2022-03-12',2800000),(26,10,2,'2022-03-12',1000000),(27,10,1,'2022-03-04',1000000),(28,10,3,'2022-01-11',1000000),(29,11,4,'2022-01-11',1500000),(30,11,3,'2022-03-04',1500000),(31,11,2,'2022-03-12',1500000);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(250) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `setting_type` varchar(45) NOT NULL,
  `setting_name` varchar(45) NOT NULL,
  `setting_value` varchar(45) NOT NULL,
  `status` tinyint NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int NOT NULL,
  `address` longtext NOT NULL,
  `company` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `work_position` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,'Tèo','teo@gmail.com','123',912312323,'123 Nguyen Van Long','1','1',1,'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png'),(2,2,'Tí','ti@gmail.com','123',24730055,'92 CMT8','1','1',1,'https://png.pngtree.com/png-vector/20190625/ourlarge/pngtree-business-male-user-avatar-vector-png-image_1511454.jpg'),(3,2,'Long','long@gmail.com','123',92834818,'123 Nguyen Chi Thanh','1','1',1,'https://www.nicepng.com/png/full/186-1866063_dicks-out-for-harambe-sample-avatar.png'),(4,2,'Tùng','tung@gmail.com','123',98238827,'99 Hong Bang','1','1',1,'https://banner2.cleanpng.com/20180717/cz/kisspng-avatar-youtube-person-kahoot-a-roommate-who-plays-with-a-cell-phone-5b4d74010dd214.7783760115318026250566.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 15:52:56
