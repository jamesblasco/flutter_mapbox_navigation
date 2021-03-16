//
//  RouteStep.swift
//  flutter_mapbox_navigation
//
//  Created by Jaime Blasco on 16/3/21.
//

import Foundation

import Mapbox
import MapboxDirections
import MapboxCoreNavigation
import MapboxNavigation


public class MapBoxRouteStep : Codable {
    let name: String?
    let instructions: String
    let distance: Double
    let expectedTravelTime: Double
    
    init(step: RouteStep){
        name = step.names?.first
        instructions = step.instructions
        distance = step.distance
        expectedTravelTime = step.expectedTravelTime
    }
}
