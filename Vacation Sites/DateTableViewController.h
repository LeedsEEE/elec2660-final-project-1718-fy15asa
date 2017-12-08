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


//Creating an object of our Data class to access its strings
@property (nonatomic,strong) Data *data;

//Action button to add a reminder
- (IBAction)addReminder:(id)sender;

//Array to store reminders from the user
@property (nonatomic,strong) NSMutableArray *Reminders;

@end
