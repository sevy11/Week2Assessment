//
//  City.h
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface City : NSObject

@property NSString *city;
@property NSString *state;
@property UIImage *picture;
@property NSString *url;

-(instancetype)initWithCityName:(NSString *)city andWithStateName:(NSString *)state andWithCityPic:(UIImage *)picture andWithURL:(NSString *)url;

@end
