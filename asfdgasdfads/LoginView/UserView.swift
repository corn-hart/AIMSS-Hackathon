import Foundation
import SwiftUI

struct UserView: View {
    var body: some View {
        VStack{
            Image("person")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .shadow(radius: 10)
                .navigationBarTitleDisplayMode(.inline)
            
            List(){
                Text("Username:  EMT1")
                Text("License Number: 0000")
                Text("Company: Acme Corp")
                Text("Vehicle ID: 00000")
            }
        }
        Spacer()
    }
}
