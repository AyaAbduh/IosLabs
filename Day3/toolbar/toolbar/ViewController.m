//
//  ViewController.m
//  toolbar
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)imageClicked:(id)sender {
    UIImage *image=[UIImage imageNamed:@"app.png"];
    [_img setImage:image];
}

- (IBAction)Alert:(id)sender {
    
    printf("AlertClicked\n");
    UIAlertView * alert=[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Hello Jets" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"cancel", nil];
    alert.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:{
            printf("OK\n");
            NSString *userName=[alertView textFieldAtIndex:0 ].text;
            
            NSString *password=[alertView textFieldAtIndex:0 ].text;
            printf("userName %s",[userName UTF8String]);
            break;
    }
        case 1:
            printf("cancel");
            break;
        default:
            break;
    }
}

@end
