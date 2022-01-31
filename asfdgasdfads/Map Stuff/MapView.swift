import SwiftUI
import MapKit
struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    var name: String = ""
    var centerRating: String = ""
    let id = UUID()
}
struct MapView: View {
    @State var showInfo: Bool = false
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 37.786996
        newRegion.center.longitude = -122.440100
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450), name: "Coolest Hospital", centerRating: "3" ),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.786996, longitude: -122.419281), name: "2nd Coolest Hospital", centerRating: "4"),
    ]
    var body: some View {
        
        Map(coordinateRegion: $coordinateRegion,
                annotationItems: annotationItems) {item in
            MapAnnotation(coordinate: item.coordinate){
               
                    Image(systemName: "pin.circle.fill").foregroundColor(.red)
                    Button(item.name)
                        {
                            showInfo.toggle()
                        }
                        .padding()
                        .background(Color(.white))
                        .foregroundColor(.black)
                        .cornerRadius(5)
                    
                
            }
        
        }
        
        if showInfo==true{
            HospitalButtonView()
        }
    }
}
