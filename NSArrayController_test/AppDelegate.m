//
//  AppDelegate.m
//  NSArrayController_test
//
//  Created by Gregory Casamento on 10/6/20.
//

#import "AppDelegate.h"

@interface Node : NSObject

@property (strong) NSString *value;
@property BOOL editable;

@end

@implementation Node
@end

@interface AppDelegate ()

@property NSMutableArray *array;
@property IBOutlet NSWindow *window;
@property IBOutlet NSArrayController *arrayController;

@end

@implementation AppDelegate
+ (NSMutableArray *) buildNodes
{
    NSMutableArray *nodes = [NSMutableArray array];
    Node *node1 = [[Node alloc] init];
    Node *node2 = [[Node alloc] init];
    Node *node3 = [[Node alloc] init];
    
    node1.value = @"1";
    node2.value = @"2";
    node3.value = @"3";
    node1.editable = YES;
    node2.editable = YES;
    node3.editable = NO;
    
    [nodes addObject: node1];
    [nodes addObject: node2];
    [nodes addObject: node3];
    
    return nodes;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    // NSMutableArray *keys = [NSMutableArray arrayWithObjects: @"1", @"2", @"3", nil];
    self.array = [AppDelegate buildNodes];
    
    // Iterate over the arranged objects...
    NSString *obj = nil;
    NSEnumerator *en = [[self.arrayController arrangedObjects] objectEnumerator];
    while ((obj = [en nextObject]) != nil)
    {
        NSLog(@"%@", obj);
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL) editable
{
    return YES;
}

@end
