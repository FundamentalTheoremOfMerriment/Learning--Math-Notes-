//
//  warrenViewController.m
//  Learning [Math Notes]
//
//  Created by Chong Xu Wei on 12/8/13.
//  Copyright (c) 2013 warren. All rights reserved.
//

#import "Sec2ViewController.h"
#import "Chapters.h"

@interface Sec2ViewController ()
//UITableView *tableview;

@end

@implementation Sec2ViewController {
    NSArray *chapter;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Chapters";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
    
    // Create chapter array
    Chapters *chapter1 = [Chapters new];
    chapter1.name = @"Algebraic Fractions & Manipulation";
    
    Chapters *chapter2 = [Chapters new];
    chapter2.name = @"Solving Quadratic Equations";
    
    Chapters *chapter3 = [Chapters new];
    chapter3.name = @"Quadratic Graphs";
    
    Chapters *chapter4 = [Chapters new];
    chapter4.name = @"Simultaneous Equations";
    
    Chapters *chapter5 = [Chapters new];
    chapter5.name = @"Pythagoras' Theorem";
    
    Chapters *chapter6 = [Chapters new];
    chapter6.name = @"Similarity and Congruency";
    
    Chapters *chapter7 = [Chapters new];
    chapter7.name = @"Trigonometry";
    
    Chapters *chapter8 = [Chapters new];
    chapter8.name = @"Mensuration";
    
    Chapters *chapter9 = [Chapters new];
    chapter9.name = @"Significant Figures, Indices and Standard Form";
    
    Chapters *chapter10 = [Chapters new];
    chapter10.name = @"Sets";
    
    chapter = [NSArray arrayWithObjects:chapter1, chapter2, chapter3, chapter4, chapter5, chapter6, chapter7, chapter8, chapter9, chapter10, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return chapter.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Display chapter in the table cell
    Chapters *chapterCell = [chapter objectAtIndex:indexPath.row];
    UILabel *chapterNameLabel = (UILabel *)[cell viewWithTag:101];
    chapterNameLabel.text = chapterCell.name;
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Test1"])
    {
        NSIndexPath *sIndex = [self.tableView indexPathForSelectedRow];
        Chapters *c = [chapter objectAtIndex:sIndex.row];
        NSString *chapterName = c.name;
        
        S2ChapterViewController *s2 = [segue destinationViewController];
        //pass a variable in to s2 here. Example s2.name = @"blah";
        s2.myname = chapterName;//@"hello";
        //NSLog(@"prepare For Segue");
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cellLoc = [self.tableView cellForRowAtIndexPath:indexPath];
    if ([cellLoc.reuseIdentifier isEqualToString:@"Cell"]) {
        // Perform the segue using the identifier I was careful to give it in IB
        // Note I'm sending the cell as the sender because that's what the normal
        // segue does and I already had code counting on that
        //S2ChapterViewController *sc =
        
        [self performSegueWithIdentifier:@"Test1" sender:cellLoc];
    }
    /*else if (
    {
    }*/
    else
    {
        UIAlertView *messageAlert = [[UIAlertView alloc]
                                     initWithTitle:@"Row Selected" message:cellLoc.reuseIdentifier delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        // Display Alert Message
        [messageAlert show];
    }
    //UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    //[self performSegueWithIdentifier:@"Test" sender:self];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end