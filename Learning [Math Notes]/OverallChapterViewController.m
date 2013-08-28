//
//  S2ChapterViewController.m
//  Learning [Math Notes]
//
//  Created by Chong Xu Wei on 23/8/13.
//  Copyright (c) 2013 warren. All rights reserved.
//

#import "OverallChapterViewController.h"

@interface OverallChapterViewController ()
@end

@implementation OverallChapterViewController
@synthesize myname, webview, path;

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
    //NSLog(@"name is %@", myname);
    [super viewDidLoad];
    webview.delegate = self;
	// Do any additional setup after loading the view.
    if ([myname isEqualToString:@"Algebraic Fractions & Manipulation"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Algebraic Fractions & Manipulation" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Algebraic Fractions & Manipulation";
    }
    else if ([myname isEqualToString:@"Sets"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Sets" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Sets";
    }
    else if ([myname isEqualToString:@"Similarity and Congruency"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Similarity and Congruency" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Similarity and Congruency";
    }
    else if ([myname isEqualToString:@"Trigonometry"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Trigonometry" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Trigonometry";
    }
    else if ([myname isEqualToString:@"Quadratic Graphs"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Quadratic Graphs" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Quadratic Graphs";
    }
    else if ([myname isEqualToString:@"Solving Quadratic Equations"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Solving Quadratic Equations" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Solving Quadratic Equations";
    }
    else if ([myname isEqualToString:@"Mensuration"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Mensuration" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Mensuration";
    }
    else if ([myname isEqualToString:@"Simultaneous Equations"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Simultaneous Equation" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Simultaneous Equations";
    }
    else if ([myname isEqualToString:@"Pythagoras Theorem"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Pythagoras Theorem" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Pythagoras' Theorem";
    }
    else if ([myname isEqualToString:@"Significant Figures, Indices and Standard Form"])
    {
        path = [[NSBundle mainBundle] pathForResource:@"Significant Figures, Indices and Standard Form" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webview loadRequest:request];
        self.title = @"Significant Figures, Indices and Standard Form";
    }
}

- (void) awakeFromNib
{
   /* NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    NSString *localDocumentsDirectory = [paths objectAtIndex:0];
    NSString *pdfFileName = @"MathNotes2.pdf";
    NSString *localDocumentsDirectoryPdfFilePath = [localDocumentsDirectory
                                                    stringByAppendingPathComponent:pdfFileName];
    NSURL *pdfUrl = [NSURL URLWithString: @"http://www.google.com"];//[NSURL fileURLWithPath:localDocumentsDirectoryPdfFilePath];
    [webview loadRequest:[NSURLRequest requestWithURL:pdfUrl]];*/
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    // NSLog(@"webviewDidStartLoad");
   // [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
   // [self updateButtons];
}

/*
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //S2ChapterViewController *vc = segue.destinationViewController;
    //NSLog(@"Prepare for segue");
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
