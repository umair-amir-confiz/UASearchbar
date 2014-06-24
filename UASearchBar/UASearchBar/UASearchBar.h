//
//  UASearchBar.h
//  UASearchBar
//
//  Created by Umair Aamir on 5/21/14.
//  Copyright (c) 2014 Confiz Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UASearchBarDelegate.h"
#import "UITextField+PlaceholderColor.h"

@interface UASearchBar : UIView <UITextFieldDelegate>

@property (nonatomic, assign) id<UASearchBarDelegate> delegate;

@property (nonatomic, strong) NSString *placeHolder;

@property (nonatomic, strong) NSString *text;

-(void)setSearchIcon:(NSString *)icon;
-(void)setShowsCancelButton:(BOOL)show;
-(void)setShowsCancelButton:(BOOL)show animated:(BOOL)animated;
-(void)setCancelButtonTitleColor:(UIColor *)color forState:(UIControlState)state;
-(void)setCancelButtonTintColor:(UIColor *)color;
-(void)setCancelButtonBackgroundColor:(UIColor *)color;
-(void)setAutoCapitalizationMode:(UITextAutocapitalizationType)type;
-(void)setPlaceHolderColor:(UIColor*)color;
-(void)setCancelButtonTitle:(NSString *)title forState:(UIControlState)state;

@end
