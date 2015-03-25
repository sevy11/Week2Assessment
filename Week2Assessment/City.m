//
//  City.m
//  Week2Assessment
//
//  Created by Michael Sevy on 3/20/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithCityName:(NSString *)city andWithStateName:(NSString *)state andWithCityPic:(UIImage *)picture andWithURL:(NSString *)url   {
    self = [super   init];
    if (self) {
        self.city = city;
        self.state = state;
        self.picture = picture;
        self.url = url;
    }
    return self;


}


@end
