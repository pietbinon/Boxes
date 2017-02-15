//
//  Box.h
//  Boxes
//
//  Created by Pierre Binon on 2017-02-15.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

- (instancetype) initWithHeight: (float) height width: (float) width andLength: (float) length;
- (float) volume;

- (float) fitBox: (Box *) anotherBox;

@end
