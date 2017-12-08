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
@interface NoteView : UIViewController <UITextFieldDelegate> //Adding textfielddelegate to access its delegate method


//Creating an object from our Data class to access its string objects
@property (nonatomic,strong) Data *data;
//Outlets of the textfield and textview so we can store the data the user written in them in our array later
@property (weak, nonatomic) IBOutlet UITextField *Title;
@property (weak, nonatomic) IBOutlet UITextView *Note;


@end
