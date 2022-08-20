//
//  SwiftUIView.swift
//  cw 8 myDiary
//
//  Created by Fatemah Almutairi on 20/08/2022.
//

import SwiftUI

struct SecondView: View {
    var mynote : String
    var myc : Color
    var body: some View {
        
        ZStack {
            myc
            .ignoresSafeArea()
            VStack{
            Text(mynote)
                    .foregroundColor(.white)
        }
    }
}
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(mynote: "", myc: Color.white)
    }
}
