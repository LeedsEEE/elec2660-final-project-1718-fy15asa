//
//  AdventureTable.h
//  Vacation Sites
//
//  Created by Abdul on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdventureTable : UITableViewController
- (IBAction)Adventure:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITableView *Adventure;

@end
