//
//  main.m
//  Test4
//
//  Created by Tamar on 10/16/15.
//  Copyright © 2015 Tamar Kandathi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filePath = @"/Users/tamar/Backup/TurnToTech/test4BinarySearch/assorted-breakfast.txt";
        NSString *fileContent = [[NSString alloc]initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        NSArray *array = [fileContent componentsSeparatedByString:@"\n"];
        
        
        NSString *phrase = @"Whoa! Mr. Trout!\"";
        
        int start = 0;
        int end = (int)[array count] - 1;
        int middle = 0;
        BOOL exists = false;
        int counter = 0;
        
        
        while (start <= end) {
            middle = (start + end) / 2;
            if ([phrase caseInsensitiveCompare: array [middle]] == NSOrderedSame) {
                NSLog(@"\nWhoa! Mr. Trout!\" is at index %i",middle);
                exists = true;
                break;
            } else if ([phrase caseInsensitiveCompare: array[middle]] == -1) {
                end = middle - 1;
            } else {
                start = middle + 1;
            }
            counter++;
        }
        
        if (!exists) {
            NSLog(@"\nWhoa! Mr. Trout!\" was not found");
            
        }
        NSLog(@"Number of loops = %d", counter);
        
        
        
        return 0;
    }
}
