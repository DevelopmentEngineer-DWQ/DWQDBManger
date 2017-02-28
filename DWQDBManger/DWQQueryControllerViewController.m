//
//  DWQQueryControllerViewController.m
//  DWQDBManger
//
//  Created by 杜文全 on 15/9/16.
//  Copyright © 2015年 com.iosDeveloper.duwenquan. All rights reserved.
//

#import "DWQQueryControllerViewController.h"
#import "UserInfo.h"
@interface DWQQueryControllerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Exhibition;

@end

@implementation DWQQueryControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"查询数据库";
    self.Exhibition.numberOfLines=0;
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)query:(id)sender {
    
    UserInfo *userInfo=[UserInfo findByPK:1];
    
    
    self.Exhibition.text=[NSString stringWithFormat:@"您的姓名是：%@ 您的职业是：%@ 您的手机号是：%@",userInfo.name,userInfo.Occupation,userInfo.phone];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
