//
//  MapViewControllerWrapper.swift
//  GMAP-ios
//
//  Created by Ravi Shah on 15/09/23.
//

import SwiftUI



//MARK: Wrapped View Controller File To Call In Swiftui Stack

struct MapViewControllerWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // You can update the view controller here if needed
    }
}
