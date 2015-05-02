//
//  AnotherViewController.m
//  test
//
//  Created by NULL on 02/05/15.
//  Copyright (c) 2015年 Echx. All rights reserved.
//

#import "AnotherViewController.h"
#import "EditViewController.h"

@implementation AnotherViewController

- (void) viewWillAppear:(BOOL)animated {
	NSArray *dataArray = [[NSUserDefaults standardUserDefaults]objectForKey:@"DATA"];
	NSLog(@"%@", dataArray);
	if (dataArray != nil) {
		int count = 0;
		for (NSString *text in dataArray) {
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 80 + 40 * count, 240, 39)];
			label.text = text;
			label.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:1];
			label.textAlignment = NSTextAlignmentCenter;
			[self.view addSubview:label];
			
			UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(240, 80 + 40 * count, 80, 39)];
			[button setTitle:@"Edit" forState:UIControlStateNormal];
			[button setTitle:@":D" forState:UIControlStateHighlighted];
			
			button.tintColor = [UIColor whiteColor];
			button.backgroundColor = [UIColor colorWithRed:235/255.0 green:107/255.0 blue:86/255.0 alpha:1];
			button.tag = count;
			[button addTarget:self action:@selector(editButtonDidClicked:) forControlEvents:UIControlEventTouchUpInside];
			[self.view addSubview:button];
			count++;
		}
	}
}

- (void) viewWillDisappear:(BOOL)animated {
	[self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}


- (void) editButtonDidClicked: (UIButton *) button {
	EditViewController *viewController = [EditViewController getInstanceWithTag:button.tag];
	[self.navigationController pushViewController:viewController animated:YES];
}

@end
