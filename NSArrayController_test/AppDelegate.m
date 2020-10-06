//
//  AppDelegate.m
//  NSArrayController_test
//
//  Created by Gregory Casamento on 10/6/20.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property NSMutableArray *array;
@property IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSMutableArray *keys = [NSMutableArray arrayWithObjects: @"1", @"2", @"3", nil];

    self.array = keys;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
