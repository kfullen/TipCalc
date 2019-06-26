//
//  ViewController.m
//  tippy
//
//  Created by kfullen on 6/25/19.
//  Copyright © 2019 kfullen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipLab;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)tapOut:(id)sender {
    [self.view endEditing:(YES)];
}

- (IBAction)billEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    NSArray *pcts = @[@(0.15),@(0.18),@(0.2),@(0.25)];
    double tipPct = [pcts[self.tipControl.selectedSegmentIndex] doubleValue];
    
    
    double tip = tipPct * bill;
    double total = bill + tip;
    
    self.tipLab.text = [NSString stringWithFormat:@"$%.2f",tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f",total];
}

@end
