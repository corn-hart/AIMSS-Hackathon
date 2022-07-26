import Foundation
import SwiftUI

struct CalendarView: View {

    @State private var date = Date()

    var body: some View {
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        Spacer()
    }
    
    
}

