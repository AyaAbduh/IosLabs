//
//  SecondviewController.m
//  NavigationControllerWithTabLayout
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondviewController.h"

@interface SecondviewController ()

@end

@implementation SecondviewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //createBarButton
    UIBarButtonItem * myBarItem=[[UIBarButtonItem alloc]
                                 initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];

      [self.navigationItem setRightBarButtonItem:myBarItem];    // Do any additional setup after loading the view.
    _helloLabel.text=[@"Hello " stringByAppendingString:self.text];
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
