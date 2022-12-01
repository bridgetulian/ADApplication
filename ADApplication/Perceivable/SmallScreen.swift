//
//  SmallScreen.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/1/22.
//

import Foundation
import SwiftUI

struct SmallScreen: View {
        
    var body: some View {
    
        ScrollView {
            VStack {
                Text("Small Screen Size")
                    .font(.title)
                    .padding(.top)
                    .navigationBarBackButtonHidden(false)
                Text("Mobile Applications should conform to a smaller screen size. The same information on a website or web application should be adapted for a smaller screen.")
                    .padding()
                    .multilineTextAlignment(.center)
                GroupBox() {
                    Text("Maintain a reasonable default size for content and touch controls, as seen in the Target Size Guidelines accessible below.")
                        .multilineTextAlignment(.center)
                    NavigationLink("Target Size Guidelines", destination: TargetSize())
                        .padding()
                        .frame(height: 40)
                        .background(Color(red: 0.8666666666666667, green: 0.9764705882352941, blue: 0.9921568627450981))
                        .foregroundColor(Color(red: 0.054901960784313725, green: 0.19215686274509805, blue: 0.5450980392156862))
                        .border(Color(red: 0.054901960784313725, green: 0.19215686274509805, blue: 0.5450980392156862), width: 2)
                }
                .padding(.horizontal)
                GroupBox() {
                    Text("Link lengths should be shortened to viewport width as seen below.")
                    Link("WCAG Website", destination: (URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!))
                        .foregroundColor(Color(red: 0.054901960784313725, green: 0.19215686274509805, blue: 0.5450980392156862))
                        .padding()
                }
                .padding(.horizontal)
                GroupBox() {
                    VStack{
                        Text("When it comes to form fields, position the form field below the label rather than besides the label.")
                            .multilineTextAlignment(.center)
                        Text("Name and Contact Information")
                            .padding(.top)
                        TextField("Enter Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}


//minimize amount of information:
//reasonable default size for content and touch controls
//adapt length of link text to viewport width
//position form fields below, not besides, their labels
