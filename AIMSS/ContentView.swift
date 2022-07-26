//
//  ContentView.swift
//  asfdgasdfads
//
//  Created by Rose Niu on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                NavigationLink("Map" , destination: MapView())
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .frame(width: 300, height: 80)
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .offset(y: 15)
                
                NavigationLink("Stroke Scale", destination: PreCameraView())
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .frame(width: 300, height: 80)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .offset(y: 30)
                
                NavigationLink("Results History", destination: ResultsHistoryView())
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .frame(width: 300, height: 80)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .offset(y: 45)
                    
                
                NavigationLink("Messages", destination: MapView())
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .frame(width: 300, height: 80)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                    .offset(y: 15)
                    .frame(width: 300, height: 220, alignment: .bottom)
                
            }.navigationTitle("AIMSS Home")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarItems(
                    leading: NavigationLink(
                        destination: UserView(),
                        label: {
                            Image(systemName: "person.fill")
                        })
                        .accentColor(.black)
                        .transition(.opacity),
                    trailing:
                        NavigationLink(
                            destination: UserView(),
                            label: {
                                Image(systemName: "gear")
                            })
                        .accentColor(.black).navigationTitle("")
                    )
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
