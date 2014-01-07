//
//  main.m
//  IosRestClient
//
//  Created by Deva Palanisamy on 07/01/14.
//  Copyright (c) 2014 Aurum. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        __block NSDictionary *dict;
        __block NSDictionary *parsedObject;
        
        NSString *urlAsString = @"copy and paste url string [before using this test url using firefox restclinet";
        NSURL *url = [[NSURL alloc] initWithString:urlAsString];
        
        [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                   NSLog(@"Errrrrrrrooooorrrr");
            if (error) {
                NSLog(@"Errrrrrrrooooorrrr");
            }
            NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
            NSLog(@"Dictionary: %@", [parsedObject description]);
            dict = parsedObject;
            }];
        
        NSURLResponse *respone = [[NSURLResponse alloc]init];
        NSError *error ;
            NSData *data1 = [NSURLConnection sendSynchronousRequest:[[NSURLRequest alloc] initWithURL:url] returningResponse:&respone error:&error];
        
        parsedObject = [NSJSONSerialization JSONObjectWithData:data1 options:0 error:&error];
        NSLog(@"Dictionary: %@", [parsedObject description]);
        
        
        
    }
    return 0;
}


