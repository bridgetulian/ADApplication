//
//  MenuView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 11/7/22.
//

import Foundation
import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "homekit")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                
                NavigationLink(destination: HomeView()) {
                    Text("Home")
                }
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "newspaper")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                NavigationLink(destination: GuidelinesView()) {
                    Text("Visual Guidelines")
                }
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "mail.stack")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                NavigationLink(destination: FeedbackView()) {
                    Text("Feedback")
                }
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                NavigationLink(destination: AboutUsView()) {
                    Text("About Us")
                }
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 81/255, blue: 109/255))
        .edgesIgnoringSafeArea(.all)
    }
}
 
