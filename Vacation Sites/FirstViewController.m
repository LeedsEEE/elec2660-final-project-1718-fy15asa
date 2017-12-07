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
    //Setting the number of lines of the buttons so it displays all the words
    self.relax.titleLabel.numberOfLines = 3;
    self.beach.titleLabel.numberOfLines = 3;
    self.family.titleLabel.numberOfLines = 2;
    
}

@end
