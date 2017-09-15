//
//  ViewController.m
//  CoreDataDemo
//
//  Created by Pradip Walghude on 2017-01-08.
//  Copyright © 2017   extentia. All rights reserved.
//

#import "ViewController.h"
#import "AppManager.h"
#import "secondViewController.h"

@interface ViewController ()
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *email;

@property (weak, nonatomic) IBOutlet UITextField *mobile;

- (IBAction)actionOnSubmitBtn:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _email.text = @"  pradipwalghude@gmail.com";
    _name.text = @"  Pradip Walghude";
    _mobile.text = @"  9762953471";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionOnSubmitBtn:(UIButton *)sender {
    
    int i=4;
    NSMutableDictionary *paramDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [paramDict setObject:_name.text forKey:@"name"];
    [paramDict setObject:_email.text forKey:@"email"];
    [paramDict setObject:_mobile.text forKey:@"mobile"];
    [paramDict setObject:[NSString stringWithFormat:@"%d",++i] forKey:@"id"];
    
    [[AppManager sharedDBManager] saveDataInDB:paramDict ];
    
    secondViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SVC"];
    [self.navigationController pushViewController:svc animated:YES];
}
@end
