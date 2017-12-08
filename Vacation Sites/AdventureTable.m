//
//  AdventureTable.m
//  Vacation Sites
//
//  Created by Abdul on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "AdventureTable.h"

@interface AdventureTable ()

@end

@implementation AdventureTable

- (void)viewDidLoad {
    [super viewDidLoad];
    //Initilasing and allocating the DataModel object
   self.info = [[DataModel alloc]init];
}


#pragma mark - Table view data source methods

    //Setting the number of sections to 7 using this method
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 7;
}

    //setting the number of rows in setions to 2 using this method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return 2;
}

//We can access the cell with this method
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Identifiying the cell that we're going to manipulate
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Adv" forIndexPath:indexPath];
    
    //Enter if statement for cells in section 0
    if (indexPath.section==0){
        
    //Creating a temporary Data object to store the cells at index path information in for the first section
    Data *tempadv = [self.info.Asiaadventure objectAtIndex:indexPath.row];
    
    //Settingg the textLabel, and detailTextLabel to our strings in the array to be displayed
    cell.textLabel.text = tempadv.Name;
    cell.detailTextLabel.text = tempadv.Location;
    
        
    }
    
    //Same happening for different sections each section receiving their appropraite arrays and objects
    else if (indexPath.section==1){
        Data *tempadv = [self.info.afradventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
       
    }
    else if (indexPath.section==2){
        Data *tempadv = [self.info.Caradventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
       
    }
    else if (indexPath.section==3){
        Data *tempadv = [self.info.euroadventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
    }
    else if (indexPath.section==4){
        Data *tempadv = [self.info.mexadventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%@",tempadv.header]];
        cell.imageView.image = img;
        
    }
    else if (indexPath.section==5){
        Data *tempadv = [self.info.spadventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
    }
    else if (indexPath.section==6){
        Data *tempadv = [self.info.USadventure objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
    }
    return cell;
}

    // In this method we set the header title for each section
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    //Using If statement we access each section giving it appropriate header
    if(section==0){
        
        return@"Asia";
    }
   else if (section==1) {
        return @"Africa & the Middle East";
    }
   else if(section==2){
        return @"Caribbean";
    }
   else if (section==3) {
        return @"Europe";
    }
   else if(section==4){
        return @"Mexico, Central & South America";
    }
   else if (section==5) {
        return @"South Pacific";
    }
   else  {
        return @"United States and Canada";
    }
    
    
    
}

#pragma mark - Navigation Methods


    // This method is responsible for pushing the data from our table to the view controller so we can display them there
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     //segue is the connection between the cell and the next view controller with an identifier we can access it using this if statement
     if ([[segue identifier] isEqualToString:@"Adventure"]){
     
     //First we make an object of our view controler and specifiy that it is the destination of the segue
     AdventureView *destinationViewController = [segue destinationViewController];
    //we specifiy the NSIndexPath object and set its path to the tableview selected row
     NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
     if(indexpath.section == 0){
         //Creating a temporary object to fetch the data from the table for section 0
         Data *tempadv = [self.info.Asiaadventure objectAtIndex:indexpath.row];
         //Setting the viewcontrollerr (data) to the ones in the table so we can access them there later
         destinationViewController.data =tempadv;
     }
         
         
     // the rest follows the same procedure with different sections
     else if (indexpath.section == 1){
         Data *tempadv = [self.info.afradventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
     else if (indexpath.section == 2){
         Data *tempadv = [self.info.Caradventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
     else if (indexpath.section == 3){
         Data *tempadv = [self.info.euroadventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
     else if (indexpath.section == 4){
         Data *tempadv = [self.info.mexadventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
     else if (indexpath.section == 5){
         Data *tempadv = [self.info.spadventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
     else if (indexpath.section == 6){
         Data *tempadv = [self.info.USadventure objectAtIndex:indexpath.row];
         destinationViewController.data =tempadv;
     }
 
 }
 
 
 }




@end
