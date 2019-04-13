//
//  ViewController.h
//  validation
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *TextField;

- (IBAction)letter:(id)sender;
- (IBAction)Number:(id)sender;

@end

