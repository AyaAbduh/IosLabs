//
//  TableViewController.m
//  Viewcolleges
//
//  Created by JETS Mobile Lab-10 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "TableViewController.h"
#import "colleges.h"
#import "CollegeViewController.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    colleges *college1 =[colleges new];
    college1.id=@"1";
    college1.name=@"aya";
    college1.email=@"aya.yoya962015@gmail.com";
    college1.phone=@"01001617820";
    college1.age=@"22";
    
    colleges *college2 =[colleges new];
    college2.id=@"2";
    college2.name=@"ali";
    college2.email=@"ali.yoya962015@gmail.com";
    college2.phone=@"01001617820";
    college2.age=@"23";
    
    colleges *college3 =[colleges new];
    college3.id=@"3";
    college3.name=@"ahmed";
    college3.email=@"ahmed.yoya962015@gmail.com";
    college3.phone=@"01001617820";
    college3.age=@"25";
    
    _collegesList=[NSMutableArray new];
    
    [_collegesList addObject:college1];
    [_collegesList addObject:college2];
    [_collegesList addObject:college3];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
   
    return [_collegesList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=[[_collegesList objectAtIndex:indexPath.row] name];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //send it to the next controller
    
    printf("colleges:%s\n",[[[_collegesList objectAtIndex:indexPath.row] name] UTF8String]);
    CollegeViewController *collegeController=[self.storyboard instantiateViewControllerWithIdentifier:@"CollegeView"];
    
    //send data
    [collegeController setCollege:[_collegesList objectAtIndex:indexPath.row]];
    
    [self.navigationController pushViewController:collegeController animated:NO];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
