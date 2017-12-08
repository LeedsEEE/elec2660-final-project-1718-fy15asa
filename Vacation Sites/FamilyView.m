//
//  FamilyView.m
//  Vacation Sites
//
//  Created by Abdul on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FamilyView.h"

@interface FamilyView ()

@end

@implementation FamilyView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Setting the name label to the name array in our Data classs
    self.Name.text = self.data.Name;
    //Setting the Location label to the Location array in our Data classs
    self.Location.text = self.data.Location;
    //Setting the Description label to the Description array in our Data classs
    self.Description.text = self.data.Description;
    //Setting the outlet image to UIImage with the name of the string of the image in the array to show all images
    self.img.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",self.data.header]];
}
@end
