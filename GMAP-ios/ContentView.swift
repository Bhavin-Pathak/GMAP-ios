//
//  ContentView.swift
//  GMAP-ios
//
//  Created by Ravi Shah on 15/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //MARK: Call Viewcontroller File Here
            MapViewControllerWrapper().ignoresSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
