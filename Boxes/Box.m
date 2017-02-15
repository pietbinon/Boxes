//
//  Box.m
//  Boxes
//
//  Created by Pierre Binon on 2017-02-15.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "Box.h"



@implementation Box

- (instancetype) initWithHeight: (float) height width: (float) width andLength: (float) length {
    self = [super init];
    
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}


- (float) volume {
    float volume = self.height * self.width * self.length;
    return volume;
}


- (float) fitBox: (Box *) anotherBox {
    float fit = self.volume / anotherBox.volume;
    return fit;
    
//    //Same thing
//    return (float) self.volume / anotherBox.volume;
}

@end
