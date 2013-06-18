//
//  PRPDirectionsEditorViewController.h
//  StoryboardRecipes
//
//  Created by Goodell, Jason on 6/17/13.
//
//

#import <UIKit/UIKit.h>
#import "PRPRecipe.h"

@interface PRPDirectionsEditorViewController : UIViewController <UITextViewDelegate>

@property(nonatomic, strong) PRPRecipe *recipe;
@property(nonatomic, strong) IBOutlet UITextView *textView;
@end
