//
//  AdventureTable.h
//  Vacation Sites
//
//  Created by Abdul on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "AdventureView.h"
@interface AdventureTable : UITableViewController


//Creating an Object from my DataModel class to access to the arrray
@property (strong,nonatomic) DataModel *info;

@end
