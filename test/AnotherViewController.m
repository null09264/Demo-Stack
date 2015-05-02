//
//  AnotherViewController.m
//  test
//
//  Created by NULL on 02/05/15.
//  Copyright (c) 2015年 Echx. All rights reserved.
//

#import "AnotherViewController.h"

@implementation AnotherViewController

- (void) viewWillAppear:(BOOL)animated {
	NSArray *dataArray = [[NSUserDefaults standardUserDefaults]objectForKey:@"DATA"];
	NSLog(@"%@", dataArray);
	if (dataArray != nil) {
		int count = 0;
		for (NSString *text in dataArray) {
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 200 + 40 * count, self.view.frame.size.width, 40)];
			label.text = text;
			label.textAlignment = NSTextAlignmentCenter;
			[self.view addSubview:label];
			count++;
		}
	}
}

@end
