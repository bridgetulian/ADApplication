//
//  ManipulationGestures.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/5/22.
//

import SwiftUI

struct ManipulationGestures: View {
    @State var deviceShook: Bool = false
    @State var buttonPressed: Bool = false
    var body: some View {
        VStack {
            Text("Device Manipulation Gestures")
                .font(.title)
                .padding(.all)
            Text("When device manipulation gestures are provided (i.e. shaking or tilting a device), a keyboard or touch method should also be provided as a control method")
                .multilineTextAlignment(.center)
                .padding()
            Text("Example")
                .fontWeight(.bold)
            GroupBox {
                Text("Shake Device to Print")
                    .onShake {
                        deviceShook.toggle()
                    }
                    .padding([.bottom], 50)
                    .foregroundColor(Color("Menu Color"))
                    .fontWeight(.bold)
                if deviceShook {
                    Text("Hello, world!")
                        .foregroundColor(Color("Menu Color"))
                }
                Text("Alternatively: Press Button to Print")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Menu Color"))
                    .padding([.bottom], 10)
                Button("Print") {
                    buttonPressed.toggle()
                }
                .foregroundColor(Color("Menu Color"))
                .padding(10)
                .border(Color("Menu Color"))
                if buttonPressed {
                    Text("Hello, world!")
                        .padding()
                        .foregroundColor(Color("Menu Color"))
                }
            }.padding(.horizontal)
            HStack {
                Image(systemName: "pencil.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.white)
                    .padding([.leading], 30)
                    .frame(width: 30.0, height: 30.0)
                Text("Any user can trigger the gesture, whether they have the ability to shake their phone or not. Make sure that device manipulation gestures always have a touch or keyboard alternate.")
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .background(Color("Menu Color"))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
            Spacer()
        }
    }
}

struct ManipulationGestures_Previews: PreviewProvider {
    static var previews: some View {
        ManipulationGestures()
    }
}


extension UIDevice {
    static let deviceDidShakeNotifaction = Notification.Name(rawValue: "deviceDidShakeNotification")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotifaction, object: nil)
        }
    }
}

struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotifaction)) { _ in
                action()
            }
    }
}

extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action:action))
    }
}
