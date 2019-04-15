//
//  SecondviewController.h
//  NavigationControllerWithTabLayout
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "clearTextProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondviewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *helloLabel;
@property NSString *text;
@property id<clearTextProtocol> firstView;

@end

NS_ASSUME_NONNULL_END
