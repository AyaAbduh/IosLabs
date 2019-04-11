//
//  ViewController.m
//  CoWorkers
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray * myArray;
@property NSInteger index;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myArray = @[@"aya", @"ali", @"ahmed", @"hima", @"aliaa"];
    _index=0;
    _Name.text=[_myArray objectAtIndex:_index];}


- (IBAction)previous:(id)sender {
    if(_index==0){
        _index=0;
    }
    else{
    _index--;
        _Name.text=[_myArray objectAtIndex:_index];
        
    }
    
}

- (IBAction)Next:(id)sender {
    if(_index != [_myArray count]-1){
    _index++;
        _Name.text=[_myArray objectAtIndex:_index];
        
    }
    
}
@end
