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
    /*    ZStack (alignment: .top){
            VStack (alignment: .center){
                Text("ADApplication")
                    .foregroundColor(Color(red: 11/255, green: 57/255, blue: 84/255))
                    .font(.headline)
                    .padding()
                Link("Source Code", destination: (URL(string: "https://github.com/bridgetulian/ADApplication.git")!))
                    .padding(.top)
                Link("ADA Website", destination: (URL(string: "https://www.ada.gov")!))
                    .foregroundColor(.blue)
                Link("WCAG Website", destination: (URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!))
                    .foregroundColor(.blue)
                    .padding(.bottom)
                Text("Universal usability is imperative in creating functional, well-developed applications.")
                    .multilineTextAlignment(.center)
                Text("Explore the guidelines, source code, and application to learn more about universal usability as a developer or user.")
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
        }*/
        
        NavigationView {
                GeometryReader { geometry in
                    
                    VStack {
                        if self.showMenu == false {
                            ZStack (alignment: .top){
                                 VStack (alignment: .center){
                                     Text("Universal usability is imperative in creating functional, well-developed applications.")
                                         .multilineTextAlignment(.center)
                                         .padding(.top)
                                     Text("Explore the guidelines, source code, and application to learn more about universal usability as a developer or user.")
                                         .multilineTextAlignment(.center)
                                     Text("Useful Links")
                                         .font(.headline)
                                         .frame(alignment: .center)
                                         .padding(.top)
                                     Link("Source Code", destination: (URL(string: "https://github.com/bridgetulian/ADApplication.git")!))
                                     Link("ADA Website", destination: (URL(string: "https://www.ada.gov")!))
                                         .foregroundColor(.blue)
                                     Link("WCAG Website", destination: (URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!))
                                         .foregroundColor(.blue)
                                         .padding(.bottom)
                                     Spacer()
                                 }
                                 Spacer()
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
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }
                    ))
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
