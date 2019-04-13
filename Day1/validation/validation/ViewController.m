//
//  ViewController.m
//  validation
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
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


- (IBAction)letter:(id)sender {
    
    NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([[_TextField text] rangeOfCharacterFromSet:notDigits].location == NSNotFound)
    {
        //String consists only of the digits 0 through 9
        printf("Not String\n");
    }else{
        //String doesn't consist only of the digits 0 through 9
        printf("String\n");
        
    }
}

- (IBAction)Number:(id)sender {
    // [_TextField text];
    NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([[_TextField text] rangeOfCharacterFromSet:notDigits].location == NSNotFound)
    {
        //String consists only of the digits 0 through 9
        printf("pure Number\n");
    }else{
        //String doesn't consist only of the digits 0 through 9
        printf("Not pure Number \n");
        
    }
}
@end
