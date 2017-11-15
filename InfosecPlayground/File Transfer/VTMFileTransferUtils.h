//
//  VTMFileTransferUtils.h
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/15/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VTMFileTransferUtils : NSObject

/**
 This function is used for testing a linter's ability to detect terrible Objc prose.
 @param fileName An NSString represening a file name to copy from the remote server
 @param serverHostName An NSString representing the hostname of the server
 @param protocol An NSString representing the protocol that should be used to transfer the file
 @return A BOOL value representing the success of the method
 */
+ (BOOL)thisFunctionIsToCopyCode:(NSString *)fileName fromServer:(NSString *)serverHostName putItOnAnotherServer:(NSString *)hostname usingFileTransferProtocol:(NSString *)protocol andUnusedParam:(NSString *)unusedParam;
+ (BOOL)testBadCopyFunction;
@end
