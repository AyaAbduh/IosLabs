//
//  ViewController.m
//  navigationController
//
//  Created by JETS Mobile Lab-10 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)goToSecondView:(id)sender {
    //secondViewController *second=[secondViewController new];
    
    secondViewController *secondView =[self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
//secondViewController* second= [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    
    //NSString*str=@"Hello Jets";
    //second.str=str;
    //[second setStr:str];
    
//    [self.navigationController pushViewController:secondView animated:NO];
    [self.navigationController pushViewController:secondView animated:YES];
    
}
@end
