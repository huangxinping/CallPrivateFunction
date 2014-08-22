//
//  ViewController.m
//  uuid7
//
//  Created by Jack on 19/12/2013.
//  Copyright (c) 2013 salmonapps. All rights reserved.
//

#import "ViewController.h"
#import "COPrivate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)hehe:(id)sender {
	NSBundle *b = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SpringBoardFoundation.framework"];
	BOOL success = [b load];
	if (success) {
		Class iconWallper = NSClassFromString(@"SBIconWallpaperColorProvider");
        id instance = [iconWallper performSelector:@selector(sharedInstance)];
        [COPrivate printfPrivateMethodList:iconWallper];
        
//		id obj = [[wallpaperView alloc] init];
//
//		UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//		btn.frame = CGRectMake(0, 0, 50, 15);
//		[btn setBackgroundColor:[UIColor redColor]];
//		[obj addSubview:btn];
//
//		[btn addTarget:self action:@selector(heheClick:) forControlEvents:UIControlEventTouchUpInside];
	}
}

- (void)heheClick:(UIButton *)sender {
//	[sender removeFromSuperview];
}

@end
