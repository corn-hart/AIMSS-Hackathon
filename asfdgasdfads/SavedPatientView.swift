import Foundation
import SwiftUI

struct SavedPatientView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", ]

    var body: some View {
            List {
                Section(header: Text("Patient Info")) {
                    Text("Patient Name")
                    Text("Sex")
                    Text("Date of Birth")
                    Text("Time Elapsed Since Incident")
                    
                }
                
                Section(header: Text("Medication")) {
                    HStack {
                        Text("List Medications Patient Currently Taking")
                       
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Update Patient Info")
                    }
                }
            }.listRowInsets(EdgeInsets())
           
        
    }
}
