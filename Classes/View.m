//
//  View.m
//  March29
//
//  Created by Georges Labrèche on 3/27/12.
//  Copyright 2012 New York Magazine. All rights reserved.
//

#import "View.h"


@implementation View


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.'
		// Just set the background to yello to be sure we are displaying this view
		NSLog(@"Setting background colour.");
		self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
	
	// Display hello in simplified Manadarin: Ni Hao!
    NSString *helloMessage = @"你好!";
	[self displayMessage: helloMessage];
	
	
	// Dispay IBM price.
	
	// Get IBM price value from a URL
	NSURL *url = [[NSURL alloc] initWithString: @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];

	// Display
	[self displayContent: url];
	 
}

// Display message
- (void) displayMessage:(NSString *)message {
	// Font that will be used.
    UIFont *font = [UIFont systemFontOfSize: 32.0];
	
	CGPoint point = CGPointMake(0.0, 0.0);
    [message drawAtPoint: point withFont: font];
	
}
	

// Display content at given URL
- (void) displayContent:(NSURL *)url {
	
	// Font that will be used
	UIFont *ibmPricefont = [UIFont systemFontOfSize: 15.0];
	
	// Get the view's middle Y coordinate value
	CGFloat middlePointYCoordinateValue = self.bounds.size.height / 2;
	CGPoint ibmPricePoint = CGPointMake(0.0, middlePointYCoordinateValue);
	
	NSError *error;
	NSString *ibmPrice = [[NSString alloc]
						  initWithContentsOfURL: url
						  encoding: NSUTF8StringEncoding
						  error: &error
						  ];
	
	if (ibmPrice == nil) {
		ibmPrice = [error localizedDescription];
	}
	
	// Display IBM price value.
	[ibmPrice drawAtPoint: ibmPricePoint withFont: ibmPricefont];
}

- (void)dealloc {
    [super dealloc];
}


@end
