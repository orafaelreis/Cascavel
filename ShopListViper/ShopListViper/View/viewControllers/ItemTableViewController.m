//
//  ItemTableViewController.m
//  ShopListViper
//
//  Created by Rafael Reis (@orafaelreis) on 26/07/15.
//  licensed under MIT license
//

#import "ItemTableViewController.h"
#import "ItemTableViewCell.h"

@interface ItemTableViewController()<UITableViewDataSource, UITableViewDelegate>

@end

static NSString *kIdentifierCell = @"ItemTableViewCell";

@implementation ItemTableViewController

@synthesize presenter;

#pragma mark - TODO: BaseViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [super addPullDown];
    [self.tableView addSubview:self.refreshControl];
}


- (void)reloadData{
    [super reloadData];
    [self.tableView reloadData];
}

-(void)setupData:(id)data{
    self.items = (NSMutableArray *)data;
}

#pragma mark - IBActions

- (IBAction)addItem:(id)sender{
    [self.presenter openAddItem];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kIdentifierCell forIndexPath:indexPath];
    
    NSInteger i = indexPath.row;
    cell.textLabel.text = self.items[i].name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d / %d", (int)self.items[i].actualValue, (int)self.items[i].plannedValue];
    [cell setQuantity:self.items[i].actualValue shouldBe:self.items[i].plannedValue];
    return cell;
}

#pragma mark - UITableViewDelegate

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
   
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [self.presenter removeItem:self.items[indexPath.row]];
        [self.items removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.presenter openAddItemAtIndex:indexPath.row];
}


@end
