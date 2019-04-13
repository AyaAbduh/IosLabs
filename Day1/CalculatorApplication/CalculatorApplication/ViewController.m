//
//  ViewController.m
//  CalculatorApplication
//
//  Created by JETS Mobile Lab-10 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property bool flag1;
@property bool flag2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _flag1=true;
    _flag2=true;
}

- (IBAction)clearText:(id)sender {
    _text.text=@"";
    _flag1=true;
    
}

- (IBAction)clearText2:(id)sender {
    _text2.text=@"";
    _flag2=true;

}

- (IBAction)one:(id)sender {
    if(_flag1){
        _text.text=@"1";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"1";
        _flag2=false;
    }
}

- (IBAction)two:(id)sender {
    if(_flag1){
        _text.text=@"2";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"2";
        _flag2=false;
    }}

- (IBAction)four:(id)sender {
    if(_flag1){
        _text.text=@"4";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"4";
        _flag2=false;
    }
}
- (IBAction)three:(id)sender {
    if(_flag1){
        _text.text=@"3";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"3";
        _flag2=false;
    }
}

- (IBAction)five:(id)sender {
    if(_flag1){
        _text.text=@"5";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"5";
        _flag2=false;
    }
}

- (IBAction)six:(id)sender {
    if(_flag1){
        _text.text=@"6";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"6";
        _flag2=false;
    }
}

- (IBAction)seven:(id)sender {
    if(_flag1){
        _text.text=@"7";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"7";
        _flag2=false;
    }
}

- (IBAction)eight:(id)sender {
    if(_flag1){
        _text.text=@"8";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"8";
        _flag2=false;
    }
}

- (IBAction)nine:(id)sender {
    if(_flag1){
        _text.text=@"9";
        _flag1=false;
    }else if(_flag2){
        _text2.text=@"9";
        _flag2=false;
    }
}

- (IBAction)add:(id)sender {
    _Result.text=[NSString stringWithFormat:@"%d", [[_text2 text] intValue]+[[_text text] intValue]];
}

- (IBAction)subtract:(id)sender {
    _Result.text=[NSString stringWithFormat:@"%d", [[_text text] intValue]-[[_text2 text] intValue]];
}

- (IBAction)Divide:(id)sender {
    _Result.text=[NSString stringWithFormat:@"%d", [[_text text] intValue]/[[_text2 text] intValue]];
}

- (IBAction)Multiply:(id)sender {
    _Result.text=[NSString stringWithFormat:@"%d", [[_text2 text] intValue]*[[_text text] intValue]];
}
@end
