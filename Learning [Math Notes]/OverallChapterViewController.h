//
//  S2ChapterViewController.h
//  Learning [Math Notes]
//
//  Created by Chong Xu Wei on 23/8/13.
//  Copyright (c) 2013 warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OverallChapterViewController : UIViewController<UIWebViewDelegate>
{
   // IBOutlet UIWebView *webView;
}

@property (strong, nonatomic) NSArray *chapterDetailArray;
@property (strong, nonatomic) IBOutlet NSString *chapterLabel;
@property (strong, nonatomic) NSString *myname;
@property (strong, nonatomic) NSString *path;
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@end
