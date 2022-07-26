import Foundation

import SwiftUI

struct ResultsHistoryView: View {
    var body: some View {

        VStack{
NavigationLink("Recent History" , destination: RecentHistoryView())
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .frame(width: 300, height: 80)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 5)
                .offset(y: 15)
            

NavigationLink("All Events", destination: CalendarView())
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

