//
//  MainController.swift
//  MapDirectionsGooglePlaces
//
//  Created by Mohsen Abdollahi on 7/20/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit
import LBTATools

class MainController : UIViewController {
    
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
        mapView.fillSuperview()
        setupRegionForMap()
    }
    
    
    fileprivate func setupRegionForMap(){
        
        let centerCoordinate = CLLocationCoordinate2D(latitude: 37.7666, longitude: -122.427290)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: centerCoordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
}

struct MainPreviews: PreviewProvider {
    static var previews: some View {

        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView : UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreviews.ContainerView>) -> MainController {
            return MainController()
        }
        
        func updateUIViewController(_ uiViewController: MainController, context: UIViewControllerRepresentableContext<MainPreviews.ContainerView>) {
        }

        typealias UIViewControllerType = MainController
    }
}

