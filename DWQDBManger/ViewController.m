//
//  ViewController.m
//  DWQDBManger
//
//  Created by 杜文全 on 15/9/16.
//  Copyright © 2015年 com.iosDeveloper.duwenquan. All rights reserved.
//

#import "ViewController.h"
#import "UserInfo.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *Occupation;
@property (weak, nonatomic) IBOutlet UITextField *phone;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)insert:(id)sender {
    UserInfo *userInfo=[[UserInfo alloc]init];
    [UserInfo clearTable];
    userInfo.name=self.name.text;
    userInfo.Occupation=self.Occupation.text;
    userInfo.phone=self.phone.text;
    //插入到数据库中
    [userInfo save];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
