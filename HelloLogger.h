//
//  HelloLogger.h
//  HelloDemoApp
//
//  Created by Developer PopBox on 12/2/19.
//  Copyright © 2019 Developer PopBox. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HelloLogger : NSObject
- (void)helloWithText:(NSString *)text;
    
-(void)openRack:(NSString *)token cabinetId:(NSString *)cabinetID email:(NSString *)emailUser name:(NSString *)nameUser phone:(NSString *)phoneUser completionHandler:(void (^)(NSDictionary *array))completionHandler;
-(void) openRacks:(NSString *)token cabinetId:(NSString *)cabinetID email:(NSString *)emailUser name:(NSString *)nameUser phone:(NSString *)phoneUser completionHandler:(void (^)(NSDictionary *array))completionHandler;
@end

NS_ASSUME_NONNULL_END
