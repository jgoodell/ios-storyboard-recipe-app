//
//  PRPRecipe.m
//  Recipe
//
//  Created by Goodell, Jason on 6/5/13.
//

#import "PRPRecipe.h"

@implementation PRPRecipe

- (id)init {
    self = [super init];
    if (self) {
        self.title = @"New Recipe";
        self.directions = @"Start Here";
    }
    return self;
}

@end
