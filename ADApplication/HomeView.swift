//
//  HomeView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    @State var showMenu = false
    
    var body: some View{
        
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }
        
        NavigationView {
                GeometryReader { geometry in
                    
                    VStack {
                        if self.showMenu == false {
                            ZStack (alignment: .center){
                                 VStack {
                                     Text("Welcome to ADApplication!")
                                         .font(.title)
                                         .frame(alignment: .center)
                                         .padding(.top)
                                     Text("Universal usability is imperative in creating functional, well-developed applications.")
                                         .multilineTextAlignment(.center)
                                         .padding()
                                     Text("Explore the guidelines, source code, and application through the menu on the left to learn more about universal usability as a developer or user.")
                                         .multilineTextAlignment(.center)
                                         .padding()
                                     Spacer()
                                     GroupBox(label: Text("Useful Links")) {
                                         Link("Source Code", destination: (URL(string: "https://github.com/bridgetulian/ADApplication.git")!))
                                             .frame(alignment: .leading)
                                         Link("ADA Website", destination: (URL(string: "https://www.ada.gov")!))
                                             .padding(.horizontal)
                                             .frame(alignment: .leading)
                                             .foregroundColor(.blue)
                                         Link("WCAG Website", destination: (URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!))
                                             .foregroundColor(.blue)
                                             .frame(alignment: .leading)
                                             .padding(.bottom)
                                     }.padding(.all)

                                 }
                             }
                        }
                        
                        ZStack(alignment: .leading) {
                            if self.showMenu {
                                MenuView()
                                    .frame(width: geometry.size.width/2)
                                    .transition(.move(edge: .leading))
                            }
                        }
                        .gesture(drag)
                    }
                }
                    .navigationBarTitle("ADApplication", displayMode: .inline)
                    .navigationBarItems(leading: (
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            if self.showMenu {
                                Text("Menu")
                                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                            }
                            if self.showMenu == false {
                                Text("Menu")
                                    .foregroundColor(.black)
                            }
                        }
                    ))
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
