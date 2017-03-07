//
//  main.m
//  Boxes
//
//  Created by Pierre Binon on 2017-02-15.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc] initWithHeight: 3 width: 4 andLength: 5];
        Box *box2 = [[Box alloc] initWithHeight: 2 width: 3 andLength: 4];
        
        CGFloat volume1 = [box1 volume];
        CGFloat volume2 = [box2 volume];
        
        NSLog (@"The volume of the box 1 is: %.2f", volume1);
        NSLog (@"The volume of the box 2 is: %.2f", volume2);
        
        CGFloat factor = [box1 fitBox: box2];
        
        if (factor > 1)
            NSLog (@"Box 2 will fit %.2f times in box 1", factor);
        else if (factor < 1)
            NSLog (@"Box 1 will fit %.2f times in box 2", 1 / factor);
        else
            NSLog (@"Both boxes have the same size and will fit %.2f time in each other", factor);
            
    }
    return 0;
}
