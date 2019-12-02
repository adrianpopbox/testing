//
//  HelloLogger.m
//  HelloDemoApp
//
//  Created by Developer PopBox on 12/2/19.
//  Copyright © 2019 Developer PopBox. All rights reserved.
//

#import "HelloLogger.h"

@implementation HelloLogger
    - (void)helloWithText:(NSString *)text {
        NSLog(@"Hello, i'm Adrian %@", text);
    }

-(void) openRack:(NSString *)token cabinetId:(NSString *)cabinetID email:(NSString *)emailUser name:(NSString *)nameUser phone:(NSString *)phoneUser completionHandler:(void (^)(NSDictionary *array))completionHandler{
    
    // Create the URLSession on the default configuration
    NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultSessionConfiguration];

    // Setup the request with URL
    NSURL *url = [NSURL URLWithString:@"http://35.240.225.253/product-service/product/findByParams"];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];

    // Convert POST string parameters to data using UTF8 Encoding
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@""]];
    [request setHTTPMethod:@"POST"];
    NSString *uToken = @"123123123123123123";
    NSString *uCabinetId = @"002";
    NSString *uEmail = @"4UBKVW85TQCE9LHKXVHJKB75KDUELJ9VTP5";
    
    NSString *noteDataString = [NSString stringWithFormat:@"barcode=%@&region_code=%@lockerid=%@", uToken, uCabinetId, uEmail];
    NSData *postData = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];

    // Convert POST string parameters to data using UTF8 Encoding
    [urlRequest setHTTPMethod:@"POST"];
    [urlRequest setHTTPBody:postData];
    // Create dataTask
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithRequest:urlRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        // Handle your response here
//        NSLog(@"%@", response);
//        NSLog(@"%@", data);
//        NSLog(@"======================");
//        NSLog(@"%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
//
//        NSLog(@"%@", [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        completionHandler([NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil]);

    }];

    // Fire the request
    [dataTask resume];
}




@end
