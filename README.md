# DWQDBManger
基于FMDB做的封装，用示例对象操作数据库，免去复杂的SQL语句
##使用方法：

1.首先将DWQDBManger文件夹拖入工程中【注意：文件夹已经包含了FMDB】。
2.加入依赖库libsqlite3.tbd

![454BDD40-2B16-42F0-9169-CA8D09F6AE62.png](http://upload-images.jianshu.io/upload_images/2231137-d8c4d138bc6a08a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
3.假如我们需要本地化的数据为用户信息，那么首先创建UserInfo，继承自DWQDBModel，如图所示，然后声明属性，UserInfo就相当于【表名】，声明的属性就相当于【字段】。对应需要存储的一些信息。
![18AF03AB-36BB-4A67-A7E1-D6DFBEA2EBDB.png](http://upload-images.jianshu.io/upload_images/2231137-53271867af0426d2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
4.然后在PCH文件中，引入头文件“UserInfo.h”
5.以登录成功后返回用户信息需要本地化为例子，实例化一个UserInfo对象
```objective-c
UserInfo *userInfo=[[UseInfo alloc] init];
```
然后给对象声明的属性进行赋值，最后调用save方法保存数据；示例代码为：
```objective-c
    NSDictionary * dict=responseObject[@"data"];
    userInfo.create_time=dict[@"create_time"];
    userInfo.id_card=dict[@"id_card"];
    userInfo.is_partner=dict[@"is_partner"];
    userInfo.member_avatar=dict[@"member_avatar"];
    userInfo.member_id=dict[@"member_id"];
    userInfo.member_name=dict[@"member_name"];
    userInfo.member_status=dict[@"member_status"];
    userInfo.partner_status=dict[@"partner_status"];
    userInfo.password_is_null=dict[@"password_is_null"];
    userInfo.spare_money=dict[@"spare_money"];
    userInfo.sex=dict[@"sex"];
    //插入到数据库中需要调用的方法
    [self.accountInfo save];

```
6.查询-或者叫从数据库中取数据。
>a.每次登录成功就会向表中插入一行数据，我们想获取最新的数据，只能取最后一行数据，方法可以通过调用findAll返回的数组判断个数，然后再通过主键查询 + (instancetype)findByPK:(int)inPk; 
b.其次还可以用每次插入表中数据之前清空一次表就可以了。然后调用 【userInfo findByPK：1】就可以获取到用户信息了。示例代码如下

```objective-c
1.首先在每一次插入数据之前调用类方法清空数据的方法
[UserInfo clearTable]
2.然后再插入数据，上方第5步
3.最后在需要获取数据的地方使用即可
  UserInfo *user=[UserInfo findByPK:1]；
  NSString *mid= user.member_id

```
###更多使用方法请详细查看DWQDBModel.h文件，不再一一列举。
