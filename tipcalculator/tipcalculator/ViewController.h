//
//  ViewController.h
//  tipcalculator
//
//  Created by Kalengo on 14-4-6.
//  Copyright (c) 2014年 Kalengo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)valueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@end
