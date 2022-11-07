//
//  HomeView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View{
        ZStack (alignment: .top){
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
        }
        
    }
}
