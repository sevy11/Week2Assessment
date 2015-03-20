//
//  CityDetailViewController.h
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@protocol CityViewDelegate <NSObject>

-(void)bringCityBack;

@end
@interface CityDetailViewController : UIViewController


@property (nonatomic, assign) id<CityViewDelegate> delegate;

@end


//#import <UIKit/UIKit.h>
////these are our custom cells delegates
//@protocol FoodTableViewCellDelegate <NSObject>
//
//@optional
////custom helper method for didTapButton
//-(void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button;
//
//@end
//
//@interface FoodTableViewCell : UITableViewCell
////setting the custom delegate
//@property (nonatomic, assign) id <FoodTableViewCellDelegate> delegate;
//
//
//@end