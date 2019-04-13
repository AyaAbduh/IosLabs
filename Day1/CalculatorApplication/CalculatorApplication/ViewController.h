//
//  ViewController.h
//  CalculatorApplication
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *text;

@property (weak, nonatomic) IBOutlet UILabel *Result;
@property (weak, nonatomic) IBOutlet UILabel *text2;
- (IBAction)clearText:(id)sender;

- (IBAction)clearText2:(id)sender;

- (IBAction)one:(id)sender;

- (IBAction)two:(id)sender;

- (IBAction)four:(id)sender;

- (IBAction)three:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)Divide:(id)sender;
- (IBAction)Multiply:(id)sender;

@end

