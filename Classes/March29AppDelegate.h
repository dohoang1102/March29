//
//  March29AppDelegate.h
//  March29
//
//  Created by Georges Labrèche on 3/27/12.
//  Copyright 2012 New York Magazine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class View;
@class March29ViewController;

@interface March29AppDelegate : NSObject <UIApplicationDelegate> {
	View *view;
    UIWindow *window;
    March29ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet View *view;
@property (nonatomic, retain) IBOutlet March29ViewController *viewController;

@end

