//
//  ViewController.m
//  Multiply
//
//  Created by Andrew Webb on 1/7/14.
//  Copyright (c) 2014 Andrew Webb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    __weak IBOutlet UISlider *myMultiplierSlider;
    __weak IBOutlet UILabel *myAnswer;
    __weak IBOutlet UILabel *myMultiplier;
    __weak IBOutlet UITextField *myNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    int input = myNumber.text.intValue;
    int multiplier = myMultiplier.text.intValue;

    int answer = input * multiplier;
    
    [myAnswer setText:[NSString stringWithFormat: @"%d", answer]];
    
    
}
- (IBAction)onMultiplierSlide:(id)sender {
    myMultiplierSlider.maximumValue = 100;
 [myMultiplier setText:[NSString stringWithFormat: @"%d", (int)[myMultiplierSlider value]]];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
