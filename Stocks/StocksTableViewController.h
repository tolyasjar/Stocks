//
//  StocksTableViewController.h
//  Stocks
//
//  Created by Toleen Jaradat on 7/5/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StocksTableViewControllerDelegate

-(void) stocksTableViewDidSelect:(NSString *) stocks;

@end

@interface StocksTableViewController : UITableViewController

{
    NSMutableArray *stocks;
}

@property (nonatomic,weak) id <StocksTableViewControllerDelegate> delegate;

@end

