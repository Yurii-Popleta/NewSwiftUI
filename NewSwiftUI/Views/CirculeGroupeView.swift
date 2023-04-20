//
//  CirculeGroupeView.swift
//  NewSwiftUI
//
//  Created by Admin on 08/02/2023.
//

import SwiftUI

struct CirculeGroupeView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40).frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80).frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CirculeGroupeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CirculeGroupeView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
