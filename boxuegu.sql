/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : boxuegu

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-21 13:08:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `courseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `imgtitle` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `intro` text,
  `imgpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfo
-- ----------------------------
INSERT INTO `courseinfo` VALUES ('1', 'Android 开发环境搭建', '第1章 Android 基础入门', '      Android 是Google公司基于Linux平台开发的手机及平板电脑的操作系统。自问世以来，受到了前所未有的关注，并成为移动平台最受欢迎的操作系统之一。本章将针对Android的基础知识进行详细的讲解。', null);
INSERT INTO `courseinfo` VALUES ('2', 'Android 五大布局', '第2章 Android UI开发', '      Android 程序开发最重要的一个环节就是界面处理，界面的美观度直接影响用户的第一印象，因此，开发一个整齐、美观的界面是至关重要的，本章将针对Android中的UI开发进行详细地讲解。', null);
INSERT INTO `courseinfo` VALUES ('3', 'Activity 的使用', '第3章 Activity', '      在现实生活中，经常会使用手机进行打电话、发短信、玩游戏等，这就需要与手机界面进行交互。在Android系统中，用户与程序的交互是通过Activity完成的。同时Activity是Android四大组件中最常用的一个，本章将针对Activity的相关知识进行详细的讲解。', null);
INSERT INTO `courseinfo` VALUES ('4', '数据存储方式与文件存储', '第4章 数据存储', '      大部分应用程序都会涉及到数据存储，Android程序也不例外。Android中的数据存储方式有五种，分别是文件存储、SharedPreferences、SQLite数据库、ContentProvider以及网络存储。文件存储有很多种形式，XML就是其中的一种，XML存储的数据结构比较清晰，应用比较广泛，因此本章将重点讲解文件存储、XML序列化和解析以及SharedPreferences存储。SQLite数据库、ContentProider和网络存储知识较多并且存储方式与文件存储、SharedPreferences有明显差别，所以放在后边的章节中进行想起讲解。', null);
INSERT INTO `courseinfo` VALUES ('5', 'SQLite 数据库与ListView', '第5章 SQLite 数据库', '      前面介绍了如何使用SharedPreferences和文件存储来存储数据。但是当需要存储大量数据时，这两种方式显然不合适，为此Android系统中提供了SQLite数据库，它可以存储应用程序中的大量数据，并对数据进行管理和维护。本章将针对SQLite数据库进行详细地讲解。', null);
INSERT INTO `courseinfo` VALUES ('6', '广播接收者的类型与使用', '第6章 广播接收者', '      在Android开发中，经常需要访问其他应用程序的数据。例如，使用支付宝转账时需要填写收款人的电话号码，此时就需要获取到系统联系人的信息。为了实现这种跨程序共享数据的功能，Android系统提供了一个组件内容提供者（ContentProvider）。本章将针对内容提供者进行详细地讲解。', null);
INSERT INTO `courseinfo` VALUES ('7', '服务创建、启动与生命周期', '第7章 服务', '      在Android系统中，广播（Broadcast）是一种运用在应用程序直接传递消息的机制，广播接收者（BroadcastReceiver）是用来过滤、接收并响应广播的一类组件。通过广播接收者可以监听系统中的广播消息，在不同组件之间进行通信。本章将为大家讲解广播接收者的相关知识。', null);
INSERT INTO `courseinfo` VALUES ('8', '内容提供者的使用', '第8章 内容提供者', '      服务与Activity类似，不同的是服务没有界面，是一个长期运行在后台的组件，即使启动服务的应用程序被切换掉，其他的Service也可以在后台正常运行，因此Service经常被用来处理一些耗时的程序，例如进行网络传输或者播放音乐等。本章将针对服务进行详细地讲解。', null);
INSERT INTO `courseinfo` VALUES ('9', '访问网络与数据提交方式', '第9章 网络编程', '      Android 由互联网巨头Google带头开发，因此Android对网络功能的支持是必不可少的，Android系统提供了一下几种方式实现网络通信，本章将会讲解如何在手机端使用HTTP协议和与服务器端进行网络交互。', null);
INSERT INTO `courseinfo` VALUES ('10', '动画、多媒体、传感器等', '第10章 高级编程', '      前面 九章都是针对Android基础知识进行讲解，掌握好这些知识可以开发天气预报、新闻客户端等程序。为了让初学者能够更全面地掌握Android知识，本章将针对图形图像处理、多媒体、传感器、Fragment等高级编程知识进行详细地讲解。', null);

