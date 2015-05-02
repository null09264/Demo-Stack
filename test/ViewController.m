//
//  ViewController.m
//  test
//
//  Created by NULL on 02/05/15.
//  Copyright (c) 2015年 Echx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"DATA"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)saveLabel:(id)sender {
	NSArray *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"DATA"];
	NSMutableArray *currentDataArray;
	if (data == nil) {
		currentDataArray = [[NSMutableArray alloc]init];
	} else {
		currentDataArray = [[NSMutableArray alloc]initWithArray:data];
	}
	[currentDataArray addObject:self.textField.text];
	[[NSUserDefaults standardUserDefaults] setObject:currentDataArray forKey:@"DATA"];
}

@end
