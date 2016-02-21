//
//  GJGCInformationCellConstans.m
//  ZYChat
//
//  Created by ZYVincent QQ:1003081775 on 14-11-6.
//  Copyright (c) 2014年 ZYV. All rights reserved.
//

#import "GJGCInformationCellConstans.h"

@implementation GJGCInformationCellConstans

+ (NSDictionary *)chatCellIdentifierDict
{
    return @{
             
             @"GJGCInformationTextCell" : @"GJGCInformationTextCellIdentifier",
             
             @"GJGCInformationTextAndIconCell" : @"GJGCInformationTextAndIconCellIdentifier",
             
             @"GJGCInformationGroupPhotoBoxCell" : @"GJGCInformationGroupPhotoBoxCellIdentifier",
             
             @"GJGCInformationGroupShowCell" : @"GJGCInformationGroupShowCellIdentifier",
             
             @"GJGCInformationLevelCell" : @"GJGCInformationLevelCellIdentifier",

             @"GJGCInformationMemeberShowCell" : @"GJGCInformationMemeberShowCellIdentifier",

             @"GJGCInformationPersonPhotoBoxCell" : @"GJGCInformationPersonPhotoBoxCellIdentifier",

             @"GJGCInformationFeedListCell" : @"GJGCInformationFeedListCellIdentifier",

             @"HAPersonProfileHeadInfoCell" : @"HAPersonProfileHeadInfoCellIdentifier",

             };
    
}

+ (NSDictionary *)chatCellNotiTypeDict
{
    return @{
             
             @(GJGCInformationContentTypeBaseTextContent) : @"GJGCInformationTextCell",
             
             @(GJGCInformationContentTypeBaseTextAndIcon) : @"GJGCInformationTextAndIconCell",
             
             @(GJGCInformationContentTypeGroupPhotoBox) : @"GJGCInformationGroupPhotoBoxCell",
             
             @(GJGCInformationContentTypeGroupShow) : @"GJGCInformationGroupShowCell",
             
             @(GJGCInformationContentTypeLevelType) : @"GJGCInformationLevelCell",
             
             @(GJGCInformationContentTypeMemberShow) : @"GJGCInformationMemeberShowCell",
             
             @(GJGCInformationContentTypePersonPhotoBox) : @"GJGCInformationPersonPhotoBoxCell",
             
             @(GJGCInformationContentTypeFeedList) : @"GJGCInformationFeedListCell",
             
             @(GJGCInformationContentTypeGroupHeadInfo) : @"HAPersonProfileHeadInfoCell",

             };
}

+ (NSString *)identifierForCellClass:(NSString *)className
{
    return  [[GJGCInformationCellConstans chatCellIdentifierDict]objectForKey:className];
}

+ (Class)classForContentType:(GJGCInformationContentType)contentType
{
    NSString *className = [[GJGCInformationCellConstans chatCellNotiTypeDict]objectForKey:@(contentType)];
    
    return NSClassFromString(className);
}

+ (NSString *)identifierForContentType:(GJGCInformationContentType)contentType
{
    NSString *className = [[GJGCInformationCellConstans chatCellNotiTypeDict]objectForKey:@(contentType)];
    
    return [GJGCInformationCellConstans identifierForCellClass:className];
}

@end
