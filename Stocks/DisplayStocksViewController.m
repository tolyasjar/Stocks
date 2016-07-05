//
//  DisplayStocksViewController.m
//  Stocks
//
//  Created by Toleen Jaradat on 7/5/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "DisplayStocksViewController.h"

@interface DisplayStocksViewController ()

@property (nonatomic,weak) IBOutlet UILabel *displayLabel;

@end

@implementation DisplayStocksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) stocksTableViewDidSelect:(NSString *)stocks {
   
    self.displayLabel.text = stocks;
    NSLog(@"%@",stocks);

}

@end
