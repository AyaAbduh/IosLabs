//
//  secondViewController.m
//  navigationController
//
//  Created by JETS Mobile Lab-10 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //createBarButton
    UIBarButtonItem * myBarItem=[[UIBarButtonItem alloc]
                                 initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    
     self.title=@"secondView";
    //add to navigationItem
    [self.navigationItem setRightBarButtonItem:myBarItem];
    _mylabel.text=self.str;
    printf("%s",[self.str UTF8String]);
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)done{
    printf("Done!");
    //POP
    //[self.navigationController popViewControllerAnimated:YES];
}
@end
