//
//  ViewController.h
//  CoWorkers
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Name;

- (IBAction)previous:(id)sender;
- (IBAction)Next:(id)sender;

@end

