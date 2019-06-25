prompt PL/SQL Developer import file
prompt Created on 2019年6月25日 by 杰威力
set feedback off
set define off
prompt Disabling triggers for ACCOUNT...
alter table ACCOUNT disable all triggers;
prompt Disabling triggers for MEMBER...
alter table MEMBER disable all triggers;
prompt Disabling triggers for PRODUCT...
alter table PRODUCT disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for TRAVELLER...
alter table TRAVELLER disable all triggers;
prompt Disabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable all triggers;
prompt Disabling triggers for PERMISSION...
alter table PERMISSION disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable all triggers;
prompt Disabling triggers for SYSLOG...
alter table SYSLOG disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for USERS_ROLE...
alter table USERS_ROLE disable all triggers;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint SYS_C005407;
alter table ORDERS disable constraint SYS_C005408;
prompt Disabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable constraint SYS_C005411;
alter table ORDER_TRAVELLER disable constraint SYS_C005412;
prompt Disabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable constraint SYS_C005463;
alter table ROLE_PERMISSION disable constraint SYS_C005464;
prompt Disabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE disable constraint SYS_C005470;
alter table USERS_ROLE disable constraint SYS_C005471;
prompt Deleting USERS_ROLE...
delete from USERS_ROLE;
commit;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting SYSLOG...
delete from SYSLOG;
commit;
prompt Deleting ROLE_PERMISSION...
delete from ROLE_PERMISSION;
commit;
prompt Deleting ROLE...
delete from ROLE;
commit;
prompt Deleting PERMISSION...
delete from PERMISSION;
commit;
prompt Deleting ORDER_TRAVELLER...
delete from ORDER_TRAVELLER;
commit;
prompt Deleting TRAVELLER...
delete from TRAVELLER;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting PRODUCT...
delete from PRODUCT;
commit;
prompt Deleting MEMBER...
delete from MEMBER;
commit;
prompt Deleting ACCOUNT...
delete from ACCOUNT;
commit;
prompt Loading ACCOUNT...
insert into ACCOUNT (aname, price)
values ('尹志平', -3000);
insert into ACCOUNT (aname, price)
values ('小龙女', 13000);
commit;
prompt 2 records loaded
prompt Loading MEMBER...
insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');
commit;
prompt 1 records loaded
prompt Loading PRODUCT...
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('C89099D651514CAAB47A4846B4F5A9A7', 'itcast_005', '西安两日游', '西安', to_timestamp('19-06-2019 11:34:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 888, '哈哈哈', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('F876B0EA8D36415FB83167C6A2DF463C', 'itcast_004', '西安一日游', '西安', to_timestamp('11-06-2019 13:45:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 998, '妙不可言', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('C7C6FDBDEB494FA988F8A81D19974228', 'itcast_006', '西安三日游', '西安', to_timestamp('12-06-2019 17:50:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 888, '哈哈哈', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('D62AB424B81F4D2AA7289C70EA5138E2', 'itcast_009', 'sfafafsaf', 'safsfasfaf', to_timestamp('21-06-2019 17:34:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 444, 'asdfadfa', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('0F38CB2C20FF4B89AA02EC757951D292', 'itcast_007', '西安一日游', '西安', to_timestamp('11-06-2019 13:45:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 998, '妙不可言', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', to_timestamp('25-04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, '魔都我来了', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('69EC3FB55F544966B96E3A6C8F12449F', 'itcast_008', 'hahaha', 'hahaah', to_timestamp('19-06-2019 19:26:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 111, 'hahaha ', 1);
commit;
prompt 9 records loaded
prompt Loading ORDERS...
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
commit;
prompt 9 records loaded
prompt Loading TRAVELLER...
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);
commit;
prompt 2 records loaded
prompt Loading ORDER_TRAVELLER...
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');
commit;
prompt 9 records loaded
prompt Loading PERMISSION...
insert into PERMISSION (id, permissionname, url)
values ('96A5934ED2A14A8FA93944C5063EAB7E', 'user_findAll', '/user/findAll.do');
insert into PERMISSION (id, permissionname, url)
values ('CCE7B9FEE96C4A86AEDE458B6C65294C', 'order_findAll', '/order/findAll.do');
insert into PERMISSION (id, permissionname, url)
values ('B2BEE49ADD95434CBBABDEE855F50E37', 'product_findAll', '/product/findAll.do');
insert into PERMISSION (id, permissionname, url)
values ('55830899DBA9497F9A52940BD7CF37A0', 'ssf诉讼费', '是是 ');
commit;
prompt 4 records loaded
prompt Loading ROLE...
insert into ROLE (id, rolename, roledesc)
values ('97922A1496A54DC2B59FA91BC828DDF7', 'ROOT', 'ROOT');
insert into ROLE (id, rolename, roledesc)
values ('662A85DCD82E4BE683F441BF9BB4BAD7', '解决客户', ' 理解力科技');
insert into ROLE (id, rolename, roledesc)
values ('6845A0A1D13943A4B319363D54C46B0A', 'USER', 'USER');
insert into ROLE (id, rolename, roledesc)
values ('1847DCFAA0FF4D269A5B784EC1A7715C', 'ADMIN', 'ADMIN');
insert into ROLE (id, rolename, roledesc)
values ('8B5349874AED489DA076A277E453D753', 'sss', '少时诵诗书是');
commit;
prompt 5 records loaded
prompt Loading ROLE_PERMISSION...
insert into ROLE_PERMISSION (permissionid, roleid)
values ('96A5934ED2A14A8FA93944C5063EAB7E', '1847DCFAA0FF4D269A5B784EC1A7715C');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('96A5934ED2A14A8FA93944C5063EAB7E', '6845A0A1D13943A4B319363D54C46B0A');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('CCE7B9FEE96C4A86AEDE458B6C65294C', '1847DCFAA0FF4D269A5B784EC1A7715C');
commit;
prompt 3 records loaded
prompt Loading SYSLOG...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0CC340D54ADF401E8362C7AC4ABED7BA', to_timestamp('25-06-2019 02:52:49.356000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('59CFD675ED4641EA98CCF81C7A9840C8', to_timestamp('25-06-2019 10:52:17.171000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 70, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EC6AB8C569E44839BA5037888CB37887', to_timestamp('25-06-2019 10:52:22.948000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 25, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BCE9792070614A909A5D8212A92610A6', to_timestamp('25-06-2019 13:48:38.940000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 12, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1317931082D24B0E8FF18492AE3B6314', to_timestamp('25-06-2019 13:49:09.552000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9A28022DF4804C698855C633BD488832', to_timestamp('25-06-2019 13:49:12.339000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 11, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('91A10E804EAC4A84A510355A7A3FF4B4', to_timestamp('25-06-2019 13:50:36.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 3, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C92CC2388AEE4A329D6EBA71296154CC', to_timestamp('25-06-2019 13:50:39.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('91ED888827B74FA8AB3B7D58022B841F', to_timestamp('25-06-2019 13:50:41.245000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 8, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('224B4EB3AAEA4A399742EA19D5963CEA', to_timestamp('25-06-2019 13:50:45.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/addRoleToUser.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]addRoleToUser');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9EBFA95145E740D4846F7CF8B69710F1', to_timestamp('25-06-2019 13:50:45.791000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('72A9810C76D643379226169E7DA16314', to_timestamp('25-06-2019 13:50:47.433000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 10, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5774A15BA3444F6CB6652D53D99579CD', to_timestamp('25-06-2019 13:53:06.041000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('38D55F7AC907464DAA4E267684FDB5AD', to_timestamp('25-06-2019 13:53:14.269000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 14, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E9D0A1F8895F438B877DCB4EB835368A', to_timestamp('25-06-2019 13:53:16.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 9, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E86A159A6C5A4B7B9FE1ED4AEF014478', to_timestamp('25-06-2019 13:53:19.266000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 9, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F1F919B9C4F646B1A09B29CBD7BEDA58', to_timestamp('25-06-2019 13:53:25.521000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 10, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1E8383AC35E543D2B4E4E5C255929D3C', to_timestamp('25-06-2019 13:53:32.305000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 6, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E4AF451600F840199700EE52D00D289A', to_timestamp('25-06-2019 13:54:24.914000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 8, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D66950AC5D464E83A478B50151BC7619', to_timestamp('25-06-2019 13:58:15.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 6, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DAA6EA5B15304C4C8390884F91E16F50', to_timestamp('25-06-2019 13:58:19.035000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findById.do', 10, '类名com.itheima.ssm.controller.PermissionController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('726D39A017594F8AAC4D8EC13B9696D0', to_timestamp('25-06-2019 13:58:23.047000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/role/findAll.do', 6, '类名com.itheima.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CB71AC2CE1314295BEB13ED623554185', to_timestamp('25-06-2019 13:58:27.637000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0A061C85A6AA40BDBAEA1522548F7E7E', to_timestamp('25-06-2019 13:46:26.129000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 46, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E26941A6BE8F4A08AD717C57F6913C57', to_timestamp('25-06-2019 13:46:34.705000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 9, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DA417A122BFC46D298F519241563104C', to_timestamp('25-06-2019 13:46:35.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 9, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D0C9CA01C38243FAA374D29B743FBF94', to_timestamp('25-06-2019 13:46:36.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 13, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('21B2E6D62994401694D3133CBA53E8CA', to_timestamp('25-06-2019 13:47:09.049000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/role/findAll.do', 40, '类名com.itheima.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('64D68A2AAA7F48ECA8D7ED31CB8714C3', to_timestamp('25-06-2019 13:47:12.389000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 20, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F8F50D1CA9F541A38CE981F89BAE559E', to_timestamp('25-06-2019 13:47:17.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 39, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AD755D6E51224094A9A4D9D6DA0866F6', to_timestamp('25-06-2019 13:47:18.733000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findById.do', 7, '类名com.itheima.ssm.controller.PermissionController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('97470CD7D8C041A18B2720F49AE678A2', to_timestamp('25-06-2019 13:47:21.752000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 6, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('220C9CAB261546FB9E0952C8A994E404', to_timestamp('25-06-2019 13:47:26.481000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 36, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('429E0728C6434379A77605B1F37624FA', to_timestamp('25-06-2019 13:47:29.230000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 11, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EB0AE78B0BE341CA8DDEB6DB16ED9E90', to_timestamp('25-06-2019 13:48:32.386000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1AEB2180582E4781B96EFE6D467924B9', to_timestamp('25-06-2019 13:58:29.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('546379C294CB4A4BA5135618485BB5AD', to_timestamp('25-06-2019 13:58:31.180000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 9, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('92C910BAD7C6449EB9C9BBE69A368A40', to_timestamp('25-06-2019 13:58:34.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 9, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('379BEB660F5545148A00A727868CE620', to_timestamp('25-06-2019 13:58:37.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findById.do', 5, '类名com.itheima.ssm.controller.PermissionController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E3760169169B494B88CEA4651A73BC5E', to_timestamp('25-06-2019 13:58:41.232000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 23, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('185BF5FC07844072A4BA31E2042ECA9B', to_timestamp('25-06-2019 13:58:43.585000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 6, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7E371A6A4EA745CE81CA97F0337B0B1D', to_timestamp('25-06-2019 01:59:22.536000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 107, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8A9382873C7E4377B0BBFAFB8F4BF706', to_timestamp('25-06-2019 02:00:04.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 7, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('761A98660F59474DB884E302FA1B8FF9', to_timestamp('25-06-2019 02:00:25.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('64BAD02108464200B429BCB6BEB52BB8', to_timestamp('25-06-2019 02:04:01.943000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('15DB5C36A35E45A29E19C99CF2AD8F3E', to_timestamp('25-06-2019 02:04:10.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AAC47B1FF0D74B90AD9734C518CAF5B0', to_timestamp('25-06-2019 02:04:12.827000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 10, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6830BBE3E4524CA78FD634B3A3AFD7E4', to_timestamp('25-06-2019 02:04:16.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 5, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C55734BCBD204A668D32F6BC67D95D43', to_timestamp('25-06-2019 02:12:34.837000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F9CEE6A5BF39498BA93560FD21C46C6D', to_timestamp('25-06-2019 02:12:36.119000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B45A8909C22447B58ECDA52A78DF50ED', to_timestamp('25-06-2019 02:12:37.188000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AD3E0D1DC2304E9DBFFDA10ABD085D2B', to_timestamp('25-06-2019 02:12:43.638000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6BEB5706533240AD99A9A5F5F4066ECC', to_timestamp('25-06-2019 02:12:46.922000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('352520D66C1F432A9EB8527A929651DA', to_timestamp('25-06-2019 02:12:49.732000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DB253A54882B4E238760026AF9183F3A', to_timestamp('25-06-2019 02:13:31.676000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3C99BF383A4E4C47A17E362BC4475E35', to_timestamp('25-06-2019 02:13:35.073000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B48B074954A349D8809EAB17BBCBA169', to_timestamp('25-06-2019 02:13:36.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EDDB718302F3444AB10459A00E422EA0', to_timestamp('25-06-2019 02:13:41.187000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1F4FB40CB93545008CEEAC22E3FF2204', to_timestamp('25-06-2019 02:13:44.636000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 10, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C558B55634C04D1AAC274B9854588398', to_timestamp('25-06-2019 02:29:01.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 63, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F76D596CDA11489C8DA7238870BF711F', to_timestamp('25-06-2019 02:29:05.304000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BE260E5D391344B39529F2BEF5C422E9', to_timestamp('25-06-2019 02:29:11.833000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6AC406573B564041BD3BF68E624016CC', to_timestamp('25-06-2019 02:30:14.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F671BBCF68534DE5A26374F37DCBD4C5', to_timestamp('25-06-2019 02:43:02.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 105, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5212932A953A462DB87E0424401BF177', to_timestamp('25-06-2019 02:43:04.818000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 10, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('513DC638D6FB4092BF90DC317598BA23', to_timestamp('25-06-2019 02:43:06.017000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('85C4369155DD4EFDB09A995602D0D33B', to_timestamp('25-06-2019 13:46:30.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findById.do', 59, '类名com.itheima.ssm.controller.OrdersController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('05766E8A5B9D407ABAEEB18D4CFC5EB2', to_timestamp('25-06-2019 13:46:33.133000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 14, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7535A0F2B1A141CEA96084C97C20EA2F', to_timestamp('25-06-2019 13:47:38.922000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F6D2A490B13946ECB7C8CB36230FDE93', to_timestamp('25-06-2019 13:47:51.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E6B446FC532544868C450CF73006C3F4', to_timestamp('25-06-2019 13:48:00.254000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1B624C2F2383489A84D0EB05DBB0839A', to_timestamp('25-06-2019 13:48:01.882000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 11, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('CC0D32C138664E9F95B0F1CE1B16E833', to_timestamp('25-06-2019 13:48:03.311000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findById.do', 10, '类名com.itheima.ssm.controller.OrdersController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('160C5F67980C4D15B597415BFE4C4F79', to_timestamp('25-06-2019 13:48:08.024000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6C0C50129FEE4ABD8812577C34D8C5E4', to_timestamp('25-06-2019 13:48:09.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 12, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E6BDD9BF8EF240B2A5E88C5CEECA1194', to_timestamp('25-06-2019 13:48:18.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 5, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('89525103F7944F53866B2591898DCDE3', to_timestamp('25-06-2019 13:48:19.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findById.do', 8, '类名com.itheima.ssm.controller.OrdersController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AA28FDCC55364FA5BE1D878063283860', to_timestamp('25-06-2019 13:48:20.940000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 6, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('897FCF7C88BE408EA718B8025C9730A7', to_timestamp('25-06-2019 13:48:28.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 17, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9ECB5A1CE5A54768B738567EBC5E0DA6', to_timestamp('25-06-2019 13:48:32.302000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/addRoleToUser.do', 45, '类名com.itheima.ssm.controller.UserController[方法名]addRoleToUser');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('84C0EF61A85743DDBCDDA52B22E5B419', to_timestamp('25-06-2019 13:48:34.042000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findUserByIdAndAllRole.do', 16, '类名com.itheima.ssm.controller.UserController[方法名]findUserByIdAndAllRole');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7469D3B39E6941F9A31BED6B2D68A6B9', to_timestamp('25-06-2019 13:48:36.192000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 8, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E46BCEF295284BE590EDB8C061E6060F', to_timestamp('25-06-2019 01:59:26.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 49, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8772AC756B0043D1963B2DC348CE1075', to_timestamp('25-06-2019 01:59:37.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 16, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('999E94E2399E47E4B13E73E7E8D42416', to_timestamp('25-06-2019 01:59:38.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findById.do', 35, '类名com.itheima.ssm.controller.OrdersController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6C8CD537940D49318615E494D16A62E3', to_timestamp('25-06-2019 01:59:50.880000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 10, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F77399FFBFC849CA86BA91915A4DA61B', to_timestamp('25-06-2019 01:59:54.480000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findAll.do', 46, '类名com.itheima.ssm.controller.UserController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AF45584855364A8F80BC6CCAF947FD5E', to_timestamp('25-06-2019 01:59:57.736000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 10, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('903BBAF8C3214ED8A4348700AB58B1C0', to_timestamp('25-06-2019 02:00:07.369000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/user/findById.do', 8, '类名com.itheima.ssm.controller.UserController[方法名]findById');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('53A5CB32923D42E9A34931F82DCAC7FD', to_timestamp('25-06-2019 02:00:12.446000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/role/findAll.do', 49, '类名com.itheima.ssm.controller.RoleController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A64589BC063542398E7F9D6526273844', to_timestamp('25-06-2019 02:00:15.374000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/permission/findAll.do', 21, '类名com.itheima.ssm.controller.PermissionController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('90EF5FB9FC4E4F69BC61EFE1001860B4', to_timestamp('25-06-2019 02:00:18.112000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 61, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7013EDF656A34633AD07F35EDBE76977', to_timestamp('25-06-2019 02:00:21.933000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C452A13B42B54E449C368A3CF98C8F9B', to_timestamp('25-06-2019 02:00:26.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9270FEAC589341C181ABD74E1B9D5E45', to_timestamp('25-06-2019 02:00:29.136000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D236E433A8DD43C7BA5053237E26A5D0', to_timestamp('25-06-2019 02:00:30.427000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FD73887F1B9B46D4B7A6E9092AE75756', to_timestamp('25-06-2019 02:00:32.659000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('73C1D719471047739E837847B751BACF', to_timestamp('25-06-2019 02:00:34.079000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8432E57D580644D1B3705FABDA009453', to_timestamp('25-06-2019 02:00:35.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('60A2F387AD214D68B8C2261C27519D9A', to_timestamp('25-06-2019 02:00:36.476000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
commit;
prompt 100 records committed...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E8F134B37447497888C050BD2698A6A5', to_timestamp('25-06-2019 02:00:38.881000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 11, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('30A94FF1198A47229DE522B8080D5E30', to_timestamp('25-06-2019 02:02:51.477000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A89E96066906464786EE5C17994FC85F', to_timestamp('25-06-2019 02:03:03.677000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4A8DAB48084E401DB0D0846D8491D510', to_timestamp('25-06-2019 02:03:35.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/orders/findAll.do', 13, '类名com.itheima.ssm.controller.OrdersController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C32F32EE6AD4438AA441F143A950196B', to_timestamp('25-06-2019 02:03:39.022000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 13, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F0B92C48B6E54014B74BB19FAF2CD254', to_timestamp('25-06-2019 02:03:47.696000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 8, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('569CA177A7684FC5A3DB0FE2A5B1D8B2', to_timestamp('25-06-2019 02:03:53.278000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 4, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('15B8BB8D0DD848F682DB600FCE1F484D', to_timestamp('25-06-2019 02:03:55.935000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/product/findAll.do', 7, '类名com.itheima.ssm.controller.ProductController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('634DA11D30684742A344FBBC66EDB5C6', to_timestamp('25-06-2019 02:04:24.680000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4CFF5DEE5DA94569880135FAF8B1C532', to_timestamp('25-06-2019 02:11:09.681000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 66, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('83A679D329104110AB6FAD461C40B209', to_timestamp('25-06-2019 02:11:13.438000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1AFC18C0D7CF4BA79827A5F69491D6FC', to_timestamp('25-06-2019 02:12:18.259000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DCF2B2A6FB954938AD0721E8B81260A5', to_timestamp('25-06-2019 02:12:20.540000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E05D939C2166489B9A8E796BBD907515', to_timestamp('25-06-2019 02:12:23.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 9, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3E30ED6100B1452E8397E6501BB318DF', to_timestamp('25-06-2019 02:12:25.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EAC0FAB695654ADB9402682A934BAB84', to_timestamp('25-06-2019 02:12:28.604000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AC86B1618C93406484AFB938AC0FCBC0', to_timestamp('25-06-2019 02:12:31.132000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('79F669A3C9B94E9FAD83F3679D6FF195', to_timestamp('25-06-2019 02:12:32.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1EB5194C50A443FAB51B9B778DBB53EC', to_timestamp('25-06-2019 02:12:33.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'user', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 6, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8CDF6323FC1B475DB235268635E094B8', to_timestamp('25-06-2019 02:29:05.982000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 8, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('12EA3D523D344C02BA72FF22212D3869', to_timestamp('25-06-2019 02:46:35.746000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 122, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('34E3288DB9664C02A1B5A5C9913A3F59', to_timestamp('25-06-2019 02:46:38.488000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3D11C4E5CC344DCF925D264A53F4C7B6', to_timestamp('25-06-2019 02:46:41.221000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 7, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('28E88F59FFDB438989D0B66BD6849E03', to_timestamp('25-06-2019 02:52:47.058000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'admin', '0:0:0:0:0:0:0:1', 'http://localhost/sysLog/findAll.do', 73, '类名com.itheima.ssm.controller.SysLogController[方法名]findAll');
commit;
prompt 124 records loaded
prompt Loading USERS...
insert into USERS (id, email, username, password, phonenum, status)
values ('BC2BE26619EA4562AC8220379EC37A24', '123@132.com', '草滩吴彦祖', '$2a$10$U27ZyHK8vYZU3.CU1EG6tOMYXz2eYviYhMg3lOZMw8XU9qxATfEWW', '10086', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('221987162B6E417A98F170517FAC3F45', 'itcast@qq.com', 'admin', '$2a$10$bedNHKLjMTwU1uXEHznVT.rLOVb87lccyIk.DzsUSsA9pOspIYZl6', '13333333333', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('18F9CFA9C2BA462AB6523C1FC4F555FA', 'itcast@163.com', 'user', '$2a$10$7IpA/Pgk94h4PHIWICaRqO4lRGvb4YuzTsCXoeniAeRQc2K4rqstq', '13333333333', 1);
commit;
prompt 3 records loaded
prompt Loading USERS_ROLE...
insert into USERS_ROLE (userid, roleid)
values ('18F9CFA9C2BA462AB6523C1FC4F555FA', '6845A0A1D13943A4B319363D54C46B0A');
insert into USERS_ROLE (userid, roleid)
values ('221987162B6E417A98F170517FAC3F45', '1847DCFAA0FF4D269A5B784EC1A7715C');
insert into USERS_ROLE (userid, roleid)
values ('221987162B6E417A98F170517FAC3F45', '6845A0A1D13943A4B319363D54C46B0A');
insert into USERS_ROLE (userid, roleid)
values ('BC2BE26619EA4562AC8220379EC37A24', '1847DCFAA0FF4D269A5B784EC1A7715C');
insert into USERS_ROLE (userid, roleid)
values ('BC2BE26619EA4562AC8220379EC37A24', '6845A0A1D13943A4B319363D54C46B0A');
commit;
prompt 5 records loaded
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint SYS_C005407;
alter table ORDERS enable constraint SYS_C005408;
prompt Enabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable constraint SYS_C005411;
alter table ORDER_TRAVELLER enable constraint SYS_C005412;
prompt Enabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable constraint SYS_C005463;
alter table ROLE_PERMISSION enable constraint SYS_C005464;
prompt Enabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE enable constraint SYS_C005470;
alter table USERS_ROLE enable constraint SYS_C005471;
prompt Enabling triggers for ACCOUNT...
alter table ACCOUNT enable all triggers;
prompt Enabling triggers for MEMBER...
alter table MEMBER enable all triggers;
prompt Enabling triggers for PRODUCT...
alter table PRODUCT enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for TRAVELLER...
alter table TRAVELLER enable all triggers;
prompt Enabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable all triggers;
prompt Enabling triggers for PERMISSION...
alter table PERMISSION enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable all triggers;
prompt Enabling triggers for SYSLOG...
alter table SYSLOG enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for USERS_ROLE...
alter table USERS_ROLE enable all triggers;
set feedback on
set define on
prompt Done.
