//
//  VTMFileTransferUtils.m
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/15/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

#import "VTMFileTransferUtils.h"

@implementation VTMFileTransferUtils

+ (BOOL)thisFunctionIsToCopyCode:(NSString *)fileName
                      fromServer:(NSString *)serverHostName
            putItOnAnotherServer:(NSString *)hostname
       usingFileTransferProtocol:(NSString *)protocol andUnusedParam:(NSString *)unusedParam {
  NSLog(@"This function would copy '%@' from '%@' to '%@' using '%@'", fileName, serverHostName, hostname, protocol);
  return true;
}

+ (BOOL)testBadCopyFunction {
  BOOL result = [VTMFileTransferUtils thisFunctionIsToCopyCode:@"/usr/local/bin/ruby" fromServer:@"127.0.0.1" putItOnAnotherServer:@"google.com/public" usingFileTransferProtocol:@"FTP" andUnusedParam:@"UNUSED"];
  return result;
}

@end
