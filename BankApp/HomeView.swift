//
//  HomeView.swift
//  BankApp
//
//  Created by Дмитрий Герасимов on 26.09.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Header()
    }
    
    @ViewBuilder
    
    private func Header() -> some View {
        HStack{
            Text("Welcome back, \nUser! ")
                .font(.system(size: 22, weight: .bold, design: .default))
                .foregroundColor(Color("lightPink"))
            
            Spacer()
            
            ZStack{
                
                Circle()
                    .foregroundColor(Color("lightGreen"))
                
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: 55, height: 55)
        }
        .padding([.trailing, .leading ])
    }
}
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
