//
//  StocksTableViewController.m
//  Stocks
//
//  Created by Toleen Jaradat on 7/5/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "StocksTableViewController.h"

@interface StocksTableViewController ()

@end

@implementation StocksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Stocks";
    stocks = [NSMutableArray arrayWithObjects:@"APPLE",@"GOOGLE",@"AIG",@"FACEBOOK",@"TESLA",@"HP", nil];
    
         }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return stocks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stocksCellID" forIndexPath:indexPath];
    
    cell.textLabel.text = stocks[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
  [self.delegate stocksTableViewDidSelect:stocks[indexPath.row]]; //Pass items from the data source not table
    
}

@end
