//
//  ContainerViewController.m
//  Stocks
//
//  Created by Toleen Jaradat on 7/5/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *childViewController = self.childViewControllers;
    
    StocksTableViewController *stocksTableViewController = (StocksTableViewController *) childViewController.firstObject;
    
    DisplayStocksViewController *displayStocksViewController = (DisplayStocksViewController *) childViewController.lastObject;

    stocksTableViewController.delegate = displayStocksViewController;
    
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
