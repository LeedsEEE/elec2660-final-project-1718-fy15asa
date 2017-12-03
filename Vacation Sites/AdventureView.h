//
//  AdventureView.h
//  Vacation Sites
//
//  Created by Abdul on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
@interface AdventureView : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Location;
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *Name;
@property (strong, nonatomic) IBOutlet UILabel *Description;
@property (strong,nonatomic) Data *data;
@end
