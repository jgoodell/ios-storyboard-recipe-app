//
//  PRPRecipesListDataSource.h
//  Recipe
//
//  Created by Goodell, Jason on 6/7/13.
//
/*  For abstracting out the PRPRRecipesListViewController's
    interaction with the list of recipes.
 
    Defines three instance methods; recipeCount, recipeAtIndex:index
    & deleteRecipeAtIndex:index.
 
    NOTE: Had to change the forward declaration '@class' PRPRecipe to '#import "PRPRecipe.h"'.
 */

#import <Foundation/Foundation.h>
#import "PRPRecipe.h"

//@class PRPRecipe;
@protocol PRPRecipesListDataSource <NSObject>
- (NSInteger)recipeCount;
- (PRPRecipe *)recipeAtIndex:(NSInteger)index;
- (void)deleteRecipeAtIndex:(NSInteger)index;
@end
