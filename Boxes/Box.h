//
//  Box.h
//  Boxes
//
//  Created by Pierre Binon on 2017-02-15.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Box : NSObject

@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat length;
//@property (nonatomic) CGFloat volume;

- (instancetype) initWithHeight: (CGFloat) height width: (CGFloat) width andLength: (CGFloat) length;
- (CGFloat) volume;

- (CGFloat) fitBox: (Box *) anotherBox;

@end
