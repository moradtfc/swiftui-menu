//
//  SideMenuHeaderView.swift
//  MenuSwiftUI
//
//  Created by Jesus Mora on 27/04/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
                    .padding()
            })
            VStack(alignment: .leading){
                Image("realmadrid")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width:65, height: 65)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 16)
                Text("Jesús Mora")
                    .font(.system(size: 25, weight: .semibold))
                Text("@jesusmora92").font(.system(size:16)).padding(0.0)
                
                //followers and following
                HStack(spacing:12){
                    HStack(spacing:4){
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack(spacing:4){
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                .padding(.top, 15)
                
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
