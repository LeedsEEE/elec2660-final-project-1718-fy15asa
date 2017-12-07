//
//  NotesTable.m
//  Vacation Sites
//
//  Created by Abdul on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "NotesTable.h"

@interface NotesTable ()

@end

@implementation NotesTable

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Setting up the array
    self.Notes = [NSMutableArray array];
    
    

    
   
}
//This method was used for debugging purposes to see the value of notes as soon as the view in table appears
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    //NSLog(@"%@",[self.Notes[0] note]);
    
}

#pragma mark - Table view data source
//Number of sections set to 1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
    return 1;
}


//setting the number of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //I set the number of row here to the count of the array objects so each time the user adds a cell (object) the number will increase by one
    return self.Notes.count;
}

//With this method we can access the cell and manipulate it
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NoteCell" forIndexPath:indexPath];
    //Setting the cell textlabel to the note string objct from the array which the user will be able to change with the textfield in the destination view controller
    cell.textLabel.text = [self.Notes[indexPath.row] note];
    return cell;
}

//header title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"All Notes";
}


//This method was taken from the Developers documentation and it is used to edit the cells insert or delete but in this case im using it to give the user the option to delete any old cells(notes) he made
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //Identifying the editing style to delete
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        //Removing the object at indexpath (cell)
        [self.Notes removeObjectAtIndex:indexPath.row];
        
        //Deleting the row with a specified animiation fading out when deleted
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// This method is responsible for pushing the data from our table to the view controller so we can display them there
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //Segue is the connection from the cell to the ViewController we identify it with its name (given identifier)
    if ([segue.identifier isEqualToString:(@"noteView")]){
    //Creating an object of our ViewController destination and also setting the destination of the segue to it
    NoteView *NoteView = [segue destinationViewController];
    //we specifiy the NSIndexPath object and set its path to the tableview selected row
    NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
    //Storing data from the table into an empty of object of data class
    Data *tempnote = [self.Notes objectAtIndex:indexpath.row];
    //taking the stored data in our table and sending them to the view controller
    NoteView.data =tempnote;
    }
    
    
}

//This method is responsible for adding a cell each time its triggered by the user (Button).
- (IBAction)AddCell:(id)sender {
    //Creating a new object to display as a cell
    Data *note = [Data new];
    //Setting the cell name to note before the user changes it
    note.note = @"Note";
    //Setting the text view to display Enter Text Here for the user when he makes his new cell
    note.content = @"Enter Text Here";
    //adding the object to the array to store it
    [self.Notes addObject:note];
    //Finally reloading the table to show us the new cell
    [self.tableView reloadData];
    
}

@end
