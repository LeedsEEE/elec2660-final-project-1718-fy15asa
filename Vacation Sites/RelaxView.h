//
//  RelaxView.h
//  Vacation Sites
//
//  Created by Abdul on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
@interface RelaxView : UIViewController
//Creating a Data class object to access its properties
@property (nonatomic,strong) Data *data;

//Image outlet 
@property (strong, nonatomic) IBOutlet UIImageView *img;

//Label outlets
@property (strong, nonatomic) IBOutlet UILabel *Name;
@property (strong, nonatomic) IBOutlet UILabel *Location;
@property (strong, nonatomic) IBOutlet UILabel *Description;

@end
