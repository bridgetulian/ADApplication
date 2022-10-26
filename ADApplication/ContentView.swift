//
//  ContentView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        NavigationView {
            VStack {

                Text("ADApplication")
                NavigationLink(destination: HomeView()) {
                    Text("Continue")
                }
                
                ZStack(alignment: .leading) {
                    GeometryReader { geometry in
                        ExtractedView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        
                        if self.showMenu {
                            MenuView()
                                .frame(width: geometry.size.width/2, height: geometry.size.height)
                        }
                    }
                   
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View{
        Text("Home Page")
    }
}

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "homekit")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Home")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "newspaper")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Visual Guidelines")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "mail.stack")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Feedback")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("About Us")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}
/*
extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
*/

struct ExtractedView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action : {
            self.showMenu.toggle()
        }) {
            Text("Show menu")
        }
    }
}
