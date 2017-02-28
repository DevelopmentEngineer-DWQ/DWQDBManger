//
//  UserInfo.h
//  DWQDBManger
//
//  Created by 杜文全 on 15/9/16.
//  Copyright © 2015年 com.iosDeveloper.duwenquan. All rights reserved.
//

#import "DWQDBModel.h"

@interface UserInfo : DWQDBModel
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *Occupation;
@property (nonatomic,copy) NSString *phone;
@end
