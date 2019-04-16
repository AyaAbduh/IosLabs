//
//  CollegeViewController.m
//  Viewcolleges
//
//  Created by JETS Mobile Lab-10 on 4/16/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "CollegeViewController.h"

@interface CollegeViewController ()

@end

@implementation CollegeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _ID.text=_college.id;
    _Name.text=_college.name;
    _Email.text=_college.email;
    _Phone.text=_college.phone;
    _age.text=_college.age;
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
