//
//  EasyData.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/5/22.
//

import SwiftUI

struct EasyData: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Easy Methods for Data Entry")
                    .font(.title)
                    .padding(.top)
                Text("Reduce amount of text entry on a screen by using other methods of data entry.")
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Good Example")
                    .fontWeight(.bold)
                GroupBox {
                    Text("Enter Date Below")
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    VStack {
                        Text("Enter Name Below")
                            .padding(.top)
                        TextField("Name:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        
                        HStack {
                            Button("Submit") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .padding(.horizontal)
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal)
                .frame(width: 330)
                Text("Why does the above  increase usability?")
                    .fontWeight(.bold)
                    .padding([.horizontal, .top], 2)
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding([.leading],25)
                        .frame(width: 50.0, height: 50.0)
                    Spacer()
                    Group{
                        VStack {
                            Text("1. Date and Time automatically sync with device. User does not have to type these items.")
                                .padding(.horizontal)
                            Text("2. Name cannot be entered without a text field, but the text field is clearly labeled.")
                                .padding([.horizontal, .top])
                        }
                    }
                }
                Text("Bad Example")
                    .padding(.top)
                    .fontWeight(.bold)
                GroupBox {
                    VStack {
                        Text("Enter Information Below")
                        TextField("Date:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        TextField("Name:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        HStack {
                            Button("Submit") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .padding(.horizontal)
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal)
                .frame(width: 330)
                Text("Why does the above decrease usability?")
                    .fontWeight(.bold)
                    .padding([.horizontal,.top],2)
                HStack {
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding([.leading], 39)
                        .frame(width: 50.0, height: 50.0)
                    Spacer()
                    Group{
                        VStack {
                            Text("1. User enters information that can easily be auto-filled.")
                                .padding(.horizontal)
                            Text("2. 'Enter Information Below' does not explicitly say type of data entry.")
                                .padding([.horizontal, .top])
                        }
                    }
                }
            }
        }
    }
}

struct EasyData_Previews: PreviewProvider {
    static var previews: some View {
        EasyData()
    }
}
