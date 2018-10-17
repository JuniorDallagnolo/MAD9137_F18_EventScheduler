//
//  schedule.swift
//  MAD9137_F18_EventScheduler
//
//  Created by Ernilo Dallagnolo Junior on 2018-10-15.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import Foundation

class Schedule {
    var eventArray : [Event]
    
    //get-only variable that returns amount of events created.
    var eventCount : Int {get {
        guard !eventArray.isEmpty else { return 0 }
        return eventArray.count
        }}
    
    //default constructor
    init() {
        eventArray = []
    }
    
    //creates a new event with given title, description and date
    func addNewEvent(title : String, description : String, dateString : String){
        self.eventArray.append(Event.init(title: title, description: description, dateString: dateString))
    }
    
    //creates a new event with given EventObject
    func addNewEvent(eventObject : Event){
        self.eventArray.append(eventObject)
    }
    
    //loop through the eventArray concatenating the data returned from each event's getInfo() to a new formatted string
    func outputAllEvents() -> String {
        //check if array is not empty
        guard !eventArray.isEmpty else {
            return "Error: No events to display."
        }
        
        var allEvents : String = ""
        
        for (event) in self.eventArray {
            allEvents += event.getInfo()
        }
        
        return allEvents
    }
}
