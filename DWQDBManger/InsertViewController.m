//
//  InsertViewController.m
//  DWQDBManger
//
//  Created by 杜文全 on 15/9/16.
//  Copyright © 2015年 com.iosDeveloper.duwenquan. All rights reserved.
//

#import "InsertViewController.h"
#import "UserInfo.h"
#import "DWQQueryControllerViewController.h"
@interface InsertViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *Occupation;
@property (weak, nonatomic) IBOutlet UITextField *phone;

@end

@implementation InsertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"插入数据库";
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)insert:(id)sender {
    UserInfo *userInfo=[[UserInfo alloc]init];
    [UserInfo clearTable];
    userInfo.name=self.name.text;
    userInfo.Occupation=self.Occupation.text;
    userInfo.phone=self.phone.text;
    //插入到数据库中
    [userInfo save];
    
    DWQQueryControllerViewController *query=[[DWQQueryControllerViewController alloc]init];
    
    [self.navigationController pushViewController:query animated:YES];
    
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
