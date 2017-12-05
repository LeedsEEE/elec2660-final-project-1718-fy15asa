//
//  FirstViewController.m
//  Vacation Sites
//
//  Created by Abdul on 22/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.relax.titleLabel.numberOfLines = 3;
    self.beach.titleLabel.numberOfLines = 3;
    self.family.titleLabel.numberOfLines = 2;
    
    
    /*self.Booking.delegate = self;
    NSString *url = @"http://www.booking.com";
    NSURL *URL = [NSURL URLWithString:url];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.Booking loadRequest:requestURL];
     
    // Do any additional setup after loading the view, typically from a nib.*/
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
