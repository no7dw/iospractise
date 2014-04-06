//
//  ViewController.m
//  tipcalculator
//
//  Created by Kalengo on 14-4-6.
//  Copyright (c) 2014年 Kalengo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_label setText:@"hi"];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {

    
    NSString *userInput = [_textField text];
    if ([userInput length] == 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"bill amount" message:@"you forget to input " delegate:nil cancelButtonTitle:@"cancel"otherButtonTitles:@"ok", nil];
        [alertView show];
    }
    else{
        
    
    float billAmount = [userInput floatValue];
    float tipAmount = [_slider value] * billAmount/100;
    NSString *newString = [[NSString alloc] initWithFormat:@"%.2f", tipAmount];
        [_label setText:newString];
        }
}
- (IBAction)valueChanged:(id)sender {
    NSString *currentTipString = [[NSString alloc] initWithFormat:@"%1.2f %%" , [_slider value] ];
    [_sliderLabel setText: currentTipString];
}
@end
