//
//  ContentView.swift
//  MenuSwiftUI
//
//  Created by Jesus Mora on 25/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 350 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                },
                label: {
                    HStack{
                        Image(systemName: "list.bullet").foregroundColor(.black)
                    }
                    
                    
                }))
                .navigationTitle("Left menu bar")
            }
            
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
        
            HStack(spacing:1){
                Text("@morajesus92")
                    .padding()
                    .font(.system(size: 25)).foregroundColor(.blue)
                Image("twitter").resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width:50, height:50)
            }
        
        }
        
    }
}
