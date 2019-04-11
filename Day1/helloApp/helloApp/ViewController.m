//
//  ViewController.m
//  helloApp
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//call back method
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
_MYLabel.text=@"Hello";
_secondLabel.text=[_textField text];
}


- (IBAction)myButton:(id)sender {
    printf("Aya");
    _MYLabel.text=@"Hello World";
}

- (IBAction)EnterButton:(id)sender {
    NSLog(@"%@",[_textField text]);
_secondLabel.text=
   [_textField text];
}


@end
