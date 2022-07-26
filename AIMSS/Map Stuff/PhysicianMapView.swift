import SwiftUI
import MapKit
struct MyAnnotationItem2: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}
struct PhysicianMapView: View {
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 37.786996
        newRegion.center.longitude = -122.440100
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    var annotationItems: [MyAnnotationItem2] = [
        MyAnnotationItem2(coordinate: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450)),
    ]
    var body: some View {
        
        Map(coordinateRegion: $coordinateRegion,
                annotationItems: annotationItems) {item in
                MapPin(coordinate: item.coordinate)
            }
        
        
    }
}
