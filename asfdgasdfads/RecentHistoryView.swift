import Foundation

import SwiftUI

struct RecentHistoryView: View {
    var body: some View {
        List(){
            NavigationLink("Dec 18, 2021", destination: ResultsDetailView())
            NavigationLink("Sep 1, 2021", destination: ResultsDetailView())
            NavigationLink("June 15, 2021", destination: ResultsDetailView())
        }
    }
}


