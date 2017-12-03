//
//  FamilyFun.m
//  Vacation Sites
//
//  Created by Abdul on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FamilyFun.h"

@interface FamilyFun ()

@end

@implementation FamilyFun

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.info = [[DataModel alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // NSInteger Numberofrows;
    //  Numberofrows = self.info.adventure.count;
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Family" forIndexPath:indexPath];
    
    
    if (indexPath.section==0){
        Data *tempadv = [self.info.Carfamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==1){
        Data *tempadv = [self.info.eurofamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==2){
        Data *tempadv = [self.info.mexfamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    else if (indexPath.section==3){
        Data *tempadv = [self.info.USfamilyfun objectAtIndex:indexPath.row];
        cell.textLabel.text = tempadv.Name;
        cell.detailTextLabel.text = tempadv.Location;
        
    }
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section==0){
        
        return@"Caribbean";
    }
    else if (section==1) {
        return @"Europe";
    }
    else if(section==2){
        return @"Mexico, Central & South America";
    }
    else  {
        return @"United States & America";
    }
   
    
    
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
 
 
 if ([[segue identifier] isEqualToString:@"Family"]){
 
 FamilyView *destinationViewController = [segue destinationViewController];
 NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
 if(indexpath.section == 0){
 Data *tempadv = [self.info.Carfamilyfun objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 1){
 Data *tempadv = [self.info.eurofamilyfun objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 2){
 Data *tempadv = [self.info.mexfamilyfun objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
 }
 else if (indexpath.section == 3){
 Data *tempadv = [self.info.USfamilyfun objectAtIndex:indexpath.row];
 destinationViewController.data =tempadv;
        }
    }
 }



@end

