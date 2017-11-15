//
//  Contest.swift
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/14/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import UIKit

protocol Contestable {
  var title: String {get set}
  var subtitle: String {get set}
  var instructions: String {get set}
  var options: [ContestOption]? { get }
}

struct Contest: Contestable {
  var title: String
  var subtitle: String
  var instructions: String
  var options: [ContestOption]?

  /// Default initializer for `Contest`. Automatically initializes any potential `ContestOption`s.
  ///
  /// - Parameters:
  ///   - contestTitle: A String representing the title of the `Contest`
  ///   - contestSubtitle: A String representing the subtitle of the `Contest`
  ///   - contestInstructions: A String representing the marking instructions for the `Contest`
  init(contestTitle: String, contestSubtitle: String, contestInstructions: String)
  {
    title = contestTitle
    subtitle = contestSubtitle
    instructions = contestInstructions
    options = optionsForContest()
    // Call the bad function, but don't do anything with it's return value. Avoid this grossness!
    _ = badOptionsForContest()
  }

  /// Provides the selectable options for a this contest
  ///
  /// - Returns: An immutable array containing the `ContestOption` objects for this contest.
  func optionsForContest() -> [ContestOption]
  {
    // Create options for this contest
    // Create Ned for testing
    let ned = ContestOption(title: "Eddard Stark",
                            subtitle: "Overall good guy with a track record of nobility.")
    // Create Joffrey for testing
    let joffrey = ContestOption(title: "Joffrey Baratheon",
                                subtitle: "Inconceivably bad guy with a track record of tyranny.")
    return [ned, joffrey]
  }
  
  /// A really ugly function that does a lot of things wrong. This returns an array `AnyObject`s that are
  /// casted from a defined type, that are force-unwrapped and unchecked prior to adding them to an array.
  /// - Returns: A bad array that will stands a high chance of including bad data.
  func badOptionsForContest() -> [AnyObject]
  {
    let ned = ContestOption(title: "Eddard Stark",
                            subtitle: "Overall good guy with a track record of nobility.")
    // Create Joffrey for testing
    let joffrey = ContestOption(title: "Joffrey Baratheon",
                                subtitle: "Inconceivably bad guy with a track record of tyranny.")
    var nedString = ned as? AnyObject
    var joffreyString = joffrey as? AnyObject
    
    // Make a copy of Joffrey which should throw a static analysis warning
    let joffrey2 = joffrey
    
    return [nedString!, joffreyString!]
  }
}

/// This is a terrible function that should violate any cylcomatic complexity checks
func numberOfOptions() -> UInt32 {
  var result: UInt32 = returnRandom()
  
  if result % 2 == 0 {
    if result != 100 {
      if result != 90 {
        if result != 80 {
          if result != 70 {
            if result != 60 {
              if result != 50 {
                if result != 40 {
                  if result != 30 {
                    if result != 20 {
                      if result != 10 {
                        if result != 9 {
                          if result != 8 {
                            if result != 7 {
                              if result != 6 {
                                print("I give up. Counting is hard!")
                              } else {
                                print("The number is 6, but that was hard.")
                              }
                            }
                          }
                        }
                        print("result is not a multiple of 10. Did this in a real bad way.")
                      } else {
                        print("result is a multiple of 10. Did this in a real bad way.")
                      }
                    }
                  }
                }
              }
              print("result is not 50 and is not a multiple of 10")
            } else {
              print("result is not 50 but is a multiple of 10")
            }
          }
        }
      } else if result == 49 {
        return result
      }
    }
  }
  
  return result
}

func returnRandom() -> UInt32 {
  let random: UInt32 = arc4random_uniform(101)
  return random
}
