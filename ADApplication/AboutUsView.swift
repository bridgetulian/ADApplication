//
//  AboutUsView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct AboutUsView: View {
    
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
                        VStack {
                            Text("About Us")
                                .font(.headline)
                                .padding()
                            HStack{
                                Image("bridget_image")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                    .accessibilityLabel("Picture of Bridget Ulian")
                                Image("abby_image")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                    .accessibilityLabel("Picture of Abby Wright")
                            }
                            HStack {
                                Text("Bridget Ulian")
                                    .padding(.trailing)
                                    .frame(alignment: .leading)
                                Text("Abby Wright")
                                    .padding(.leading)
                                    .frame(alignment: .trailing)
                            }
                            .padding()
                            Text("Bridget and Abby are two undergraduate students at Middlebury College, where they study computer science. For their senior seminar project, they decided to explore accessibility in iOS applications through research, implementation, and presentation. They are both from Massachusetts and going on to work in tech after college, hopefully bringing what they have learned from this project with them")
                                .padding()
                                .multilineTextAlignment(.center)
                            Text("Contact information:")
                                .padding()
                            Text("Bridget: bulian@middlebury.edu")
                            Text("Abby: afwright@middlebury.edu")
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
