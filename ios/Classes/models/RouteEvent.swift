//
//  RouteEvent.swift
//  flutter_mapbox_navigation
//
//  Created by Jaime Blasco on 16/3/21.
//

import Foundation


public class RouteEvent : Codable {
    let eventType: RouteEventType
    let data: String
    
    init(eventType: RouteEventType, data: String) {
        self.eventType = eventType
        self.data = data
    }
}
