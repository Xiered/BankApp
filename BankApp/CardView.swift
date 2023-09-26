//
//  CardView.swift
//  BankApp
//
//  Created by Дмитрий Герасимов on 26.09.2023.
//

import SwiftUI

struct CardView: View {
    
    var colors: [Color]
    
    var body: some View {
        ZStack{
            
            VStack(alignment: .leading){
                Text("BankName")
                    .font(.system(size: 19, weight: .semibold, design: .default))
                    .foregroundColor(.accentColor)
                
                Spacer()
                
                HStack{
                    Text("5487 ••••")
                    
                    Spacer()
                    
                    Image("mastercard")
                }
            }
            .padding()
            
            
        }
        .frame(width: 252, height: 153 )
        .background(LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15)
        .shadow(color: .accentColor.opacity(0.2), radius: 5, x: 4, y: 4)
        .padding()
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(colors: [Color("lightPink"), Color("lightIndigo")])
    }
}
