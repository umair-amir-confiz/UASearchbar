//
//  UAViewController.m
//  UASearchBar
//
//  Created by Umair Aamir on 5/21/14.
//  Copyright (c) 2014 Confiz Limited. All rights reserved.
//

#import "UAViewController.h"

@interface UAViewController () {
    UASearchBar *searchBarHeader;
}
@property (strong, nonatomic) UASearchBar *searchHeaderBar;
@end

@implementation UAViewController

@synthesize searchHeaderBar=_searchHeaderBar;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    searchBarHeader = [[UASearchBar alloc] initWithFrame:CGRectMake(0, 50, 320, 44)];
    [self.view addSubview:searchBarHeader];
    
    searchBarHeader.delegate = (id)self;
    
    searchBarHeader.placeHolder = @"search by tags or type";
    [searchBarHeader setSearchIcon:@"ico-magnifier.png"];
}

-(UASearchBar *)searchHeaderBar
{
    if (!_searchHeaderBar)
    {
        _searchHeaderBar = [[UASearchBar alloc] initWithFrame:CGRectMake(0, 20, 320, 43)];
        [_searchHeaderBar setBackgroundColor:[UIColor whiteColor]];
        [_searchHeaderBar setPlaceHolder:@"search something"];
        [_searchHeaderBar setSearchIcon:@"magnifier"];
        [_searchHeaderBar setCancelButtonTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_searchHeaderBar setPlaceHolderColor:[UIColor magentaColor]];
        [_searchHeaderBar setAutoCapitalizationMode:UITextAutocapitalizationTypeNone];
        _searchHeaderBar.delegate = (id)self;
    }
    
    return _searchHeaderBar;
}

#pragma mark - UASearchbar Delegate

- (BOOL)searchBarShouldBeginEditing:(UASearchBar *)searchBar
{
    return YES;
}

-(void)searchBarTextDidBeginEditing:(UASearchBar *)searchBar
{
    [searchBar setShowsCancelButton:YES animated:YES];
}

-(void)searchBar:(UASearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [textView setText:[NSString stringWithFormat:@"New Text: %@", searchBar.text]];
}

- (void)searchBarSearchButtonClicked:(UASearchBar *)searchBar
{
    [searchBar setShowsCancelButton:NO animated:YES];
    [textView setText:[NSString stringWithFormat:@"Search Text: %@", searchBar.text]];
}

- (void)searchBarCancelButtonClicked:(UASearchBar *) searchBar
{
    [searchBar setShowsCancelButton:NO animated:YES];
    [textView setText:@"Cancel Search"];
}


@end
