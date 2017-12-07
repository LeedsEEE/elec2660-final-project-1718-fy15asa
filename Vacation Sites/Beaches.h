//
//  Beaches.h
//  Vacation Sites
//
//  Created by Abdul on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "BeachView.h"
@interface Beaches : UITableViewController


//Creating an object from our DataModel class to access the array
@property (nonatomic,strong) DataModel *info;

@end
