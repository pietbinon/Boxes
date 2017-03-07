//
//  Box.m
//  Boxes
//
//  Created by Pierre Binon on 2017-02-15.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "Box.h"



@implementation Box


- (instancetype) initWithHeight: (CGFloat) height width: (CGFloat) width andLength: (CGFloat) length {
    self = [super init];
    
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}




- (CGFloat) volume {
    CGFloat volume = self.height * self.width * self.length;
    return volume;
}

////Similar to previous method
//- (CGFloat) volume {
//    _volume = self.width * self.length * self.height;
//    return self.volume;
//}




- (CGFloat) fitBox: (Box *) anotherBox {
    CGFloat fit = self.volume / anotherBox.volume;
    return fit;
    
//    //Same thing
//    return (CGfloat) self.volume / anotherBox.volume;
}

@end
