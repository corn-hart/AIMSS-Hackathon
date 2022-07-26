import Foundation
import SwiftUI

struct PatientInfoView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", ]

    var body: some View {
            Form {
                Section(header: Text("Patient Info")) {
                    TextField("Patient Name", text: $username)
                    TextField("Sex", text: $username)
                    TextField("Date of Birth", text: $username)
                    TextField("Time Elapsed Since Incident", text: $username)
                    
                }
                
                Section(header: Text("Medication")) {
                    HStack {
                        TextField("List Medications Patient Currently Taking", text: $username)
                       
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Save Patient Info")
                    }
                }
            }.listRowInsets(EdgeInsets())
           
        
    }
}
