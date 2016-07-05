//
//  DetailViewController.m
//  SplitDemo
//
//  Created by xiushanfan on 7/4/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController() {
    UILabel *testLabel;
}

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    testLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 80, 50)];
    testLabel.font = [UIFont systemFontOfSize:15.0f];
    testLabel.backgroundColor = [UIColor redColor];
    testLabel.text = @"Hello world";
    testLabel.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:testLabel];
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)showTextWithInteger:(NSInteger)value {
    testLabel.text = [NSString stringWithFormat:@"%ld",(long)value];
}


@end
