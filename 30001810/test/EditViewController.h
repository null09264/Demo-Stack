//
//  EditViewController.h
//  test
//
//  Created by NULL on 02/05/15.
//  Copyright (c) 2015年 Echx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController

@property NSInteger tag;

+(EditViewController *) getInstanceWithTag: (NSInteger) tag;

@end
