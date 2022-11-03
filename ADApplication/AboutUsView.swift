//
//  AboutUsView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct AboutUsView: View {
    var body: some View{
        VStack {
            Text("About Us")
                .font(.headline)
                .padding()
            HStack{
                Image("bridget_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                Image("bridget_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
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
            Text("Contact information:")
                .padding()
            Text("Bridget: bulian@middlebury.edu")
            Text("Abby: afwright@middlebury.edu")
        }
        Spacer()
    }
}
