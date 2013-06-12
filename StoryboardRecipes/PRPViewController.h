//
//  PRPViewController.h
//  Recipe
//
//  Created by Goodell, Jason on 6/5/13.
//

#import <UIKit/UIKit.h>
#import "PRPRecipe.h"

@interface PRPViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel *recipeTitle;
@property(nonatomic, strong) IBOutlet UITextView *directionView;
@property(nonatomic, strong) IBOutlet UILabel *prepTime;
@property(nonatomic, strong) NSNumberFormatter *formatter;
@property(nonatomic, strong) IBOutlet UIImageView *imageView;
@property(nonatomic, strong) PRPRecipe *recipe;

- (IBAction)dismiss:(id)sender;

@end
