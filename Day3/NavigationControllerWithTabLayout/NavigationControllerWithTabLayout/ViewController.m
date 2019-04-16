//
//  ViewController.m
//  NavigationControllerWithTabLayout
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondviewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)secondControllerButton:(id)sender {
    SecondviewController *secondView=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
    
  //  NSString*str=@"Hello Jets";
   //second.str=str;
    [secondView setText:[_Name text] ];
    [self.navigationController pushViewController:secondView animated:NO];
    
}
@end
