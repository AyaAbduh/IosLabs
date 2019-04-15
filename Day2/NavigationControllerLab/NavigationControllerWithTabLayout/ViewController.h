//
//  ViewController.h
//  NavigationControllerWithTabLayout
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "clearTextProtocol.h"

@interface ViewController : UIViewController <clearTextProtocol>
- (IBAction)secondControllerButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *Name;

@end

