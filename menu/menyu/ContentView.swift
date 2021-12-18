//
//  ContentView.swift
//  menyu
//
//  Created by law2500 on 2021/11/05.
//

import SwiftUI




struct ContentView: View {
    
    @EnvironmentObject var numberr: Number
    @State var isOpenSideMenu: Bool = false
    @State var showingSheet: Bool = false
    @State var text = "Hello, World!"
    var menu: Menu
    
    
    var body: some View {
        
        ZStack {
            VStack {
                HStack{
                    Button(action: {
                        self.isOpenSideMenu.toggle()
                    }, label: {
                        Image(systemName: "list.dash")
                    })
                        .padding()
                    Spacer()
                    Button(action: {
                        self.showingSheet.toggle()
                    }, label: {
                        Image(systemName: "cart.badge.minus")
                    })
                        .padding()
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "cart.badge.plus")
                    })
                        .padding()
                    Spacer()
                    Button(action: {
                        print("ok")
                    }, label: {
                        Image(systemName: "dot.radiowaves.left.and.right")
                    })
                        .padding()
                    }
                .foregroundColor(.black)
                
                NavigationView {
                
                        ZStack {
                            Color(.black).edgesIgnoringSafeArea(.all)
                            
                            ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading) {
                                Text("MENU　合計金額 $\(numberr.numberGoukei)")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .padding(.leading)
                                
                                Text("Hot")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0 ..< menu.hot.count) { i in
                                            NavigationLink(destination: Summary(menu: menu, number: i)){
                                            VStack(alignment: .leading) {
                                                Image(menu.hot[i].ImageNume)
                                                    .resizable()
                                                    .frame(width: 210, height: 140)
                                                .cornerRadius(10)
                                                .padding(.leading)
                                                
                                                Text(menu.hot[i].name)
                                                    .foregroundColor(.white)
                                                    .fontWeight(.thin)
                                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                                
                                                Text("$ \(menu.hot[i].price)")
                                                    .foregroundColor(.white)
                                                    .padding(.leading)
                                            }
                                        }
                                       }
                                        
                                    }
                                }
                                
                                Text("ice")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0 ..< menu.ice.count) { i in
                                            NavigationLink(destination: IceSummary(menu: menu, number: i)){
                                            VStack(alignment: .leading) {
                                                Image(menu.ice[i].ImageNume)
                                                    .resizable()
                                                    .frame(width: 210, height: 140)
                                                .cornerRadius(10)
                                                .padding(.leading)
                                                
                                                Text(menu.ice[i].name)
                                                    .foregroundColor(.white)
                                                    .fontWeight(.thin)
                                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                                
                                                Text("$ \(menu.ice[i].price)")
                                                    .foregroundColor(.white)
                                                    .padding(.leading)
                                              }
                                            }
                                        }
                                    }
                                }
                                
                                
                                Text("ケーキ")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0 ..< menu.keik.count) { i in
                                            NavigationLink(destination: keikSummary(menu: menu, number: i)){
                                            VStack(alignment: .leading) {
                                                Image(menu.keik[i].ImageNume)
                                                    .resizable()
                                                    .frame(width: 210, height: 140)
                                                .cornerRadius(10)
                                                .padding(.leading)
                                                
                                                Text(menu.keik[i].name)
                                                    .foregroundColor(.white)
                                                    .fontWeight(.thin)
                                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                                
                                                Text("$ \(menu.keik[i].price)")
                                                    .foregroundColor(.white)
                                                    .padding(.leading)
                                              }
                                            }
                                        }
                                    }
                                }
                                
                                Text("パスタ")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0 ..< menu.pasuta.count) { i in
                                            NavigationLink(destination: pasutaSummary(menu: menu, number: i)){
                                            VStack(alignment: .leading) {
                                                Image(menu.pasuta[i].ImageNume)
                                                    .resizable()
                                                    .frame(width: 210, height: 140)
                                                .cornerRadius(10)
                                                .padding(.leading)
                                                
                                                Text(menu.pasuta[i].name)
                                                    .foregroundColor(.white)
                                                    .fontWeight(.thin)
                                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                                
                                                Text("$ \(menu.pasuta[i].price)")
                                                    .foregroundColor(.white)
                                                    .padding(.leading)
                                              }
                                            }
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                }
                FoderView(isOpenSideMenu: $isOpenSideMenu)
            }
            SideMenuView(isOpen: $isOpenSideMenu, text: $text)
                            .edgesIgnoringSafeArea(.all)
        }
        .sheet(isPresented: $showingSheet) {
                    ShoppingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: menu)
            .environmentObject(Number())
    }
}

