//
//  EditViewController.m
//  test
//
//  Created by NULL on 02/05/15.
//  Copyright (c) 2015年 Echx. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property NSMutableArray *data;
@end

@implementation EditViewController

+(EditViewController *) getInstanceWithTag: (NSInteger) tag {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
	EditViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"EditViewController"];
	viewController.tag = tag;
	return viewController;
}

- (void) viewDidLoad {
	NSLog(@"tag: %ld", self.tag);
	NSArray *dataArray = [[NSUserDefaults standardUserDefaults] objectForKey:@"DATA"];
	
	if (dataArray != nil) {
		self.data = [[NSMutableArray alloc]initWithArray: dataArray];
		self.textField.text = [self.data objectAtIndex:self.tag];
	}
}

- (IBAction)saveData:(id)sender {
	[self.data setObject:self.textField.text atIndexedSubscript:self.tag];
	[[NSUserDefaults standardUserDefaults]setObject:self.data forKey:@"DATA"];
}

- (IBAction) dismissViewController: (UIButton *) sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end
