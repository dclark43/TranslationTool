-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 02:01 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `translations`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`about_text`) VALUES
('A Multilingual Starter There are many students in the Charlottesville-Albemarle Community who are English language learners. \r\nThe pages that follow can help you build a connection to those students in your classes who started life in languages other than English. \r\n\r\nHere are some steps to start that process:\r\n- Use any and all resources to find out what languages your students speak. Ask them!\r\n- Find the expressions for a greeting and “thank you” in the student’s language. Try saying them or copy them onto an index card.\r\n- Greet the student in her language. Expect a surprised look and maybe laughter. If she acts like she doesn’t know what you’re saying, show her the card. More laughter may follow, but don\'t give up. Ask her to help you learn how to say it.\r\n- When the student answers or hands you an object, say “thank you” in his language. See notes above about laughter and follow up.\r\n- Add to your vocabulary as time permits. Encourage all your students to learn words in other languages.\r\n- If you notice a student who does not seem to be connecting with your instruction, use the list to find related terms in his language. It may spark recognition. \r\n- Use the list as a quick pre-assessment. For example, when you are about to start a topic, show the student a term in her primary language. If she knows the word in her language, she might also know the concept. That gives you a quick starting place for instruction. \r\n\r\nThis resource is a work in progress. If you have any comments, suggestions, and edits, please send them to the editors, Joe Garofalo (jg2e@virginia.edu) or Ruth Ferree (rf2c@virginia.edu), Curry School of Education and Human Development. \r\n\r\nThis project was coordinated by Ann Clark, a mathematics teacher at Jack Jouette Middle School, programmed by David Clark, and generously supported by Stuart Flanagan, Professor Emiritus at the College of William and Mary. \r\n\r\nSpecial thanks to the translators - community members, UVA students and faculty, and local students: Mel Lopez, Yaying Liang, Anne Rotich, Sajedeh Hosseini, Suad Mohamed, Kyong Mi Choi, Ruby Garofalo, Neha Shah, Manish Dahal, Maryam Alwan, Rajaah Alagib, Caroline Han, Emily Chang, Jolinna Li, Joseph Lee, Lana Kweon, Reese Hertel, Fatema Dost, and Shah Habibi.');

-- --------------------------------------------------------

--
-- Table structure for table `access_codes`
--

CREATE TABLE `access_codes` (
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_codes`
--

INSERT INTO `access_codes` (`code`) VALUES
('d033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `english` varchar(255) DEFAULT NULL,
  `spanish` varchar(255) DEFAULT NULL,
  `arabic` varchar(255) DEFAULT NULL,
  `farsi_dari` varchar(255) DEFAULT NULL,
  `swahili` varchar(255) DEFAULT NULL,
  `french` varchar(255) DEFAULT NULL,
  `chinese` varchar(255) DEFAULT NULL,
  `korean` varchar(255) DEFAULT NULL,
  `nepali` varchar(255) DEFAULT NULL,
  `pashto` varchar(255) DEFAULT NULL,
  `english_path` varchar(255) DEFAULT NULL,
  `spanish_path` varchar(255) DEFAULT NULL,
  `arabic_path` varchar(255) DEFAULT NULL,
  `farsi_dari_path` varchar(255) DEFAULT NULL,
  `swahili_path` varchar(255) DEFAULT NULL,
  `french_path` varchar(255) DEFAULT NULL,
  `chinese_path` varchar(255) DEFAULT NULL,
  `korean_path` varchar(255) DEFAULT NULL,
  `nepali_path` varchar(255) DEFAULT NULL,
  `pashto_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `english`, `spanish`, `arabic`, `farsi_dari`, `swahili`, `french`, `chinese`, `korean`, `nepali`, `pashto`, `english_path`, `spanish_path`, `arabic_path`, `farsi_dari_path`, `swahili_path`, `french_path`, `chinese_path`, `korean_path`, `nepali_path`, `pashto_path`) VALUES