struct FoderView: View {
    @Binding var isOpenSideMenu: Bool
    var body: some View {
        
        HStack{
            Button(action: {
                self.isOpenSideMenu.toggle()
            }, label: {
                Image(systemName: "list.dash")
            })
                .padding()
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "cart.badge.minus")
            })
                .padding()
            Spacer()
            Button(action: {
                print("ok")
            }, label: {
                Image(systemName: "cart.badge.plus")
            })
                .padding()
            Spacer()
            Button(action: {
                print("ok")
            }, label: {
                Image(systemName: "dot.radiowaves.left.and.right")
            })
                .padding()
            }
        .foregroundColor(.black)
        
        
    }
}




struct Menu: Identifiable {
    var id = UUID()
    var hot: [Detail]
    var ice: [Detail]
    var keik: [Detail]
    var pasuta: [Detail]
    var sweet: [Detail]
}


struct Detail: Identifiable {
    var id = UUID()
    var ImageNume: String
    var name: String
    var price: String
    var summary: String
}

var menu: Menu = .init(hot: [
    .init(ImageNume: "download-1", name: "ドリップコーヒー", price: "630", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです"),
    .init(ImageNume: "download-2", name: "ブラックコーヒー", price: "550", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです"),
    .init(ImageNume: "download", name: "カフェオレ", price: "580", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです")],
                       ice: [
                        .init(ImageNume: "images-2", name: "アイスコーヒー", price: "450", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです"),
                        .init(ImageNume: "images-3", name: "アイスブラック", price: "560", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです"),
                        .init(ImageNume: "images", name: "アイスカフェオレ", price: "670", summary: "ブラジル産のコーヒー豆から、希少部位だけを抽出し熟成させ、まろやかで口当たりの優しいシンプルなコーヒーです")],
                       keik: [
                        .init(ImageNume: "download-3", name: "パンケーキ", price: "760", summary: "ハチミツたっぷりで口当たりの柔らかい3段パンケーキです"),
                        .init(ImageNume: "download-4", name: "いちごのパンケーキ", price: "800", summary: "ハチミツとイチゴをタップリ乗せたパンケーキです"),
                        .init(ImageNume: "download-5", name: "チョコレートケーキ", price: "450", summary: "マカダミアナッツを混ぜたチョコレートケーキになります"),
                        .init(ImageNume: "download-6", name: "チーズケーキ", price: "480", summary: "チーズケーキに甘さを加えた味になっています"),
                        .init(ImageNume: "download-7", name: "ショートケーキ", price: "420", summary: "asdのイチゴを使用したショートケーキになります")],
                       pasuta: [.init(ImageNume: "download-8", name: "たらこパスタ", price: "880", summary: "新鮮なタラコを使用したパスタになっています"),
                                .init(ImageNume: "download-9", name: "カルボナーラ", price: "860", summary: "北海道産のチーズを使用しております"),
                                .init(ImageNume: "download-10", name: "ミートソース", price: "900", summary: "新潟県産トマトを使用しています"),
                                .init(ImageNume: "download-11", name: "パスタ", price: "770", summary: "ニンニクたっぷりのパスタになっております")],
                       sweet: [.init(ImageNume: "download-12", name: "アイス", price: "380", summary: "バニラアイス"),
                               .init(ImageNume: "download-13", name: "パフェ", price: "420", summary: "バニラアイス"),
                               .init(ImageNume: "download-14", name: "チョコレートパフェ", price: "360", summary: "チョコレート"),
                               .init(ImageNume: "download-15", name: "モンブラン", price: "300", summary: "モンブラン")
                              ])
