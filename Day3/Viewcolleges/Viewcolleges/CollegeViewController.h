//
//  CollegeViewController.h
//  Viewcolleges
//
//  Created by JETS Mobile Lab-10 on 4/16/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "colleges.h"
NS_ASSUME_NONNULL_BEGIN

@interface CollegeViewController : ViewController

@property colleges * college;
@property (weak, nonatomic) IBOutlet UILabel *ID;
@property (weak, nonatomic) IBOutlet UILabel *Name;
@property (weak, nonatomic) IBOutlet UILabel *Email;
@property (weak, nonatomic) IBOutlet UILabel *Phone;

@property (weak, nonatomic) IBOutlet UILabel *age;


@end

NS_ASSUME_NONNULL_END
