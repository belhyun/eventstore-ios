//
//  MainViewController.m
//  eventstore
//
//  Created by 이종현 on 2013. 12. 5..
//  Copyright (c) 2013년 belhyun. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    self.HUD = [[MBProgressHUD alloc] initWithView:self.view];
    NSURL *url = [NSURL URLWithString:@"http://eventstore.co.kr"];
    UIWebView *webview = [[UIWebView alloc] initWithFrame:CGRectMake(0, 65, self.view.frame.size.width, self.view.frame.size.height)];
    webview.scalesPageToFit = YES;
    webview.autoresizesSubviews = YES;
    webview.autoresizingMask=(UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    [webview setBackgroundColor:[UIColor clearColor]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webview loadRequest:request];
    //self.view = webview;
    webview.delegate = self;
    [webview addSubview:self.HUD];
    self.HUD.delegate = self;
    [self.HUD show:YES];
    [self.view addSubview:webview];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.HUD hide:YES];
}

@end
