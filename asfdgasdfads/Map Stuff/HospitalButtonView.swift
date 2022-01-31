import Foundation
import SwiftUI

//modify this so it accepts info from the hospital list info

struct HospitalButtonView: View {
    var body: some View {
        VStack {
            Text("Hospital")
            .padding()
            Text("Distance: 0.6km")
            .padding()
            Button("Open Location In Maps") {
                
                }
                .padding()
                .padding(.horizontal, 30)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
                .frame(maxWidth: .infinity)
        }
    }
}
