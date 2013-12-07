//
//  MainViewController.h
//  eventstore
//
//  Created by 이종현 on 2013. 12. 5..
//  Copyright (c) 2013년 belhyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface MainViewController : UIViewController <MBProgressHUDDelegate, UIWebViewDelegate>
@property (strong, nonatomic) MBProgressHUD *HUD;
@end
