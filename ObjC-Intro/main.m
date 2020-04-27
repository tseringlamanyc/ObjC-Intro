//
//  main.m
//  ObjC-Intro
//
//  Created by Tsering Lama on 4/27/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // “@autoreleasepool means “I’m going to be allocating lots of memory; when I’m finished, please free it up.”
            
            int i = 19; // ObjC doesnt support type inference , variable by default
            const int j = 11; // constant
            
            // * is a pointer , NSString is a class (object), str isn’t an NSString, it’s just a pointer to where an NSString exists in RAM.
            NSString *str = @"My name is Tsering";
            
            NSArray *arr = @[@"Hello", @"World"];
            
            // NSLog is print
            
            // MARK: Conditionals
            // if the content of your conditional statement is just one statement, you can omit the braces.
            if (i == 10) {
                NSLog(@"Hello world");
            } else {
                NSLog(@"Goodbye");
            }
            
            
            // MARK: Switch cases
            /*
             always want to write break; at the end of case blocks to avoid fallthrough
             doesnt have to be exhaustive
             you can’t use the first line of a case block to declare a new variable unless you wrap the case block in braces
             
             switch (i) {
             case 10:
             {
             int foo = 1;
             NSLog(@"It's something else.");
             }
             }
             
             switch (i) {
             case 10:
             NSLog(@"It's something else.");
             int foo = 1;
             }
             
             */
            switch (i) {
                case 19:
                    NSLog(@"Its 19");
                    break;
                case 40:
                    NSLog(@"its 40");
                    break;
                default:
                    NSLog(@"Its something else");
            }
            
            // MARK: Loops
            
            // fast enumurations (most common loop)
            NSArray *namesArr = @[@"Tsering", @"Faker"];
            
            for (NSString *name in namesArr) {
                // The %@ part is called a format specifier, and means “insert the contents of an object here” – which in our case is the name variable.
                NSLog(@"Hello, %@", name);
            }
            
            // C Style loops
            for (int i = 1; i <= 5; ++i) {
                // %d is another format specifier, and means “int”. Now that I’ve used three in one call, you can see more clearly how they are replaced in the string: the first %d matches the first i, the second %d matches the second i, and the third %d matches the i * i
                NSLog(@"%d * %d is %d", i, i, i * i);
            }
            
            // MARK: Nil coalescing
            // ternary operator (?:)
            NSString *nilName = nil;
            NSLog(@"Hello %@", nilName ?: @"Faker");
            
            
            // MARK: Pointers
            /*
             Pointers allow objects to be passed around efficiently
             if you have three pointers that point to the same object in memory, and you change that object, that change happens to all the pointers
             */
            
            // MARK: Constant pointers
            /* I want to ensure the string doesn’t change, but I don’t mind if the pointer does
             NSString is an immutable class, which means its value cannot be changed once it has been created. When you think you’re changing its value, what’s actually happening is that the old string is destroyed, a new one is created, and the pointer is updated to reflect the change
             */
            NSString * const first = @"Hello";
            NSLog(@"%p", first);
            
            // MARK: Integers
            // NSInteger CGFloat - most use cases
            
            // MARK: Booleans
            // BOOL vs bool ..... (yes no) vs (true, false)
            
            // MARK: Format specifiers
            /*
             %@ to mean contents of object
             %d to mean int
             %p to print the pointer of an object
             %f to print floating-point numbers
             %ld to print long integers
             */
            NSLog(@"%.2f", M_PI);  // two decimal places
            NSInteger num = 10;
            NSLog(@"%ld", (long)num);
        }
    
    return 0;
}
