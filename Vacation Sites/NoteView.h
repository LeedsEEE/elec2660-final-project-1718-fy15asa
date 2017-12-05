//
//  NoteView.h
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
#import "NotesTable.h"
@interface NoteView : UIViewController

@property (nonatomic,strong) Data *data;
@property (weak, nonatomic) IBOutlet UITextField *Title;
@property (weak, nonatomic) IBOutlet UITextView *Note;

@end
