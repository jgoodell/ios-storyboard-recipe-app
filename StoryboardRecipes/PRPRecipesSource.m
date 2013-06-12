//
//  PRPRecipesSource.m
//  Recipe
//
//  Created by Goodell, Jason on 6/7/13.
//

#import "PRPRecipesSource.h"
#import "PRPRecipe.h"

@interface PRPRecipesSource()
@property(nonatomic, strong) NSMutableArray *recipes;
@end

@implementation PRPRecipesSource

- (NSArray *) recipes {
    if(!_recipes) {
        NSMutableArray *localRecipes = [NSMutableArray array];
        PRPRecipe *recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"0 - Put some stuff in, and other stuff, then stir";
        recipe.title = @"0 - One Fine Food";
        recipe.preparationTime = @60;
        recipe.image = [UIImage imageNamed:@"cookies.jpg"];
        recipe.imageThumbnail = [UIImage imageNamed:@"cookies_tn.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"1 - Put some stuff in, and other stuff, then stir";
        recipe.title = @"1 - One Fine Food";
        recipe.preparationTime = @60;
        recipe.image = [UIImage imageNamed:@"cookies1.jpg"];
        recipe.imageThumbnail = [UIImage imageNamed:@"cookies_tn1.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"2 - Put some stuff in, and other stuff, then stir";
        recipe.title = @"2 - One Fine Food";
        recipe.preparationTime = @60;
        recipe.image = [UIImage imageNamed:@"cookies2.jpg"];
        recipe.imageThumbnail = [UIImage imageNamed:@"cookies_tn2.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"2 - Put some stuff in, and other stuff, then stir";
        recipe.title = @"3 - One Fine Food";
        recipe.preparationTime = @60;
        recipe.image = [UIImage imageNamed:@"cookies3.jpg"];
        recipe.imageThumbnail = [UIImage imageNamed:@"cookies_tn3.jpg"];
        [localRecipes addObject:recipe];
        self.recipes = localRecipes;
    }
    return _recipes;
}

#pragma mark Recipe List Data Source Methods
- (NSInteger)recipeCount {
    return [self.recipes count];
}

- (PRPRecipe *)recipeAtIndex:(NSInteger)index {
    return [self.recipes objectAtIndex:index];
}

- (void)deleteRecipeAtIndex:(NSInteger)index {
    [self.recipes removeObjectAtIndex:index];
}

@end
