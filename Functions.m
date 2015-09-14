//
//  Functions.m
//  PythagCalc
//
//  Created by James Enciso on 8/24/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import "Functions.h"


@implementation Functions


@synthesize window;
@synthesize a, b, c;
@synthesize solve, clear, sideSelector;

- (IBAction)solve:(id)sender{
	
	//set all field colors back to black (if were changed to red by invalid input)
	[a setTextColor:[NSColor blackColor]];
	[b setTextColor:[NSColor blackColor]];
	[c setTextColor:[NSColor blackColor]];

	
	
	//check condition of segmented controller
	//determines which formula to use based on which variable is needed to solve for
	switch (sideSelector.selectedSegment) {
		case 0:
			NSLog(@"side A selected");
			//call function
			[self solveForASide];

			break;
		case 1:
			NSLog(@"side B selected");
			//call function
			[self solveForBSide];

			break;
		case 2:
			NSLog(@"side C selected");
			//call function
			[self solveForCSide];

			break;
		default:
			break;
	}	
	
}


//-------Functions below are called from above-----------
-(void)solveForASide{
	NSLog(@"Solving for A ");
	
	//checks if values are 0. If so, declare invalid input
	if ([b floatValue] == 0 || [c floatValue] == 0) {
		[a setTextColor:[NSColor redColor]];
		[a setStringValue:@"invalid input"];
	}
	//if not 0 for inputs, proceed
	else {
				
		float av, bv, cv;
		
		bv = [b floatValue];
		cv = [c floatValue];
		
		av = (sqrt((pow(cv, 2))-(pow(bv, 2))));
		

		//trims output to 3 decimal places
		[a setStringValue:[NSString stringWithFormat:@"%.3f", av]];
	}
	
	
}

-(void)solveForBSide{
	NSLog(@"Solving for B ");
	
	if ([a floatValue] == 0 || [c floatValue] == 0) {
		[b setTextColor:[NSColor redColor]];
		[b setStringValue:@"invalid input"];
	}
	else {
				
		float av, bv, cv;
		
		av = [a floatValue];
		cv = [c floatValue];
		
		bv = (sqrt((pow(cv, 2))-(pow(av, 2))));
		
		
		[b setStringValue:[NSString stringWithFormat:@"%.3f", bv]];		
	}
	
}

-(void)solveForCSide{
	NSLog(@"Solving for C ");
	
	if ([a floatValue] == 0 || [b floatValue] == 0) {
		[c setTextColor:[NSColor redColor]];
		[c setStringValue:@"invalid input"];
	}
	else {
		
		float av = [a floatValue];
		float bv = [b floatValue];
		
		float cv = sqrt(pow(av, 2) + pow(bv, 2));
		
		[c setStringValue:[NSString stringWithFormat:@"%.3f", cv]];
	}

}

-(IBAction)clear:(id)sender{

	//clears out the input fields (when clear button is pressed)
	[a setStringValue:@""];
	[b setStringValue:@""];
	[c setStringValue:@""];

}



@end
