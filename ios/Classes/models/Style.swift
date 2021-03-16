//
//  Style.swift
//  flutter_mapbox_navigation
//
//  Created by Jaime Blasco on 16/3/21.
//

import Foundation
import Mapbox
import MapboxDirections
import MapboxCoreNavigation
import MapboxNavigation


class CustomDayStyle: DayStyle {
    
    required init() {
        super.init()
        initStyle()
    }
    
    init(url: String?){
        
        super.init()
        initStyle()
        if(url != nil)
        {
            mapStyleURL = URL(string: url!) ?? MGLStyle.navigationGuidanceDayStyleURL
            previewMapStyleURL = URL(string: url!) ?? MGLStyle.navigationPreviewDayStyleURL
        }
    }
    
    func initStyle() {
        // Use a custom map style.
        mapStyleURL = MGLStyle.navigationGuidanceDayStyleURL
        previewMapStyleURL = MGLStyle.navigationPreviewDayStyleURL
        
        // Specify that the style should be used during the day.
        styleType = .day
    }
    
    override func apply() {
        super.apply()
        
        // Begin styling the UI
        //BottomBannerView.appearance().backgroundColor = .orange
    }
}

class CustomNightStyle: NightStyle {
    
    required init() {
        super.init()
        
        mapStyleURL = MGLStyle.navigationGuidanceNightStyleURL
        previewMapStyleURL = MGLStyle.navigationPreviewNightStyleURL
        // Specify that the style should be used at night.
        styleType = .night
    }
    
    override func apply() {
        super.apply()
        
        // Begin styling the UI
        //BottomBannerView.appearance().backgroundColor = .purple
    }
}
