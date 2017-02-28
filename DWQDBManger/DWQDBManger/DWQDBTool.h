//
//  DWQDBTool.h
//
//  Created by 杜文全 on 15/9/16.
//  Copyright © 2015年 com.iosDeveloper.duwenquan. All rights reserved.

#import <Foundation/Foundation.h>
#import "FMDB.h"
@interface DWQDBTool : NSObject
@property (nonatomic, retain, readonly) FMDatabaseQueue *dbQueue;

+ (DWQDBTool *)shareInstance;

+ (NSString *)dbPath;

- (BOOL)dwq_changeDBWithDirectoryName:(NSString *)directoryName;
@end
