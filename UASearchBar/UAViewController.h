//
//  UAViewController.h
//  UASearchBar
//
//  Created by Umair Aamir on 5/21/14.
//  Copyright (c) 2014 Confiz Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UASearchBar.h"

@interface UAViewController : UIViewController <UASearchBarDelegate> {
    
    __weak IBOutlet UITextView *textView;
}

@end
