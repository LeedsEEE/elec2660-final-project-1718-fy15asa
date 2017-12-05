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
@property (nonatomic,strong) Data *data;
- (IBAction)AddCell:(id)sender;
@property (nonatomic,strong) NSMutableArray *Notes;

@end
