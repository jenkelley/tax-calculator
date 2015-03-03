//
//  MainViewController.m
//  Tax Calculator
//
//  Created by Jen Kelley on 3/2/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}
- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *enterText = self.priceTextField.text;
    double enterTextValue = enterText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enterTextValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enterTextValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%f", result];

    } else {
        double result = enterTextValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%f", result];}
}



@end
