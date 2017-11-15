//
//  ContestOption.swift
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/14/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import UIKit

protocol ContestOptionAssignable {
  var optionTitle: String { get set }
  var optionSubtitle: String { get set }
}

protocol ContestOptionSelectable {
  var isSelected: Bool { get set }
}

class ContestOption: ContestOptionAssignable, ContestOptionSelectable {
  var optionTitle: String
  var optionSubtitle: String
  var isSelected: Bool = false
  
 /// Default initializer for a ContestOption.
 ///
 /// - Parameters:
 ///   - title: A String representing the `ContestOption`'s main title.
 ///   - subtitle: A String representing the `ContestOption`'s subtitle
 init(title contestOptionTitle: String, subtitle contestOptionSubtitle: String) {
    optionTitle = contestOptionTitle
    optionSubtitle = contestOptionSubtitle
  }
}
