//
//  Protocol.swift
//  MAD9137_F18_EventScheduler
//
//  Created by Ernilo Dallagnolo Junior on 2018-10-15.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

// Write a protocol that defines a function that lets an Event object be passed in as a parameter (2pt)
import Foundation

protocol EventPassingDelegate {
    func passEventBack(newEvent: Event)
}
