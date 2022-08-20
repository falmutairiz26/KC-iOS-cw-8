//
//  ContentView.swift
//  cw 8 myDiary
//
//  Created by Fatemah Almutairi on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.black , Color.gray , Color.blue , Color.purple]
    @State var mytext = ""
    @State var selected : Color = Color.red
    var body: some View {
                NavigationView{
                    ZStack {
                        VStack {
                            Spacer()

                    VStack{
                    Spacer()
                    Text("Choose Your Favorite Color")
                    HStack{
                        ForEach(colors, id: \.self){
                            color in
                            Circle()
                            .fill(color)
                            .onTapGesture {
                                selected = color
                            }
                        }
                    }
                        }
                            VStack {
                                Text("What Do You Want to Write")
                        TextField("Enter Text", text: $mytext)
                                .padding()
                                .frame(width: 350, height: 50)
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(20)
                            }
                        Spacer()
                            Spacer()

                        NavigationLink {
                            SecondView(mynote: mytext, myc: selected)
                            } label: {
                                Text("Save")
                                    .padding()
                                    .frame(width: 250, height: 50)
                                    .background(Color.blue.opacity(0.45))
                                    .cornerRadius(20)
                            }
                }
            }
.navigationTitle("My diary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( selected: Color.white)
            .previewDevice("iPhone 13")
    }
}
