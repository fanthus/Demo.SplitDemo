//
//  MasterViewController.h
//  SplitDemo
//
//  Created by xiushanfan on 7/4/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MasterVCProtocol <NSObject>

- (void)clickIndexPathRow:(NSInteger)row;


@end

@interface MasterViewController : UIViewController

@property (nonatomic, weak) id<MasterVCProtocol> delegate;

@end
