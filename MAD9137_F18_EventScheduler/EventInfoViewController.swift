//
//  EventInfoViewController.swift
//  MAD9137_F18_EventScheduler
//
//  Created by Ernilo Dallagnolo Junior on 2018-10-15.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import UIKit

class EventInfoViewController: UIViewController {

    var event : Event?
    
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var EventDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set textfields with event info
        if let e = event {
            eventName.text = e.title
            eventDate.text = e.getDateString()
            EventDescription.text = e.description
        }
    }
}
