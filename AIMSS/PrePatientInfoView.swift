import Foundation

import SwiftUI

struct PrePatientInfoView: View {
    var body: some View {
        List(){
            NavigationLink("John Balushi", destination: SavedPatientView())
            NavigationLink("Steve-O", destination: SavedPatientView())
            NavigationLink("John Johnson", destination: SavedPatientView())
                .toolbar {
                    NavigationLink("Add Patient", destination: PatientInfoView())
        }
    }
}
}
