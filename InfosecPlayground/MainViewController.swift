//
//  MainViewController.swift
//  InfosecPlayground
//
//  Created by Matthew Becker on 11/14/17.
//  Copyright © 2017 Matthew Becker. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contest = retrieveContest() {
            let contestPrintable = "\(contest.title) \n\n \(contest.subtitle) \n\n \(contest.instructions)"
            
            // This is yucky and error prone. An analayzer should catch this. But for each option in the contest appent it's title to the string.
            var contestOptionsPrintable = ""
            
            for option: ContestOption in contest.options! {
                contestOptionsPrintable.append("\(option.optionTitle) - \(option.optionSubtitle) \n")
            }
            let finalPrintable = "\(contestPrintable) \n \(contestOptionsPrintable)"
            textView.text = finalPrintable
        } else {
            textView.text = "No Contest to print. This would be a bad condition. Yikes!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func retrieveContest() -> Contest? {
        // Get the available contests
        
        // No check here assumes that there would always be contests; and could cause a crash. This should by caught by some kind of analysis.
        var contest = ContestController.shared.getContests()[0]
        return contest
    }
}
