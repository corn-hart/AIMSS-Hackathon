import Foundation

import SwiftUI

struct PreCameraView: View {
    var body: some View {

        VStack{
NavigationLink("Start Assessment" , destination: CameraView())
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .frame(width: 300, height: 80)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 5)
                .offset(y: 15)

NavigationLink("Patient Information", destination: PrePatientInfoView())
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .frame(width: 300, height: 80)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 5)
                .offset(y: 15)
    
        
    }
    Spacer()
    }
}

