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
    
    init(title theTitle: String, subtitle theSubtitle: String, instructions theInstructions: String) {
        title = theTitle
        subtitle = theSubtitle
        instructions = theInstructions
        options = optionsForContest()
    }
    
    func optionsForContest() -> [ContestOption] {
        // Create options for this contest
        let ned = ContestOption(title: "Eddard Stark", subtitle: "Overall good guy with a track record of nobility.")
        let joffrey = ContestOption(title: "Joffrey Baratheon", subtitle: "Inconceivably bad guy with a track record of tyranny.")
        return [ned, joffrey]
    }
}
