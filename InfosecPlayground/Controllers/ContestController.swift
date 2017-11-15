//
//  ContestController.swift
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/15/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import UIKit

class ContestController: NSObject {
    static let shared = ContestController()
    
    /**
     Returns an immutable array of currently available contests
    */
    func getContests() -> [Contest] {
        let newContest = Contest(title: "For King of the Iron Throne", subtitle: "The person that shall protect the realm and rule over all.", instructions: "Vote for one.")
        return [newContest]
    }
}
