//
//  PRPRecipe.h
//  Recipe
//
//  Created by Goodell, Jason on 6/5/13.
//

#import <Foundation/Foundation.h>

@interface PRPRecipe : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *directions;
@property(nonatomic, strong) NSNumber *preparationTime;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) UIImage *imageThumbnail;
@property(nonatomic, copy) NSArray *animationImages;
@property(nonatomic) NSTimeInterval animationDuration;
@property(nonatomic) NSInteger animationRepeatCount;

@end
