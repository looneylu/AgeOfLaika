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
    // convert yearsToConvertTextField into dog years
    // the first years of a dog are equivalent to 10.5 human years
    // every year after is equivalent to 4 human years
    int yearsToConvert = [self.yearsToConvertTextField.text integerValue];
    
    int dogYears;
    if (yearsToConvert <= 2)
        dogYears = yearsToConvert * 10.5;
    else{
        dogYears = (yearsToConvert - 2) * 4 + 21;
    }
    
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
