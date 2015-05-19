//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Donald Steinert on 5/19/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <UIKit/UIKit.h>

// helper function to get a path to the saved to-do list
NSString *BNRDocPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end

