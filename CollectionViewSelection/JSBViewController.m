//
//  JSBViewController.m
//  CollectionViewSelection
//
//  Created by John Szumski on 2/16/13.
//

#import "JSBViewController.h"
#import "JSBSelectionCell.h"

@implementation JSBViewController

- (id)init {
	UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
	layout.itemSize = CGSizeMake(120, 120);
	
	return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];

	self.collectionView.allowsMultipleSelection = NO;
	self.collectionView.allowsSelection = NO;
	
	[self.collectionView registerClass:[JSBSelectionCell class] forCellWithReuseIdentifier:@"selectionCell"];
}


#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 20;
}


#pragma mark - UICollectionViewDelegate

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	return [collectionView dequeueReusableCellWithReuseIdentifier:@"selectionCell" forIndexPath:indexPath];
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return YES;
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	// empty implemention is necessary to get the menu to display
}

@end