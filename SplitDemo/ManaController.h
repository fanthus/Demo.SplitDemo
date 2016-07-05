//
//  ManaController.h
//  SplitDemo
//
//  Created by xiushanfan on 7/5/16.
//  Copyright © 2016 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MasterViewController.h"
#import "DetailViewController.h"


@interface ManaController : NSObject<UISplitViewControllerDelegate,MasterVCProtocol>

@property (nonatomic, strong) MasterViewController *masterVC;
@property (nonatomic, strong) DetailViewController *detailVC;

@end
