//
//  MapView.swift
//  SafeVet
//
//  Created by Bryan  Vázquez Hernández on 15/03/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) ->
    MKMapView {
        MKMapView(frame:.zero)
        }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 24.812066491645037, longitude: -107.37353811779843)
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 2)
        
        
        let region=MKCoordinateRegion(center:coordinate, span:span)
        
        uiView.setRegion(region, animated: true)
        
    }
        
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
