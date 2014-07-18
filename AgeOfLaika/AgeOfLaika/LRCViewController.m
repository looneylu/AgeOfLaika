//
//  LRCViewController.m
//  AgeOfLaika
//
//  Created by Luis Carbuccia on 7/18/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCViewController.h"

@interface LRCViewController ()
@property (strong, nonatomic) IBOutlet UILabel *yearsInDogYearsLabel;

@property (strong, nonatomic) IBOutlet UITextField *yearsToConvertTextField;

@end

@implementation LRCViewController

- (IBAction)buttonPressed:(id)sender
{
    // convert yearsToConvertTextField into dog years by multiplying by 7
    int dogYears = [self.yearsToConvertTextField.text integerValue] * 7;
    
    // display dogYears in yearsInDogYearsLabel
    self.yearsInDogYearsLabel.text = [NSString stringWithFormat:@"%d dog years!", dogYears];
    
    [self.yearsToConvertTextField resignFirstResponder];
    self.yearsToConvertTextField.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
