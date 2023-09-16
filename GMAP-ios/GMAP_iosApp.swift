//
//  GMAP_iosApp.swift
//  GMAP-ios
//
//  Created by Ravi Shah on 15/09/23.
//

import SwiftUI
import GoogleMaps

@main
struct GMAP_iosApp: App {
    
    //MARK: Initilize GMap On SWIFTUI Start Application
    init() {
        GMSServices.provideAPIKey("AIzaSyAKI2FTFyc4k7OOIAK7kwhaJ9OFJBT6tNE")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
