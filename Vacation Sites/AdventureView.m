//
//  AdventureView.m
//  Vacation Sites
//
//  Created by Abdul on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "AdventureView.h"

@interface AdventureView ()

@end

@implementation AdventureView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Name.text = self.data.Name;
    self.Description.text = self.data.Description;
    self.Location.text = self.data.Location;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
