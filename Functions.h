//
//  Functions.h
//  PythagCalc
//
//  Created by James Enciso on 8/24/14.
//  This is the updated version for PythagCalc
//

#import <Cocoa/Cocoa.h>


@interface Functions : NSObject {

	NSWindow *window;
	NSTextField *a;
	NSTextField *b;
	NSTextField *c;
	NSButton *solve;
	NSButton *clear;
	
	NSSegmentedControl *sideSelector;
	
	
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *a;
@property (assign) IBOutlet NSTextField *b;
@property (assign) IBOutlet NSTextField *c;
@property (assign) IBOutlet NSButton *solve;
@property (assign) IBOutlet NSButton *clear;
@property (assign) IBOutlet NSSegmentedControl *sideSelector;




- (IBAction)solve:(id)sender;
-(IBAction)clear:(id)sender;
-(void)solveForASide;
-(void)solveForBSide;
-(void)solveForCSide;


@end
