//
//  ViewController.h
//  toolbar
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
- (IBAction)imageClicked:(id)sender;
- (IBAction)Alert:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img;


@end

