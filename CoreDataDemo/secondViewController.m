//
//  secondViewController.m
//  CoreDataDemo
//
//  Created by Pradip Walghude on 2017-01-08.
//  Copyright © 2017   extentia. All rights reserved.
//

#import "secondViewController.h"
#import "AppManager.h"
#import "Employee+CoreDataClass.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *empData = [[AppManager sharedDBManager] getEmployeeName:[NSNumber numberWithInteger:1]];
    NSLog(@"%@",empData);
    
    
    NSArray *empEmail = [[AppManager sharedDBManager] getEmployeeEmailID];
    NSLog(@"All Employees email%@",empEmail);
    
    Employee *employee  ;
    
    for (employee in empEmail) {
        
        NSLog(@"%@",employee.eemail);
    }
    
    
    // Do any additional setup after loading the view.
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
