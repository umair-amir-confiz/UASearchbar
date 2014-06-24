UASearchbar
===========

It is customizable searchbar for iOS. The default search bar can not be customized much. It is easy to use, have same delegate methods as the default UISearchbar has.

for example:

delegate methods: 

@optional

- (BOOL)searchBarShouldBeginEditing:(UASearchBar *)searchBar;                      // return NO to not become first responder
- (void)searchBarTextDidBeginEditing:(UASearchBar *)searchBar;                     // called when text starts editing
- (BOOL)searchBarShouldEndEditing:(UASearchBar *)searchBar;                        // return NO to not resign first responder
- (void)searchBarTextDidEndEditing:(UASearchBar *)searchBar;                       // called when text ends editing
- (void)searchBar:(UASearchBar *)searchBar textDidChange:(NSString *)searchText;   // called when text changes (including clear)
- (BOOL)searchBar:(UASearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text; // called before text changes

- (void)searchBarSearchButtonClicked:(UASearchBar *)searchBar;                     // called when keyboard search button pressed
- (void)searchBarBookmarkButtonClicked:(UASearchBar *)searchBar;                   // called when bookmark button pressed
- (void)searchBarCancelButtonClicked:(UASearchBar *) searchBar;                    // called when cancel button pressed

Customization:

// user can set his own search icon
-(void)setSearchIcon:(NSString *)icon;
// show cancel button animated
-(void)setShowsCancelButton:(BOOL)show;
-(void)setShowsCancelButton:(BOOL)show animated:(BOOL)animated;
// chance cancel button title color
-(void)setCancelButtonTitleColor:(UIColor *)color forState:(UIControlState)state;
// change cancel button color
-(void)setCancelButtonTintColor:(UIColor *)color;
-(void)setCancelButtonBackgroundColor:(UIColor *)color;
// change captilization mode
-(void)setAutoCapitalizationMode:(UITextAutocapitalizationType)type;
// can change placeholder color
-(void)setPlaceHolderColor:(UIColor*)color;
// change cancel button title
-(void)setCancelButtonTitle:(NSString *)title forState:(UIControlState)state;

![Alt text](https://github.com/umair-amir-confiz/UASearchbar/blob/master/Screens/cancelsearch.png?raw=true "Cancel Search")
![Alt text](https://github.com/umair-amir-confiz/UASearchbar/blob/master/Screens/searching.png?raw=true "Searching")
![Alt text](https://github.com/umair-amir-confiz/UASearchbar/blob/master/Screens/searchstart.png?raw=true "start search")
