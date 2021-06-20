//
//  SideMenuOptionView.swift
//  MenuSwiftUI
//
//  Created by Jesus Mora on 27/04/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenuViewModel
    var body: some View {

        VStack{
            
            HStack(spacing:16){
                
                Image(systemName: viewModel.imageName)
                    .frame(width: 24, height: 24)
                Text(viewModel.title)
                        .font(.system(size:15, weight: .semibold))
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
            
        }
        
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .messages)
    }
}
