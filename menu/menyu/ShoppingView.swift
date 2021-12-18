//
//  ShoppingView.swift
//  menyu
//
//  Created by law2500 on 2021/11/11.
//

import SwiftUI

struct ShoppingView: View {
    
    @EnvironmentObject var shoppingg: Number
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        
        VStack {
            
            List(shoppingg.shoppingList,id: \.self){index in
                HStack{
                    Text(index)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("削除")
                    })
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                    
                }
            }
            
            
                Text("合計金額\(shoppingg.numberGoukei)円")
                
                Button(action: {
                    shoppingg.numberGoukei = 0
                    shoppingg.shoppingList.removeAll()
                }, label: {
                    Text("注文リセット")
                })
                
                Button(action: {
                    dismiss()
                }, label: {
                    Text("戻る")
                })
            }
        }
    }


struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
            .environmentObject(Number())
    }
}
