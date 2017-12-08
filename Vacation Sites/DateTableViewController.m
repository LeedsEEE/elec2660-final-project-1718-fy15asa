//
//  DateTableViewController.m
//  Vacation Sites
//
//  Created by Abdul on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DateTableViewController.h"

@interface DateTableViewController ()

@end

@implementation DateTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //setting up the array
    self.Reminders = [NSMutableArray array];
    
    
    
    
    
}
//This method will trigger as soon as the table appears
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //reload the array
    [self.tableView reloadData];
    //NSLog(@"%@",self.Notes[0]);
    
}
#pragma mark - Table view data source
//Number of Sections 1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}
//Number of rows method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Setting the number of rows to the number of objects in the array so the user can add a row anytime by adding an object using the button
    return self.Reminders.count;
}

//This method is to access the cells and manipulate them
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Identifying the cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ReminderCell" forIndexPath:indexPath];
    //Setting the text of the cell to the reminder title which is entered in the view controller text field by the user
    cell.textLabel.text = [self.Reminders[indexPath.row] reminderTitle];
    
    
    return cell;
}
//Header title method
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Reminders";
}

//This method is for editing the cell in this case we're using it to give the user the option to delete the cell
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //Removing the object from the table
        [self.Reminders removeObjectAtIndex:indexPath.row];
        //deleting the cell with fade animation
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation
// This method is responsible for pushing the data from our table to the view controller so we can display them there
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //Segue is the connection from the cell to the ViewController we identify it with its name (given identifier)
    if ([segue.identifier isEqualToString:(@"Reminder")]){
        //Creating an object of our ViewController destination and also setting the destination of the segue to it
        DateViewController *DateViewController = [segue destinationViewController];
        //we specifiy the NSIndexPath object and set its path to the tableview selected row
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
        //Storing data from the table into an empty of object of data class
        Data *tempreminder = [self.Reminders objectAtIndex:indexpath.row];
        //taking the stored data in our table and sending them to the view controller
        DateViewController.data = tempreminder;
        
    }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

//Button action method for the user to add a reminder (Cell).
- (IBAction)addReminder:(id)sender {
    //Creating a new reminder object.
    Data *reminder = [Data new];
    //Setting the remindertitle string object to Enter reminder so that it appears in the textfield for the user
    reminder.reminderTitle = @"Enter reminder";
    //Adding the new object. This will trigger the number of rows method to update the number of rows by one new object
    [self.Reminders addObject:reminder];
    //Reloading table to update the number of rows in the table
    [self.tableView reloadData];
    
}

@end

