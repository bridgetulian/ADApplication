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
                    ScrollView {
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
                                            .frame(height: 220)
                                            .accessibilityLabel("Picture of Bridget Ulian")
                                            .padding(.horizontal)
                                        Image("abby_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(height: 220)
                                            .accessibilityLabel("Picture of Abby Wright")
                                            .padding(.horizontal)
                                    }
                                    HStack {
                                        Text("Bridget Ulian")
                                            .padding([.trailing], 70)
                                            .frame(alignment: .leading)
                                        Text("Abby Wright")
                                            .padding(.leading)
                                            .frame(alignment: .trailing)
                                    }
                                    .padding()
                                    Text("Contact Information:")
                                        .padding(.bottom)
                                        .fontWeight(.bold)
                                    Text("Bridget: bulian@middlebury.edu")
                                    Text("Abby: afwright@middlebury.edu")
                                    
                                    Text("Bridget and Abby are two undergraduate students at Middlebury College, where they study computer science. For their senior seminar project, they decided to explore accessibility in iOS applications through research, implementation, and presentation. They are both from Massachusetts and going on to work in tech after college, hopefully bringing what they have learned from this project with them.")
                                        .padding()
                                        .multilineTextAlignment(.center)
                                }
                                Spacer()
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


struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
