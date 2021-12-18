//
//  Summary.swift
//  menyu
//
//  Created by law2500 on 2021/11/05.
//

import SwiftUI

struct Summary: View {
    
    @EnvironmentObject var numberrr: Number
    @State var num = 0
    
    var menu: Menu
    var number: Int
    var body: some View {
        
        
        ZStack {
            
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack (alignment: .bottomTrailing){
                    Image(menu.hot[number].ImageNume)
                        .resizable()
                        .frame(width: 380, height: 250)
                    
                    Rectangle().frame(width: 380, height: 48)
                        .opacity(0.2)
                    
                    Text(menu.hot[number].name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                
                Text(menu.hot[number].summary)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    numberrr.numberGoukei = numberrr.numberGoukei + Int(menu.hot[number].price)!
                    
                    numberrr.shoppingList.append("\(menu.hot[number].name)、\(menu.hot[number].price)円")
                    
                    numberrr.shoppingIndex.append(numberrr.shoppingList.count)
                    
                    print(numberrr.shoppingIndex)
                    print(numberrr.shoppingList)
                    
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 50)
                        
                        Text("注文する $\(menu.hot[number].price)")
                            .foregroundColor(.white)
                    }
                })
                Text("合計金額　$\(numberrr.numberGoukei)")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.brown)
                    .cornerRadius(10)
                    .padding()
                Spacer()
            }
        }
    }
}

struct Summary_Previews: PreviewProvider {
    static var previews: some View {
        Summary(menu: menu, number: 0)
    }
}



struct IceSummary: View {
    
    @EnvironmentObject var numberrr: Number
        var menu: Menu
        var number: Int
    
       @State var num = 0
        
        var body: some View {
            
            
            ZStack {
                
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ZStack (alignment: .bottomTrailing){
                        Image(menu.ice[number].ImageNume)
                            .resizable()
                            .frame(width: 380, height: 250)
                        
                        Rectangle().frame(width: 380, height: 48)
                            .opacity(0.2)
                        
                        Text(menu.ice[number].name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    Text(menu.ice[number].summary)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        numberrr.numberGoukei = numberrr.numberGoukei + Int(menu.ice[number].price)!
                        
                        numberrr.shoppingList.append("\(menu.ice[number].name)、\(menu.ice[number].price)円")
                        
                        numberrr.shoppingIndex.append(numberrr.shoppingList.count)
                        
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                            
                            Text("注文する $\(menu.ice[number].price)")
                                .foregroundColor(.white)
                        }
                    })
                    
                    Text("$\(numberrr.numberGoukei)")
                        .foregroundColor(.white)
                    Spacer()
                }
            }
    }
}

struct keikSummary: View {
    
    @EnvironmentObject var numberrr: Number
        var menu: Menu
        var number: Int
    
       @State var num = 0
        
        var body: some View {
            
            
            ZStack {
                
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ZStack (alignment: .bottomTrailing){
                        Image(menu.keik[number].ImageNume)
                            .resizable()
                            .frame(width: 380, height: 250)
                        
                        Rectangle().frame(width: 380, height: 48)
                            .opacity(0.2)
                        
                        Text(menu.keik[number].name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    Text(menu.keik[number].summary)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        numberrr.numberGoukei = numberrr.numberGoukei + Int(menu.keik[number].price)!
                        
                        numberrr.shoppingList.append("\(menu.keik[number].name)、\(menu.keik[number].price)円")
                        
                        numberrr.shoppingIndex.append(numberrr.shoppingList.count)
                        
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                            
                            Text("注文する $\(menu.keik[number].price)")
                                .foregroundColor(.white)
                        }
                    })
                    
                    Text("$\(numberrr.numberGoukei)")
                        .foregroundColor(.white)
                    Spacer()
                }
            }
    }
}



struct pasutaSummary: View {
    
    @EnvironmentObject var numberrr: Number
        var menu: Menu
        var number: Int
    
       @State var num = 0
        
        var body: some View {
            
            
            ZStack {
                
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ZStack (alignment: .bottomTrailing){
                        Image(menu.pasuta[number].ImageNume)
                            .resizable()
                            .frame(width: 380, height: 250)
                        
                        Rectangle().frame(width: 380, height: 48)
                            .opacity(0.2)
                        
                        Text(menu.pasuta[number].name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    Text(menu.pasuta[number].summary)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        numberrr.numberGoukei = numberrr.numberGoukei + Int(menu.pasuta[number].price)!
                        
                        numberrr.shoppingList.append("\(menu.pasuta[number].name)、\(menu.pasuta[number].price)円")
                        
                        numberrr.shoppingIndex.append(numberrr.shoppingList.count)
                        
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                            
                            Text("注文する $\(menu.pasuta[number].price)")
                                .foregroundColor(.white)
                        }
                    })
                    
                    Text("$\(numberrr.numberGoukei)")
                        .foregroundColor(.white)
                    Spacer()
                }
            }
    }
}