(1, 'good morning', 'Buenos días', 'Sabah Al Khayer صباح الخير', 'Sobh be Kheir', 'Habari za asubuhi', 'Bonjour', '早上好(zao shang hao)', 'jo eun ah chim', 'namaste', 'sahar pakhayr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'hello', 'Hola', 'Salam مرحبا', 'Salam', 'Jambo?', 'Salut!', '你好(ni hao)', 'an nyung ha seyo', 'namaste', 'Salam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'How are you?', '¿Cómo estás?', 'Kayfa Al Hal كيف حالك', 'Chetor hasti?', 'Habari gani?', 'Comment ça va/', '你还好吗(ni hai hao ma)', 'jal ji nat seyo', 'kasto chhau', 'Senga ey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'good bye', 'Adiós', 'Ma Salama وداعاً', 'Khoda hafez', 'kwaheri', 'Au revoir', '再见(zai jian)', 'speaker staying/leaving: an nyung hee ga/gae seyo', 'namaste', 'Allah hazfiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'yes', 'Sí', 'Naam نعم , فعلا', 'bale', 'ndiyo', 'Oui', '是的(shi de)', 'ne', 'huhjar', 'hoo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'no', 'No', 'Laa لا', 'na/ni', 'hapana', 'Non', '不是(bu shi)', 'ah ni yo', 'namaste', 'na', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'please', 'Por favor', 'Law Samaht رجاءاً , إذا سمحت', 'lotfan', 'tafadhali', 'S\'il vous plaît', '请(qing)', 'bu tak hae yo', 'kripya', 'hella Kawom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Have a good day', 'Qué tengas buen día', 'Naharak Saeed اتمنى لك يوم جيد', 'Rooze khoobi dashte Bahsi', 'siku njema', 'Passez une bonne journée', '祝你有美好的一天 (zhu ni you mei hao de yi tian)', 'jo eun ha ru de se yo', 'din ramro hos', 'Kha wraz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'thank you', 'Gracias', 'Shukran اشكرك , شكرا لك', 'motshakeram/tshakor', 'asante', 'merci', '谢谢(xie xie)', 'go map sup ni da/gam sa hap ni da', 'dhanya Badh', 'Mahena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'sorry', 'Lo siento', 'Asif', 'bebakhshid/mazrat mekhaeham', 'samahani', 'Pardon', '对不起 (dui bu qi)', '(excuse me) jeo song hap ni da', 'maph grahoos', 'Bakhena ghauarm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'good job', 'Buen hecho', 'Mumtaz عمل جيد', 'Afarin', 'kazi njema', 'Bien fait.', '作的不 错 (Zuo de bu cu)', 'jal hat seo yo', 'ramro kaam', 'kha kar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'work/job', 'Trabajo', 'Shugl عمل', 'kar/ shoghl', 'kazi', 'un travail', '工作(gong zuo)', 'il/ (career) jik up', 'kaam', 'danda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'holiday', 'vacaciones', 'Ejaza', 'rukhsati', 'sikukuu', 'une fête', '假期 (jia qi)', 'gong hue il', 'chhoti', 'Rokhsati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Monday', 'lunes', 'Yom al ithnayn', 'doshanba', 'jumatatu', 'lundi', '星期一 (xing qi yi)', 'wul yo il', 'sombar', 'Do Shanbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Tuesday', 'martes', 'Yom al thulathaa', 'sa shanba', 'jumanne', 'mardi', '星期二 (xing qi er)', 'hwa yo il', 'manglabar', 'Say Shanbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Wednesday', 'miercoles', 'Yom al arbaa', 'char shanba', 'jumatano', 'mercredi', '星期三 (xing qi san)', 'soo yo il', 'buddhabar', 'Char Shanbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Thursday', 'jueves', 'Yom al jumah', 'panjshanba', 'alhamisi', 'jeudi', '星期四 (xing qi si)', 'moke yo il', 'bihibar', 'Panj Shanbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Friday', 'viernes', 'Yom al sabit', 'juma', 'ijumaa', 'vendredi', '星期五 (xing qi wu)', 'geum yo il', 'sukrabar', 'Jooma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Weekend', 'fin de semana', 'Yom al ahad', 'akhar hafta', 'wikiendi', 'le week-end', '周末 (zhou mo)', 'ju mal', 'sanibar/aitabar', 'Rokhsati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Any questions?', '¿Tienes algunas preguntas?', 'Ay Swal أي أسئلة', 'Soal darid?', 'Una maswali?', 'Avez-vous des questions?', '有什么问题吗(you shen me wen ti ma)', 'jil mun it seo yo?', 'quai prashna chha?', 'Kom Pokhtena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'quiet', 'Silencio', 'Hudoo/Sukoot هادئ ,صامت (هد ؤ)', 'Saket/aram bashid', 'kimya', 'Silence', '保持安静(bao chi an jing)', 'jo yong ha sae yo', 'chhup basnu', 'Ghale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'raise your hand', 'Levanta la mano', 'Erfa Yadak ارفع يدك', 'dastetan ra bala bebarid', 'Inua mkono juu', 'Levez la main.', '举手(ju shou)', 'son eul deul uh joo sae yo', 'haath uth hahu', 'Las mo ochat kay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'be seated', 'Siéntate', 'Ijlis إجلس , أقعد', 'benshinid', 'keti', 'Asseyez- vous.', '坐下(zuo xia)', 'an jah joo sae yo', 'busnu', 'zay ke kenay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'line up', 'en linea', 'Astuffu', 'khat bala', 'kupanga', 'Formez une queue', '排队 (pai dui)', 'jul seu sae yo/jul seo yo', 'line ma bashu', 'line ta shay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'fire drill', 'Simulacro de incendio', 'Tadrib al hariq تمرين اطفاء', 'test harigh', 'drili ya moto', 'une exercice pratique d\'incendie', '消防演习(xiao fang yan xi)', 'hwa jae hoon lyern', 'ago ko drill', 'de oor wazhnay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'emergency', 'Emergencia', 'Tawaari حالة طوارئ', 'Urzhans', 'dharura', 'un cas d\'urgence', '紧急情况(jin ji qing kuang)', 'gin geup sang hwang', 'No translation found', 'ajel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'teacher', 'Maestro', 'Mudarris مدرس', 'Mo\'alem', 'mwalimu', 'Professeur', '老师(lao shi)', 'sun saeng nim', 'm\'am, sir', 'khowanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'principal', 'Director de la escuela', 'Mudeer مدير مدرسة , ناظر', 'modir', 'mwalimu mkuu', 'Le Directeur/la Directrice', '校长(xiao zhang)', 'gyo jang sun saeng nim', 'No translation found', 'modeer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'office', 'Oficina', 'Maktab مكتب', 'Edare', 'ofisi', 'Le Bureau', '办公室(ban gong shi)', 'gyo mu sil (school)/ sa mu sil (general)', 'No translation found', 'dafyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Hallway', 'corredor', 'mumarr', 'rahro', 'ukumbi', 'Le Couloir', '走廊 (zou lang)', 'bok do', 'No translation found', 'loya lara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'classmate', 'Compañero de clase', 'Zameel زميل الدراسة', 'ham sanfi/ham classi', 'mwanafunzi mwenza', 'commrade de classe', '同学(tong xue)', 'hak geup chin goo', 'class ko saathi', 'senfy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'friend', 'amigo', 'Sadiq', 'dost', 'rafiki', 'un/e ami/e', '朋友 (peng you)', 'chiin goo', 'saati', 'malgary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Group', 'grupo', 'Majmua', 'group/gorhu', 'kundi', 'un groupe', '组 (zu)', 'geu loop', 'No translation found', 'team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Partner', 'Compañero', 'sharik', 'ham sfar/sharik', 'mpenzi', 'un partenaire', '伙伴 (huo ban)', 'jjak goong', 'saathi', 'ham teamai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Are you ok?', '¿Estas bien?', 'Hal ant bikhayr', 'hal shuma chotor hast?', 'yuko sawa?', 'Ça va?', '你还好吗? (ni hai hao ma?)', 'gwaen chan ah yo', 'thapai tikkag hunu cha?', 'ta kha ey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'counselor', 'Consejero', 'Murshid مستشار', 'moshaver', 'mshauri', 'un conseiller en orientation', '指导老师(zhi dao lao shi)', 'sang dam sun saeng nim', 'No translation found', 'merasta kawohkay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'nurse', 'Enfermera', 'Mumarrida ممرضة', 'parastar', 'nesi', 'une infirmière', '护士(hu shi)', 'gan ho sa sun saeng nim', 'nurse', 'nurse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'sick', 'Enfermo', 'Mareed مريض', 'bimar', 'mgonjwa', 'malade', '生病的(sheng bing de)', 'ah pa yo', 'bemari', 'Narogh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'hurt', 'lastimado', 'Musab', 'Afgar shadan', 'kilemba', 'Blessé, mal', 'pain: 痛 (tong)', 'ah pa yo', 'chhot lagua', 'Zhobel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'tired', 'Sueño', 'Taabaan', 'khasta', 'uchovu', 'fatigué', '累 (lei)', 'him deul oh yo', 'No translation found', 'Stare Showay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'tissue', 'Pañuelo', 'Mandeel منديل ورقي', 'dastmal kaghazi', 'karatasi ya sashi', 'un mouchoir en papier', '纸巾(zhi jin)', 'heu ji', 'No translation found', 'Nasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'schedule', 'Horario', 'Jadwal جدول', 'barname/taqsem aoqat', 'ratiba', 'emploi du temps', '课程表(ke cheng biao)', 'si gan pyo', 'No translation found', 'Mahal wesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'book', 'Libro', 'Kitaab كتاب', 'ketab', 'kitabu', 'un livre', '书(shu )', 'chaek', 'kitab', 'Ketaab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'notes', 'Notas', 'Mulahadat ملاحظات', 'yad dasht', 'maandishi', 'prendre des notes', '笔记(bi ji)', 'gong chaek', 'note haaru', 'Yadekht', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'paper', 'Papel', 'Waraqah ورقة', 'kaghaz', 'karatasi', 'le papier', '纸(zhi)', 'jong yi', 'No translation found', 'Waraqa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'practice', 'Practica', 'Tamreen يمارس', 'tamrin', 'mazoezi', 'entrainer, pratiquer', '练习(lian xi)', 'yeon seup mun je', 'No translation found', 'Amal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'assignment', 'Tarea', 'Waajib مهمة', 'mashgh/kar khanagi', 'Kazi ya', 'le travail', '任务(ren wu )', 'gwa je', 'No translation found', 'Danda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'study', 'Estudiar', 'Udrus دراسة , (الفعل) يدرس', 'dars khandan', 'soma', 'étudier', '学习(xue xi)', 'gong bu', 'paama', 'Motalea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'homework', 'Tarea', 'Waajib واجب منزلي', 'taklif/kar khanagi', 'Kazi ya nymbani', 'les devoirs', '作业(zuo ye)', 'sook je', 'ghaar ko kaam', 'Karane Danda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'read', 'Leer', 'Iqraa اقرأ', 'khandan', 'soma', 'lire', '读(du)', 'ilk gi', 'paama', 'Lewastel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'quiz', 'Prueba', 'Imtihaan Qaseer لغز , اختبار , فحص', 'emtehan', 'mtihani', 'exerice de contrôle', '测验(ce yan)', 'qwi zu', 'exam', 'emtahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'test', 'Examen', 'Imtihaan اختبار , امتحان', 'emtehan', 'Jaribio la mtihani', 'un examen', '考试(kao shi)', 'shi hum', 'exam', 'Azmoyena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'grade', 'Puntaje', 'Daraja مستوى , درجة', 'nomre', 'alama', 'une note', '分数 (fen shu)', 'sung juck', 'No translation found', 'Daraja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'grade level', 'grado', 'Ssaf', 'satah daraja', 'kidato', 'le niveau', '年级(nian ji)', 'hak nyun', 'standard', 'De daraje kacha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'library', 'Biblioteca', 'مكتبة maktabah', 'ketab khane', 'maktaba', 'la bibilothèque', '图书馆(tu shu guan)', 'do seo gwan', 'No translation found', 'ketaabtoon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Do you understand?', '¿entiendes?', 'Hal tafham?', 'Aia shuma famided?', 'unaelewaje? Je, unafahamu?', 'Comprenez?', '你听得懂吗？(ni ting de dong ma?)', 'eeye dae seyo?', 'tapai lae samjhino bhayo?', 'Ta poha shwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Do you need help?', '¿Necesitas ayuda?', 'Hal tahtaaj musaadah?', 'Aia shuma ba komak niaz darid?', 'je, unahitaji said ia?', 'Vous avez besoin d\'aide?', '你需要帮忙吗？(ni xu yao bang mang ma?)', 'do eum pee lyo ha sae yo?', 'No translation found', 'ta mraste ta artyalara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Show your work', 'muestra tu trabajo', 'Areeni amalak', 'mun jae pool ee gwa Jung eul bo yo joo sae yo', 'onyesha kazi yako', 'Montrez votre travail', '写下做题步骤 (xie xia zuo ti bu zhou)', 'il bo yo joo sae yo', 'kaam dekhoinu', 'Danda de akhkara ka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'classroom', 'Aula', 'Ghurfit al ssaf قاعة الدراسة , غرفة الدراسة , صف', 'sanf/classe darsi', 'darasa', 'une salle de classe', '教室(jiao shi)', 'gyo sil', 'class ko saathi', 'ezdakre tolgay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'whiteboard', 'Pisaron', 'sabboorah لوح للكتابة', 'tahkti safid', 'ubao', 'un tableau blanc', '白板 (bai ban)', 'chil pan', 'board', 'speen takhta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'bathroom', 'Baño', 'Hammam حمام', 'dast shuee', 'mahali pa kujisaidia', 'la toilette', '手间(xi shou jian)', 'hwa jang sil', 'bathroom', 'hamam (Bad raft)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'cafeteria', 'Cafetería', 'Mataam مقصف , كافتيريا', 'cantine', 'kafeteria', 'la cafétéria', '食堂(shi tang)', 'sik dang', 'canteen', 'canteen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'breakfast', 'desayuno', 'fatoor', 'sobhana', 'Chakula cha asubuhi', 'le petit déjeuner', '早饭 (zao fan)', 'ah chim', 'biyaha ko khaana', 'sahar chaay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'lunch', 'almuerzo', 'Ghadaa', 'ghazai chasht', 'Chakula cha mchana', 'le déjeuner', '午饭 (wu fan)', 'jum shim', 'dueson ko khaana', 'gharme dodaay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'gymnasium', 'Gimnasio', 'Saalat al riyadah', 'bashgah varzeshi', 'gimu', 'un gymnase', '体育馆(ti yu guan)', 'che yuk gwan', 'gym', 'spoort zaay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'school bus', 'El bus de escuela', 'Hafilat Almadrasah باص المدرس', 'otoboos-e madrese/bus maktab', 'basi ya shule', 'autobus scolaire', '校车(xiao che)', 'hak gyo bus', 'bus', 'khwanzi motar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'before school', 'Antes de escuela', 'Athnaa Alghada قبل المدرسة', 'qabl az madrese/qabl az maktab', 'kabla ya shule', 'avant l\'école', '放学前(fang xue qian)', 'hak gyo si jack jeon', 'school ko paelai', 'de khwanzina makhke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'during lunch', 'Durante almuerzo', 'Abl Algada اثناء الغذاء', 'dar toole saat-e nahar', 'wakati wa chakula cha mchana', 'pendant le déjeuner', '午饭期间(wu fan qi jian)', 'jum sim si gan jung', 'khaaha ko saam ay ma', 'de gharmipa wakht ke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'after school', 'Después de escuela', 'Baad Almadrasah بعد الغذاء', 'baad az madrsese/baad az maktab', 'baada ya shule', 'après l\'école', '放学后(fang xue hou)', 'bang gwa hoo', 'school ko paachi', 'roosta la khonzi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'mathematics', 'Matemática', 'Riyadiyat رياضيات', 'riazi', 'hesabu', 'les mathématiques', '数学(shu xue)', 'soo hak', 'maths', 'beyazi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'history', 'Historia', 'Tareekh مادة التاريخ', 'tarikh', 'historia', 'l\'histoire', '历史(li shi)', 'yeok sa', 'history', 'tarekh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'science', 'Ciencias', 'Uloom مادة العلوم', 'olum /science', 'sayansi', 'la science', '科学(ke xue)', 'gwa hak', 'science', 'science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'biology', 'Biología', 'Ilm Ahyaa مادة الاحياء', 'zist shenasi/biology', 'bayologia', 'la biologie', '生物(sheng wu)', 'saeng mul', 'biology', 'biology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'chemistry', 'Química', 'Al Keemya مادة الكيمياء', 'shimi/kimia', 'chemia', 'la chimie', '化学(hua xue)', 'hwa hak', 'chemistry', 'kemxa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'physics', 'Física', 'Al Phisyaa مادة الفيزياء , علوم فيزيائية', 'phizic', 'fisikia', 'la physique', '物理(wu li)', 'mul li', 'physics', 'fzek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'music', 'Música', 'Al mussiqa موسيقى', 'mosighi/mosiqi', 'muziki', 'la musique', '音乐(yin yue)', 'um ak', 'sargeet', 'sandara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Physical Education', 'Educacion Fisica', 'Riyadah قاعة رياضه , جمنازيوم', 'saport/tamilat madani', 'elimu ya viungo', 'l\'education physique', '体育课 (ti yu ke)', 'chae yook', 'gym', 'fzek elm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'band', 'Banda', 'Firqah فرقه موسيقية', 'goruh-e musighi/goruh-e musiqi', 'bandi', 'l\'orchestre', '乐队(yue dui)', 'um ak dan', 'No translation found', 'goroh (band)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'sports', 'Deportes', 'Riyadah رياضة', 'saports ha/varzesh ha', 'michezo', 'les sports', '动(yun dong)', 'un dong', 'kheliaida', 'warzesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'field', 'Campo', 'Maydaan حقل , ميدان', 'zamine', 'uwanja', 'le terrain de sport', '操场(cao chang)', 'un dong jang', 'shetra', 'saha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'ball', 'Pelota', 'Kura', 'toop', 'mpira', 'une balle', '球 （qiu)', 'gohng', 'ball', 'toop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'soccer', 'Futbol', 'Kurat Alqadam كرة القدم', 'football', 'soka', 'le football', '足球(zu qiu)', 'chuk gu', 'football', 'football', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'baseball', 'Béisbol', 'Kurat Al Qaida لعبة البيسبول , كرة المضرب', 'baseball', 'besiboli', 'le baseball', '棒球(bang qiu)', 'ya gu', 'No translation found', 'baseball', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'softball', 'Softball', 'Kurat Tariyyah الكرة اللينة , شبيهه بلعبة البيسبول', 'softball', 'softiboli', 'le softball', '垒球(lei qiu)', 'so peu teu bol', 'No translation found', 'softball', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'basketball', 'Basquetbol', 'Kurat Assalla لعبة كرة السلة', 'basketball', 'basketiboli', 'le basketball', '篮球(lan qiu)', 'nong gu', 'No translation found', 'basketball', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'football', 'Futbol americano', 'Krat Alqadam Alamrikyah لعبة كرة القدم الامريكية', 'football', 'futiboli', 'le football américain', '橄榄球(gan lan qiu)', 'mi sik chuck gu', 'No translation found', 'football', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'mother', 'Madre', 'Umm/Mama ام', 'madar', 'mama', 'Mère', '母亲(mu qin)', 'um ma', 'maumi', 'moor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'father', 'Padre', 'Ab/Baba اب', 'pedar', 'baba', 'Père', '父亲(fu qin)', 'ah ppa', 'baba', 'plar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'parents', 'Padres', 'Walidaan الابوين , الوالدين', 'khanevadeh', 'wazazi', 'les parents', '父母(fu mu)', 'bu mo nim', 'mumi rah baba', 'moor aw plar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'family', 'Familia', 'Aaeella اسرة', 'famil', 'familia', 'la famille', '家人(jia ren)', 'ga jok', 'No translation found', 'koranay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'brother', 'Hermano', 'Akh اخ', 'baradar', 'kaka', 'Frère', 'older: 哥哥(ge ge); younger: 弟弟(di di)', 'older: hyung (from male); oppa (from female); younger: nam dongsaeng', 'older: daju, dai; younger: bhai', 'woror', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'sister', 'Hermana', 'Ukht اخت', 'khahar', 'dada', 'Soeur', 'older: 姐姐(jie jie);  younger: 妹妹 (mei mei)', 'older: nuna (from male); unni (from female);  younger: yuh dongsaeng', 'older: didi; younger: behni', 'khoor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'subtract (-)', 'restar', 'itrah', 'kam kardan/manfi', 'ondoa', 'soustrayez', '减 去 (jian qu) /减 掉 (jian diao)', 'gamhada or bbaegi', 'gatau nu', 'kaam kawol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'multiply (x)', 'multplicar', 'oodrub', 'zarb kardan', 'kuzidisha or zidisha mara', 'multipliez', '乘 以 (cheng yi)', 'gobhada or gobhagi', 'No translation found', 'zarba wol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'divide (÷) [partition]', 'dividir', 'qassim', 'taghsim kardan/taqsim kardan', 'gawa or gawanya mara', 'divisez', '除 以 (chu yi)', 'bunlihada or nanugi', 'baathe', 'taqsemqwol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'less than (<)', 'menor que', 'aqal min اقل من', 'kamtar az', 'chini ya', 'moins que', '...比 (bi)...少(shao)', 'boda jukda', 'No translation found', 'leg allama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'greater than (>)', 'mayor que', 'akthar min أكثر من', 'bishtar az/ziadter az', 'zaidi ya', 'plus que', '...比(bi)...多(duo)', 'boda manta', 'No translation found', 'deer allama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'equal to (=)', 'igual a', 'yusaawi يساوي', 'mosavi ba', 'sawa', 'font, egale', '和(he)...相等(xiang deng)', 'gat da', 'No translation found', 'brabar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'squared', 'al cuadrado', 'murabaa', 'maraba', 'mraba', 'carré', '平方 (ping fang)', 'jae gob', 'No translation found', 'teet shawe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'square root', 'raiz cuadrada', 'al jathr al tarbiyii', 'jazz/risha doam', 'kipeo', 'la racine carrée', '平方根 (ping fang gen)', 'jae gob geun', 'No translation found', 'morab shakel rekhe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'top', 'encima de', 'aalla أعلى', 'bala', 'juu', 'en haut', '上面(shang mian)', 'wee', 'maathl', 'paas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'bottom', 'debajo de', 'asfal الأسفل', 'paeen', 'chini', 'en bas', '下面(xia mian)', 'a-rae', 'tauia', 'londe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'numerator', 'numerador', 'albast البسط', 'soorat', 'namba ya juu ya mstari', 'le numérateur', '分子(fen zi)', 'bunja', 'No translation found', 'sorat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'denominator', 'denominador', 'almaqam المقام(القاسم)', 'makhraj', 'namba ya chini ya mstari', 'le dénominateur', '分母(fen mu)', 'bunmo', 'No translation found', 'makhraj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'fraction', 'fracción', 'kasr جزء, كسر', 'kasr', 'sehemu', 'une fraction', '分数(fen shu)', 'bunsu', 'No translation found', 'barkha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'decimal', 'decimal', 'addad ushri عدد(رقم) عشري', 'a\'ashar', 'sehemu za kumi', 'und décimale', '小数点(xiao shu dian)；小数(xiao shu)', 'sosu', 'No translation found', 'asharya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'percent (%)', 'porcentaje', 'nisba miawiya نسبه مئويه', 'darsad', 'asilimia', 'un pourcentage', '百分之...(bai fen zhi)', 'pusent', 'No translation found', 'slena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'ratio', 'ratio', 'nisba نسبه', 'nesbat', 'uwiano', 'un ratio', '比率(bi lu)', 'biyul', 'No translation found', 'tanqsib', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'proportion', 'proporción', 'nisba tanasub نسبه (تناسب)', 'nesbat/ tanasob', 'kuwiana', 'une proportion', '比例(bi li)', 'biyul', 'No translation found', 'tanqsub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'positive', 'positivo', 'moojib ايجابي(موجب)', 'mosbat', 'halisi', 'positif', '正数(zheng shu)', 'yang', 'No translation found', 'mosbat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'negative', 'negativo', 'saalib سالب (سلبي)', 'manfi', 'namba hasi', 'négatif', '负数(fu shu)', 'eum', 'No translation found', 'manfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'integer', 'número entero', 'addad sahih عدد(رقم)صحيح', 'adad sahih', 'namba kamili', 'No translation found', '整数(zheng shu)', 'jungsu', 'No translation found', 'zamema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'prime number', 'número primo', 'addad awalii رقم اولي', 'adad aval', 'namba tasa', 'No translation found', '质数(zhi shu)', 'so su', 'No translation found', 'lomrans shmera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'rational number', 'número racional', 'raqm aqlani منطقي أو عدد عقلاني', 'adad gooya', 'namba razini', 'No translation found', '有理数(you li shu)', 'yuri su', 'No translation found', 'mantqe shmera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'irrational number', 'número irracional', 'raqm ghayer aklani عدد غير عقلاني', 'adad gong', 'namba isiyo razini', 'No translation found', '无理数(wu li shu)', 'muri su', 'No translation found', 'cha mantqe shnfre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'absolute value', 'el valor absoluto', 'qeemah mutlaqa قيمه مطلقه', 'ghadr-e motlagh/qadr-e motlaq', 'nambari kamili', 'No translation found', '绝对值(jue dui zhi)', 'jul dae gap/chi', 'No translation found', 'matlaq arzekht', 'uploads/absolute value.mp3', 'uploads/absoluto.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'money', 'dinero', 'nuqood/fuloos نقود ,', 'pool/puisa', 'pesa', 'l\'argent', '钱(qian)', 'don', 'paisa', 'paysay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'calculator', 'calculador', 'hasiba', 'mashin husub', 'kalkyuleta', 'une calculatrice', '计算器 (ji suan qi)', 'gae sangi', 'No translation found', 'weshlo mashen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'one', 'uno', 'wahad', 'yak', 'moja', 'un', '一 (yi)', 'il/hana (date, grade, money/count, age)', 'aque', 'kaaw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'two', 'dos', 'ithnaan', 'do', 'mbili', 'deux', '二 (er)', 'ee/dul', 'paanch', 'dowa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'three', 'tres', 'thalaathah', 'sah', 'tatu', 'trois', '三 (san)', 'sam/saet', 'teen', 'dree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'four', 'quatro', 'arbaa', 'char', 'nne', 'quatre', '四 (si)', 'sah/naet', 'chhaar', 'salor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'five', 'cinco', 'khamsa', 'panj', 'saba', 'cinq', '五 (wu)', 'oh/dahsut', 'paanch', 'penza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'six', 'seis', 'sittah', 'shash', 'sita', 'six', '六 (liu)', 'yook/yeosut', 'chau', 'shpag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'seven', 'siete', 'sabaah', 'haft', 'saba', 'sept', '七 (qi)', 'chil/ilgob', 'saath', 'waa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'eight', 'ocho', 'tamaniyah', 'hasht', 'nane', 'huit', '八 (ba)', 'pal/yeodul', 'aath', 'ata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'nine', 'nueve', 'tisaah', 'noh', 'tisa', 'neuf', '九 (jiu)', 'goo/ah hoeb', 'hou', 'nha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'ten', 'diez', 'asharah', 'da', 'kumi', 'dix', '十 (shi)', 'ship/yul', 'das', 'laas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'eleven', 'once', 'ahadah ashar', 'yazda', 'kumi na moja', 'onze', '十一 (shi yi)', 'ship il/yul hana', 'aagara', 'yawolas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'twelve', 'doce', 'ithna ashar', 'doazeler', 'kuma na mobili', 'douze', '十二 (shi er)', 'ship ee/yul dul', 'No translation found', 'dolas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'One half', 'una mitad', 'nusuf', 'yak o\'neim', 'nusu', 'une moitié', '二分之一 (er fen zhi yi)', 'ban (half)/ee boon eh il (1/2)', 'aadi', 'hem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'One third', 'un tercio', 'thulth', 'yak saom', 'thuluthi', 'un tiers', '三分之一 (san fen zhi yi)', 'sam boon eh il', 'No translation found', 'drexma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'one hundred', 'cien', 'miaa', 'yak suel/sed', 'elfu', 'cent', '一百个 (yi bai ge)', 'baek', 'ek sau', 'seel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'one thousand', 'mil', 'alf', 'yak hazar', 'mia', 'mille', '千 (qian)', 'chun', 'ek hajar', 'yaw zeer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'variable', 'la variable', 'mutahawwil متغير', 'moteghayer', 'kubadilika', 'No translation found', '变量(bian liang)', 'byun soo', 'No translation found', 'motaghater', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'expression', 'la expresión', 'tabeer التعبير', 'ebaarat', 'dhihirisha', 'No translation found', '表达式(biao da shi)', 'shik', 'No translation found', 'ekhraj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'coefficient', 'el coeficiente', 'muaamil معامل', 'zarib', 'kizidishi', 'No translation found', '系数(xi shu)', 'gye su', 'No translation found', 'zarb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'before', 'antes de', 'qabl', 'qabl', 'kabla ya', 'devant', '之 前 (zhi qian)', 'jeon', 'aagaari', 'makhki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'after', 'despues de', 'baed', 'baad', 'baada ya', 'après', '之 后 (zhi hou)', 'hoo', 'paachari', 'woroosta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'polynomial', 'polinomio', 'mutaddi alhodood متعدد الحدود', 'chand jomle-yi', 'polinomi', 'No translation found', '多项式（duo xiang shi）', 'da hang shik', 'No translation found', 'so jomee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'factor', 'factor', 'muaamil عامل (رياضيات)', 'zarib', 'namba kamilifu', 'No translation found', '因数(yin shu)', 'in su', 'No translation found', 'ansur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'evaluate', 'evaluar', 'qayim تقييم', 'arzyabi kardan', 'tathmini', 'No translation found', '评估 (ping gu)', 'dae yip', 'No translation found', 'azona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'simplify', 'simplificar', 'bassit تبسيط', 'sade kardan', 'rahisisha', 'No translation found', '简化(jian hua)', 'yak bun ha da (fraction); jung ri ha da (eq.)', 'No translation found', 'sada kawol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'calculate', 'calcular', 'ihsub', 'hasab', 'kupiga hesabu', 'No translation found', '计算 (ji suan)', 'gae san', 'No translation found', 'hesabawol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'equation', 'ecuación', 'muadalah معادلة', 'moadeleh', 'linganisha', 'No translation found', '等式(deng shi)', 'bang jung shik', 'No translation found', 'masawaat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'solve', 'resolver', 'hal حل', 'hal kardan', 'suluhisha', 'No translation found', '解决(jie jue)', 'pul da', 'No translation found', 'halawor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'inequality', 'desigualdad', 'laa musawaa عدم المساواة (عدم تساو , تفاوت)', 'ekhtelaf', 'kutokuwa sawa', 'No translation found', '不等式(bu deng shi)', 'bu deung shik', 'No translation found', 'na brabary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'algebra', 'algebra', 'aljabr علم الجبر', 'jabr/al-jabr', 'algebra', 'No translation found', '代数(dai shu)', 'dae Su hak', 'No translation found', 'reqzi (Algebar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'function', 'función', 'taabii وظيفة (في الرياضيات)', 'tabe', 'kazi', 'No translation found', '函数(han shu)', 'ham su', 'No translation found', 'danda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'graph', 'grafico', 'rasm bayaani رسم بياني', 'geraph', 'grafu', 'No translation found', '图象(tu xiang)', 'gu rae pu', 'No translation found', 'graph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'coordinates', 'las coordinadas', 'ihdaafiyaat إحداثيات', 'mokhtasat', 'namna sawa', 'coordinés', '坐标（系）(zuo biao xi)', 'jua pyo', 'No translation found', 'hamghazai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'linear', 'lineal', 'khatti خطي(طولي)', 'khati', 'umbo mstari', 'No translation found', '线性(xian xing)', 'sun hyung', 'No translation found', 'sefr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'slope', 'gradiente', 'munhadar منحدر', 'shib', 'mteremko', 'No translation found', '斜率(xie lu)', 'gi yul gi', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'y-intercept', 'la intersección Y', 'taqaatu al shaaqulii التقاطع في(المحور)', 'hayel-e y', 'herufi ya y kamata', 'No translation found', 'y轴截距(y zhou jie ju)', 'wai jul pyun', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'intersection', 'intersección', 'taqaatu', 'taqata/char yah', 'makutano', 'No translation found', '交叉点 (jiao cha dian)', 'jul pyun', 'No translation found', 'salor laree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'constant', 'el constante', 'thaabit ثابت(قيمة ثابتة)', 'sabet', 'kawaida', 'No translation found', '常数(chang shu)', 'sang su', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'curve', 'la curva', 'munhana منحنى, تقوس (خط غير مستقيم)', 'monhani', 'mchirizo', 'No translation found', '曲线(qu xian)', 'gok sun', 'No translation found', 'galgei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'quadratic', 'cuadrático', 'tarbeeii تربيعي', 'daraje dovom', 'mraba', 'No translation found', '二次的(er ci de)；二次方程(er ci fang cheng)', 'yi cha', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'parabola', 'parábola', 'al qati almukafii القطع المكافئ (هندسه )', 'ghat-e makhroot', 'parabola', 'No translation found', '抛物线(pao wu xian)', 'po mul sun', 'No translation found', 'parabola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'geometry', 'geometría', 'handasah علم الهندسه', 'hendese', 'jiometri', 'la géométrie', '几何(ji he)', 'gi ha hak', 'No translation found', 'maalast', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'point', 'punto', 'nuqta نقطه', 'noghte', 'pointi', 'un point', '点(dian)', 'jum', 'No translation found', 'tilee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'segment', 'segmento', 'maqtaa القطعه الدائريه (قطعه ,قسم , جزؤ)', 'bakhsh', 'sehemu', 'No translation found', '线段(xian duan)', 'sun bun', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'line', 'línea', 'khut خط', 'khat', 'laini', 'un ligne', '线条(xian tiao)', 'sun', 'No translation found', 'khat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'ray', 'rayo', 'shuaa شعاع', 'shoaa', 'mwali', 'No translation found', '射线(she xian)', 'bang hyang sun', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'plane', 'plano', 'mustawi سطح مستو', 'hamvaar', 'usawa mmoja', 'No translation found', '平面(ping mian)', 'pyung myun', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'angle', 'ángulo', 'zaawiyah زاوية', 'zaviye', 'pembe', 'une angle', '度数(du shu)', 'gak', 'No translation found', 'zawya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'right angle', 'ángulo recto', 'zaawiyah qaaimah زاوية مستقيمة', 'zaviye ghaemeh/zavige qaemeh', 'Pembe mraba', 'une angle droite', '直角(zhi jiao)', 'jik gak', 'No translation found', 'khe zawya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'perpendicular', 'perpendicular', 'aamoodi عمودي', 'amud', 'wima', 'No translation found', '垂直(chui zhi)', 'su jik', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'intersect', 'intersecar', 'yataqatah يتقاطع', 'ghat kardan/qat kardein', 'kutana', 'No translation found', '相交(xiang jiao)', 'gyo cha', 'No translation found', 'motaqate lehatona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'rectangle', 'rectángulo', 'mustateel مستطيل', 'mostatil', 'mstatili', 'No translation found', '长方形(chang fang xing)', 'jik sa gak hyung', 'No translation found', 'mastatr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'circle', 'circulo', 'daayrah دائرة', 'dayere', 'mviringo', 'un cercle', '圆圈(yuan quan)', 'won', 'No translation found', 'daira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'radius', 'radio', 'nusuf al quturr', 'shaha/shaha dagree or Nasf dayra', 'nusukipenyo', 'No translation found', '半径 (ban jing)', 'ban jee leum', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'diameter', 'diámetro', 'quturr addaayrah', 'qater dayru', 'kipenyo', 'No translation found', '直径 (zhi jing)', 'jee leum', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'circumference', 'circunferencia', 'muhit', 'mohit/mohit dayra/muhdasder', 'mduara', 'No translation found', '圆周长 ( yuan zhou chang)', 'won joo/dul le', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'parallelogram', 'paralelogramo', 'mutawazii adlaa متوازي الاضلاع', 'motevazi al-azla', 'msambamba', 'No translation found', '平行四边形(ping xing si bian xing)', 'pyung haeng sa byun hyung', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'quadrilateral', 'cuadrilátero', 'rubaaii رباعي( رباعي الاضلاع)', 'chahar zelee', 'pembene', 'No translation found', '四边形(si bian xing)', 'sa gak hyung', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'triangle', 'triangulo', 'muthallath مثلث', 'mosalas', 'Pembe tatu', 'un triangle', '三角形(san jiao xing)', 'sam gak hyung', 'No translation found', 'musalas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'congruent', 'congruente', 'mutaabiq يتطابق , متطابق مطابق', 'motejanes', 'ulinganifu', 'No translation found', '全等的(quan deng de)', 'hap dong', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'regular', 'regular', 'muntatham منتظم ,', 'ba ghaedeh/bu qaedeh', 'kawaida', 'régulier', '规则的(gui ze de)，正的(zheng de)（regular polygon正多边形；）', 'jung (if referring to figures)', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'polygon', 'polígono', 'mootaadad al adlaa ذو عدة اضلع', 'kasir al- azla', 'poligoni', 'No translation found', '多边形(duo bian xing)', 'da gak hyung', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'probability', 'probabilidad', 'ihtimal إحتمال', 'ehtemal', 'mwelekeo', 'No translation found', '概率(gai lu)', 'whak yul', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'random', 'aleatorio', 'ashwaii عشوائي', 'ghei-e amdi', 'Bila mpango', 'No translation found', '随机(sui ji)', 'mu jak wi', 'No translation found', 'so raqama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'statistics', 'estadísticas', 'ihsaa الاحصاء', 'aamar', 'takwimu', 'No translation found', '统计(tong ji)', 'tong gye', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'data', 'los datos', 'bayaanat البيانات', 'daade/atlahert/malomert', 'data', 'No translation found', '数据(shu ju)', 'dei ta', 'No translation found', 'data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'scatterplot', 'diagrama de dispersión', 'mukhatat altashattut مخطط لتشتت', 'nemoodar-e parakandegi', 'zilizotawanyika', 'No translation found', '散点图(san dian tu)', 'san po do', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'average/mean', 'promedio', 'mutawasit معدل / متوسط', 'miangin/ahd versut/mianu', 'wastani', 'le moyen', '平均(ping jun)', 'pyung gyun', 'No translation found', 'brabar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'median', 'mediana', 'waseet الوسيط ,', 'mianeh/uasat', 'kati', 'No translation found', '中数(zhong shu)', 'jung gan gap', 'No translation found', 'manzenay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'mode', 'moda', 'alwade alihsaaii', 'adade maini', 'modi', 'No translation found', '众数 (zhong shu)', 'che bin su', 'No translation found', 'No translation found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'standard deviation', 'desviación estándar', 'alinhiraf almiyaarii الانحراف المعياري', 'enheraf-e estandard', 'mchepuko', 'No translation found', '标准偏差(biao zhun cha)', 'pyo jun pyun cha', 'No translation found', 'standard taqsem awol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'add (+)', 'sumar', 'ijmaa', 'ezafeh kardan/jama', 'ongeza', 'additionnez', '加 上 (jia shang)', 'yoyaghada or deohagi', 'jaur nu', 'Ezafa kray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
