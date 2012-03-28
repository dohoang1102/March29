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
	// Drawing code
    UIFont *font = [UIFont systemFontOfSize: 32.0];
    NSString *string = @"It works!";
    CGPoint point = CGPointMake(0.0, 0.0);
    [string drawAtPoint: point withFont: font];
}


- (void)dealloc {
    [super dealloc];
}


@end
