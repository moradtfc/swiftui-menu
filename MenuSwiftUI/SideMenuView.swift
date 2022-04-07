//
//  SideMenuView.swift
//  MenuSwiftUI
//
//  Created by Jesus Mora on 27/04/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.pink]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack{
                //header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                //cellitems
                ForEach(SideMenuViewModel.allCases, id:\.self) { option in
                   NavigationLink(
                    destination: Text(option.title),
                    label: {
                        SideMenuOptionView(viewModel: option )
                    })
                }
                
                Spacer()
                
            }
    
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideMenuView(isShowing: .constant(true))
      
        }
    }
}
