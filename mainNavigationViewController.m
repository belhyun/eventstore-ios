//
//  mainNavigationViewController.m
//  eventstore
//
//  Created by 이종현 on 2013. 12. 8..
//  Copyright (c) 2013년 belhyun. All rights reserved.
//

#import "mainNavigationViewController.h"

@interface mainNavigationViewController ()

@end

@implementation mainNavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"viewDidLoad");
    SVWebViewController *webViewController = [[SVWebViewController alloc] initWithAddress:@"http://eventstore.co.kr"];
    [self setViewControllers:@[webViewController] animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
