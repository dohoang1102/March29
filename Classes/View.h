//
//  View.h
//  March29
//
//  Created by Georges Labrèche on 3/27/12.
//  Copyright 2012 New York Magazine. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface View : UIView {

}

// Display a message on the top of the screen
- (void) displayMessage:(NSString *) message;

// Display content at given URL
- (void) displayContent:(NSURL *) url;



@end
