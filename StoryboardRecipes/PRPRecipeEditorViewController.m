//
//  PRPRecipeEditorViewController.m
//  StoryboardRecipes
//
//  Created by Goodell, Jason on 6/14/13.
//
//

#import "PRPRecipeEditorViewController.h"
#import "PRPRecipesListViewController.h"

@interface PRPRecipeEditorViewController ()

@end

@implementation PRPRecipeEditorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)changePreparationTime:(UIStepper *)sender {
    NSInteger value = (NSInteger)[sender value];
    self.recipe.preparationTime = [NSNumber numberWithInteger:value];
    self.prepTimeLabel.text = [self.formatter stringFromNumber:self.recipe.preparationTime];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Prepare for Segue");
    if([@"editDirections" isEqualToString:segue.identifier]) {
        [[segue destinationViewController] setRecipe:self.recipe];
    }
    if([@"choosePhoto" isEqualToString:segue.identifier]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

#pragma mark - Text Field Delegate Methods
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"Did Edit Text Field");
    self.recipe.title = textField.text;
}

#pragma - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.formatter = [[NSNumberFormatter alloc]init];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
    NSLog(@" %@", self.recipe.directions);
    self.titleField.text = self.recipe.title;
    self.directionsText.text = self.recipe.directions;
    self.prepTimeLabel.text = [self.formatter
                               stringFromNumber:self.recipe.preparationTime];
    self.prepTimeStepper.value = [self.recipe.preparationTime doubleValue];
    if(nil != self.recipe.image) {
        self.recipeImage.image = self.recipe.image;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
    [self.recipeListVC finishedEditingRecipe:self.recipe];
}

#pragma mark - Image Picker Delegate Methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    self.recipe.image = [info valueForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end