-- ----------------------------
-- Table structure for `exercises`
-- ----------------------------
DROP TABLE IF EXISTS `exercises`;
CREATE TABLE `exercises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `a` varchar(255) DEFAULT NULL,
  `b` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `courseinfo` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exercises
-- ----------------------------
INSERT INTO `exercises` VALUES ('1', '1.Android 安装包文件简称APK，其扩展名是( )', '.exe', '.txt', '.apk', '.app', '3', '1');
INSERT INTO `exercises` VALUES ('2', '2.下列选项中不属于ADT Bundle 的是( )', 'Eclipse', 'SKD', 'SDK Manager.exe', 'JDK', '4', '1');
INSERT INTO `exercises` VALUES ('3', '3.应用程序层是一个核心应用程序的集合，主要包括( )', '活动管理器', '短信程序', '音频驱动', 'Dalvik 虚拟机', '2', '1');
INSERT INTO `exercises` VALUES ('4', '4.ADB 的常见指令中\" 列出所有设备\"的指令是( )', 'adb uninstall', 'adb install', 'adb device', 'adb emulator', '3', '1');
INSERT INTO `exercises` VALUES ('5', '5.创建程序时，填写的Application Name 表示( )', '应用名称', '项目名称', '项目的包名', '类的名字', '1', '1');
INSERT INTO `exercises` VALUES ('6', '1.以下属性中，哪个属性可以“在指定控件左边”是（）。', 'android:layout_alignLeft', 'android:layout_alignParentLeft', 'android:layout_Left', 'android:layout_toLeftOf', '4', '2');
INSERT INTO `exercises` VALUES ('7', '2.表格布局中android:layout_column属性的作用是指定（）。', '行数', '列数', '总行数', '总列数', '4', '2');
INSERT INTO `exercises` VALUES ('8', '3.实际开发中刮刮乐游戏的布局是按照（）布局写的。', '相对布局', '线性布局', '帧布局', '绝对布局', '3', '2');
INSERT INTO `exercises` VALUES ('9', '4.网格布局是Android（）新增的布局。', '3.0', '3.1', '3.2', '4.0', '4', '2');
INSERT INTO `exercises` VALUES ('10', '5.相对布局中，“是否跟父布局对齐”是属性（）。', 'android:layout_alignBottom', 'android:layout_alignParentBottom', 'android:layout_alignBaseline', 'android:layout_below', '3', '2');
INSERT INTO `exercises` VALUES ('11', '1.一个应用程序默认会包含（）个Activity。', '1个', '5个', '10个', '若干个', '1', '3');
INSERT INTO `exercises` VALUES ('12', '2.下列方法中，Activity从启动到关闭不会执行的是（）。', 'onCreate()', 'onStart()', 'onResume()', 'onRestart()', '4', '3');
INSERT INTO `exercises` VALUES ('13', '3.下列组件中，不能使用Intent启动的是（）。', 'Activity', '启动服务', '广播', '内容提供者', '4', '3');
INSERT INTO `exercises` VALUES ('14', '4.startActivityForResult()方法接收两个参数，第一个是Intent，第二个是（）。', 'resultCode', 'requestCode', '请求码', 'data', '3', '3');
INSERT INTO `exercises` VALUES ('15', '5.下列关于Activity的描述，错误的是（）。', 'Activity是Android四大组件之一', 'Activity有四种启动模式', 'Activity通常用于开启一个广播事件', 'Activity就像一个界面管理员，用户在界面上的操作是通过Activity来管理', '3', '3');
INSERT INTO `exercises` VALUES ('16', '1.下列文件操作权限中，指定文件内容可以追加的是（）。', 'MODE_PRIVATE', 'MODE_WORLD_READABLE', 'MODE_APPEND', 'MODE_WORLD_WRITEABLE', '3', '4');
INSERT INTO `exercises` VALUES ('17', '2.下列代码中，用于获取SD卡路径的是（）。', 'Environment.getSD();', 'Environment.getExternalStorageState();', 'Environment.getSD Directory();', 'Environment.getExternalStorageDirectory();', '4', '4');
INSERT INTO `exercises` VALUES ('18', '3.下列选项中，关于文件存储数据的说法错误的是（）。', '文件存储是以流的形式来操作数据的', '文件存储可以讲数据存储到SD卡中', '文件存储可以讲数据存储到内存中', 'Android中只能使用文件存储数据', '4', '4');
INSERT INTO `exercises` VALUES ('19', '4.下列选项中，关于XML序列化和解析描述合理的是（）。', 'DOM解析会将XML文件的所有内容以文档树方式存放在内存中', '在序列化对象时，需要使用XmlSerialize序列化器，即XmlSerializer类', 'XmlSerializer类的startDocument()方法用于写入序列号的开始节点', 'XmlSerializer类的startTag()方法用于设置文件的编码方式', '2', '4');
INSERT INTO `exercises` VALUES ('20', '5.如果要将程序中的私有数据分享给其他应用程序，可以使用的是（）。', '文件存储', 'SharedPreferences', 'ContentProvider', 'SQLite', '3', '4');
INSERT INTO `exercises` VALUES ('21', '1.使用SQLite数据库进行查询后，必须要做的操作是（）。', '关闭数据库', '直接退出', '关闭Cursor', 'AC都是', '4', '5');
INSERT INTO `exercises` VALUES ('22', '2.使用SQLiteOpenHelper类可以生成一个数据库并可以对数据库版本进行管理的方法（）。', 'getDatabase()', 'getWriteableDatabase()', 'getWriteable()', 'getAbleDatabase()', '2', '5');
INSERT INTO `exercises` VALUES ('23', '3.下列命令中，属于SQLite下的命令是（）。', 'shell', 'push', 'quit', 'keytool', '2', '5');
INSERT INTO `exercises` VALUES ('24', '4.下列关于ListView使用的描述中，不正确的是（）。', '要使用ListView，必须为该ListView使用Adapter方式传递数据', '要使用ListView，该布局文件对应的Activity必须继承ListActivity', 'ListView中每一项的视图布局既可以使用内置的布局，也可以使用自定义的布局方式', 'ListView中每一项被选中时，将会出发ListView对象的ItemClick事件', '3', '5');
INSERT INTO `exercises` VALUES ('25', '5.关于适配的说法正确的是（）。', '它主要用来存储数据', '它主要用来把数据绑定在组件上', '它主要用来存储XML数据', '它主要用来解析数据', '2', '5');
INSERT INTO `exercises` VALUES ('26', '1.下列选项中，属于Android中四大组件的是（）。', 'Activity', 'ContentReceiver', 'Service', 'ABC都是', '4', '6');
INSERT INTO `exercises` VALUES ('27', '2.下列关于ContentResolver的描述，错误的是（）。', '可以操作数据库数据', '操作其他应用数据必须知道包名', '只能操作ContentProvider暴漏的数据', '可以操作ContentProvider的任意数据', '3', '6');
INSERT INTO `exercises` VALUES ('28', '3.下列关于内容提供者的描述，不正确的是（）。', '提供的	Uri必须符合规范', '可以提供本应用所有数据供别人访问', '必须在清单文件中注册', 'authorities属性必须和包名一致', '2', '6');
INSERT INTO `exercises` VALUES ('29', '4.继承ContentProvider类不需要重写的方法是（）。', 'delete()', 'insert()', 'onStart()', 'onUpdate()', '3', '6');
INSERT INTO `exercises` VALUES ('30', '5.下列关于内容观察者的说法，正确的是（）。', '可以观察任何数据', '观察其他应用数据需要权限', '只能观察到指定Uri的数据', '观察其他应用数据必须在清单文件中注册', '3', '6');
INSERT INTO `exercises` VALUES ('31', '1.继承BroadcastReceiver会重写哪一个方法（）。', 'onReceiver()', 'onUpdate()', 'onCreate()', 'onStart()', '1', '7');
INSERT INTO `exercises` VALUES ('32', '2.关于广播的作用，说法正确的是（）。', '它主要用来接收系统发布的一些消息的', '它可以进行耗时的操作', '它可以启动一个Activity', '它可以帮助Actvity修改用户界面', '1', '7');
INSERT INTO `exercises` VALUES ('33', '3.下列方法中，用于发送一条有序广播的是（）。', 'startBroadcastReceiver()', 'sendOrderedBroadcast()', 'sendBroadcast()', 'sendReceiver()', '2', '7');
INSERT INTO `exercises` VALUES ('34', '4.在清单文件中，注册广播时使用的节点是（）。', 'activity', 'broadcast', 'receiver', 'broadcastreceiver', '3', '7');
INSERT INTO `exercises` VALUES ('35', '5.关于BroadcastReceiver说法不正确的是（）。', '是用来接收广播Intent的', '一个广播Intent只能被一个订阅了此广播的BroadcastReceiver所接收', '对有序广播，系统会根据接收者声明的优先级别按顺序逐个执行接收者', '接收者声明的优先级别在android:priority属性中声明，数值越大优先级别越高', '2', '7');
INSERT INTO `exercises` VALUES ('36', '1.每一次启动服务都会调用什么方法（）。', 'onCreate()', 'onStart()', 'onResume()', 'onStartCommand()', '4', '8');
INSERT INTO `exercises` VALUES ('37', '2.下列选项中，不属于绑定服务的特点的是（）。', '以bindService()方法开启', '调用者关闭后服务关闭', '必须实现ServiceConnection()', '使用stopService()方法关闭服务', '4', '8');
INSERT INTO `exercises` VALUES ('38', '3.Service与Activity的共同点是（）。', '都是四大组件之一', '都有onResume()方法', '都不可以被远程调用', '都可以自定义美观界面', '1', '8');
INSERT INTO `exercises` VALUES ('39', '4.下列方法中，不属于Service生命周期的是（）。', 'onResume()', 'onStart()', 'onStop()', 'onDestory', '1', '8');
INSERT INTO `exercises` VALUES ('40', '5.关于Service生命周期的onCreate()和onStart()方法，说法正确的是（）。', '如果Service已经启动，将先后调用onCreate()和onStart()方法', '如果Service已经启动，只会执行onCreate()方法', '当第一次启动的时候只会调用onCreate()方法', '如果Service已经启动，只会执行onStart()方法，不再执行onCreate()方法', '4', '8');
INSERT INTO `exercises` VALUES ('41', '1.下列选项中，不属于Handler机制中的关键对象的是（）。', 'Content', 'Handler', 'MessageQueue', 'Looper', '1', '9');
INSERT INTO `exercises` VALUES ('42', '2.下列通讯方式中，不是Android系统提供的是（）。', 'Socket通信', 'HTTP通信', 'URL通信', '以太网通信', '4', '9');
INSERT INTO `exercises` VALUES ('43', '3.关于HttpURLConnection访问网络的基本用法，描述错误的是（）。', 'HttpURLConnection对象需要设置请求网络的方式', 'HttpURLConnection对象需要设置超时时间', '需要通过new关键字来创建HttpURLConnection对象', '访问网络完毕需要关闭http链接', '3', '9');
INSERT INTO `exercises` VALUES ('44', '4.下列选项中，不属于AsyncHttpClient特点的是（）。', '发送异步HTTP请求', 'HTTP请求发生在UI线程之外', '内部采用了线程池来处理并发请求', '自动垃圾回收', '4', '9');
INSERT INTO `exercises` VALUES ('45', '5.下列选项中，关于GET和POST请求方式，描述错误的是（）。', '使用GET方式访问网络URL的长度是有限制的', 'HTTP协议规定GET方式请求URL的长度不超过2k', 'POST方式对URL的长度是没有限制的', 'GET请求方式向服务器提交的参数跟在请求URL后面', '2', '9');
INSERT INTO `exercises` VALUES ('46', '1.使用MediaPlayer播放保存在sdcard上的mp3文件时（）。', '需要使用MediaPlayer.create方法创建MediaPlayer', '不能直接new MediaPlayer即可', '直接使用setDataSource方法设置文件源', '直接调用start方法，无需设置文件源', '3', '10');
INSERT INTO `exercises` VALUES ('47', '2.下列不属于补间动画相关的类是（）。', 'TranslateAnimation', 'FrameAnimation', 'RotateAnimation', 'AlphaAnimation', '2', '10');
INSERT INTO `exercises` VALUES ('48', '3.有关于Fragment说法正确的是（）。', '使用Fragment必须在布局文件中加入fragment控件', 'Fragment有自己的界面和生命周期，可以完全替代Activity', 'Fragment的状态跟随它所关联的Activity的状态改变而改变', '当Fragment停止时，与它关联的Activity也会停止', '3', '10');
INSERT INTO `exercises` VALUES ('49', '4.MediaPlayer播放资源前，需要调用哪个方法完成准备工作（）。', 'setDataSource', 'prepare', 'begin', 'pause', '2', '10');
INSERT INTO `exercises` VALUES ('50', '5.下面属于Android动画分类的有（）。', 'Tweens', 'Frame', 'Draw', 'Animation', '2', '10');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `validatename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('4', 'xl', null, null, null, '202cb962ac59075b964b07152d234b70', null);
INSERT INTO `userinfo` VALUES ('5', '2', null, null, null, 'c81e728d9d4c2f636f067f89cc14862c', null);
INSERT INTO `userinfo` VALUES ('6', '3', null, null, null, 'eccbc87e4b5ce2fe28308fd9f2a7baf3', null);
INSERT INTO `userinfo` VALUES ('7', '4', null, null, null, 'a87ff679a2f3e71d9181a67b7542122c', null);
INSERT INTO `userinfo` VALUES ('8', '6', null, null, null, '1679091c5a880faf6fb5e6087eb1b2dc', null);
INSERT INTO `userinfo` VALUES ('9', '7', null, null, null, '8f14e45fceea167a5a36dedd4bea2543', null);
INSERT INTO `userinfo` VALUES ('10', 'a', null, null, null, 'e10adc3949ba59abbe56e057f20f883e', 'abc');
INSERT INTO `userinfo` VALUES ('11', 'b', null, null, null, '92eb5ffee6ae2fec3ad71c777531578f', null);
INSERT INTO `userinfo` VALUES ('12', 'c', null, null, null, 'c4ca4238a0b923820dcc509a6f75849b', null);

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vtitile` varchar(30) DEFAULT NULL,
  `vpath` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `cid` (`cid`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `courseinfo` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
