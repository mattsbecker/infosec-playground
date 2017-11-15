//
//  ContestController.swift
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/15/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import UIKit

class ContestController: NSObject {

  /// Returns a shared instance of a ContestController
  static let shared = ContestController()

  // Default initializer has been made private for this class. Use `ContestController.shared` instead.
  private override init() {
    super.init()
  }

  /// Retrieves all avaialable contests for a ballot. Assumes there will always be one.
  ///
  /// - Returns: An immutable array of `Contest`s.
  func getContests() -> [Contest] {
    let newContest = Contest(contestTitle: "For King of the Iron Throne",
                             contestSubtitle: "The person that shall protect the realm and rule over all.",
                             contestInstructions: "Vote for one.")
      return [newContest]
  }
}
