/**
 @file main.m
 @author Prof. Adams
 @date 2013 01 18
 */

#import <Foundation/Foundation.h>

/**
 @brief Entry point for the program - sets up objects and puts everything in motion
 @returns EXIT_SUCCESS if all went well
 */
int main(void)
{
    
    @autoreleasepool {
        
        NSMutableArray* words = nil ;
        
        
        NSLog(@" array uninitialized  %@  ", words) ;
        
        words = [[NSMutableArray alloc] init];
        
        NSLog(@" initialized array  %@  ", words) ;
        
        [words addObject : (@", ")] ;
        
        NSLog(@" adding ,   %@  ", words) ;
        
        [words addObject :( @"hello")] ;
        
        NSLog(@" adding hello  %@  ", words) ;
        
        
        [words addObject : (@"world")] ;
        
        NSLog(@" adding world  %@  ", words);
        
        [words sortUsingSelector: @selector(localizedCaseInsensitiveCompare:)];
        
    
        NSLog(@" sorting ,   %@  " , words) ;
    
        
        
        NSMutableString* word = nil;
        
        NSLog(@"Word unintialized is... %@" , word) ;
        
        word = [[ NSMutableString alloc ] initWithString:[words objectAtIndex:0]];
 
        NSLog(@"initialized is... %@ " , word) ;
        
        [ word appendString:[words objectAtIndex:2]];
        
        NSLog(@"added second object from the array...  %@ " , word) ;
        
        [ word insertString:[words objectAtIndex:1] atIndex:0];
        
         NSLog(@"added a third object from the array...  %@ " , word) ;
        
    }
    return EXIT_SUCCESS;
}