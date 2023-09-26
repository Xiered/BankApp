//
//  HomeView.swift
//  BankApp
//
//  Created by Дмитрий Герасимов on 26.09.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Header()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0){
                    ForEach(CardModel.colors ) { colors in
                        VStack {
                            GeometryReader { geo in
                                CardView(colors: colors.colors)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 15), axis: (x: 0, y: 1, z: 0))
                            }
                            .frame(width: 250, height: 250 )
                        }
                    }
                }
            }
            Spacer()
        }
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
