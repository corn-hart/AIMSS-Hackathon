import Foundation
import SwiftUI

struct MapButtons: View {
    
    @State var correctAnswer: Bool = false
    
    var body: some View {
        HStack{
                        
                Button("Map") {
                    if correctAnswer==true{
                    correctAnswer.toggle()
                    }
                    }
                .padding()
                .padding(.horizontal, 30)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
                .frame(maxWidth: .infinity)
                .navigationBarTitleDisplayMode(.inline)
                
         

                        
                Button("List") {
                    if correctAnswer==false{
                    correctAnswer.toggle()
                    }
                }
                .padding()
                .padding(.horizontal, 30)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
                .frame(maxWidth: .infinity)
        }
        
        
        Spacer()
        
        
        Group {
            if correctAnswer==false{
                MapView()
            } else {
                List() {
                    HStack{
                        Text("Physician 1")
                        Spacer()
                        NavigationLink(
                            destination: PhysicianMapView(),
                            label: {
                                Text("Show Location")
                            }).buttonStyle(PlainButtonStyle())
                    }
                    Text("Physician 2")
                    Text("Physician 3")
                        }
                .frame(maxWidth: .infinity)
                
            }
        }
    }
}
