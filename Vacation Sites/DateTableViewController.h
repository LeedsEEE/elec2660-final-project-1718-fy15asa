//
//  DateTableViewController.h
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
#import "DateViewController.h"
@interface DateTableViewController : UITableViewController

@property (nonatomic,strong) Data *data;
- (IBAction)addReminder:(id)sender;
@property (nonatomic,strong) NSMutableArray *Reminders;

@end
