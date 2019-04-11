//
//  ViewController.h
//  helloApp
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


//used to change
@property IBOutlet UILabel *MYLabel;
@property IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;


- (IBAction)myButton:(id)sender;



//mehtod type
@end

