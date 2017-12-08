//
//  FamilyFun.h
//  Vacation Sites
//
//  Created by Abdul on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "FamilyView.h"
@interface FamilyFun : UITableViewController
//Creating a DataModel object to access our array
@property (strong,nonatomic) DataModel *info;

@end
