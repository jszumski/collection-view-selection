//
//  JSBSelection.m
//  CollectionViewSelection
//
//  Created by John Szumski on 2/16/13.
//
//

#import "JSBSelectionCell.h"

@implementation JSBSelectionCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
	
    if (self) {
		self.contentView.backgroundColor = [UIColor greenColor];
    }
	
    return self;
}

- (void)setSelected:(BOOL)selected {
	[super setSelected:selected];
	
	if (selected) {
		self.contentView.backgroundColor = [UIColor purpleColor];
		
	} else {
		self.contentView.backgroundColor = [UIColor greenColor];
	}
}

@end