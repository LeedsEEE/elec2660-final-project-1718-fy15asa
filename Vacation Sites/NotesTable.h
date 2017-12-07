//
//  NotesTable.h
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
#import "NoteView.h"
@interface NotesTable : UITableViewController

//Creating an object from our data class to access their string objects
@property (nonatomic,strong) Data *data;
//This action is a button for the user to add a notes cell to the tableview
- (IBAction)AddCell:(id)sender;
//Creating this array to store our notes and note content in it and adding objects for more cells
@property (nonatomic,strong) NSMutableArray *Notes;


@end
