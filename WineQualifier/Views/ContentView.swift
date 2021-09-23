//
//  ContentView.swift
//  WineQualifier
//
//  Created by Student on 22.09.21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        
        // type
        // fixed acidity
        // volatile acidity
        // citric acid
        // residual sugar
        // chlorides
        // free sulfur dioxide
        // total sulfur dioxide
        // density
        // pH
        // sulphates
        // alcohol
        // quality
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [ Color(vm.colorTop), Color(vm.colorBottom)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Wine quality is:")
                    .font(.title)
                Text("\(String(format: "%.2f", vm.quality))")
                    .font(.title)
                    .bold()
                    .shadow(color: .red, radius: 5)
                    .foregroundColor(Color.red)
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 15.0)
                                .stroke(lineWidth: 2.0)
                                .foregroundColor(Color.yellow)
                        )
                    
                Text("Change parameters of Wine.")
                    .font(.title3)
                    .lineLimit(2)
                    .padding(16)
                Divider()
                HStack{
                    Text("Type of Wine: ")
                    if(vm.type == "white"){
                        Image("whitewine")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                            .padding()
                    }else{
                        Image("redwine")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                            .padding()
                    }
                    
                    Button(action: {
                        vm.type = "red"
                    }, label: {
                        if(vm.type == "red"){
                            
                            Text("Red").bold()
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 40, alignment: .center)
                                .background(Color.red)
                                .cornerRadius(6)
                                .shadow(color: .red, radius: 5)
                        }else{
                            Text("Red")
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 40, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(6)
                                .shadow(color: .gray, radius: 2)
                        }
                    }
                    )
                    
                    Button(action: {
                        vm.type = "white"
                    }, label: {
                        if(vm.type == "white"){
                            Text("White").bold()
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 40, alignment: .center)
                                .background(Color.yellow)
                                .cornerRadius(6)
                                .shadow(color: .yellow, radius: 5)
                        }else{
                            Text("White")
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 40, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(6)
                                .shadow(color: .gray, radius: 2)
                        }
                    }
                    )
                }
                Group{
                    HStack{
                        
                        Text("Fixed Acidity: \(String(format: "%.1f", vm.fixed_acidity))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.fixed_acidity, in: 0.0...25.0, step: 0.1).accentColor(Color.red)
                        
                    }
                    HStack{
                        Text("Volatile Acidity: \(String(format: "%.2f",vm.volatile_acidity))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.volatile_acidity, in: 0.00...3, step: 0.01).accentColor(Color.red)
                    }
                    HStack{
                        Text("Citric Acid: \(String(format: "%.2f",vm.citric_acid))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.citric_acid, in: 0.00...3.0, step: 0.01).accentColor(Color.red)
                    }
                    HStack{
                        Text("Residual Sugar: \(String(format: "%.1f",vm.residual_sugar))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.residual_sugar, in: 0.0...100, step: 0.1).accentColor(Color.red)
                    }
                    HStack{
                        Text("Chlorides: \(String(format: "%.3f",vm.chlorides))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.chlorides, in: 0.001...1.0, step: 0.001).accentColor(Color.red)
                    }
                    HStack{
                        Text("Free Sulfur Dioxide: \(String(format: "%.0f",vm.free_sulfur_dioxide))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.free_sulfur_dioxide, in: 0...350, step: 1).accentColor(Color.red)
                    }
                    HStack{
                        Text("Total Sulfur Dioxide: \(String(format: "%.0f",vm.total_sulfur_dioxide))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.total_sulfur_dioxide, in: 0...500, step: 1).accentColor(Color.red)
                    }
                }
                Group{
                    HStack{
                        Text("Density : \(String(format: "%.4f",vm.density))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.density, in: 0.9700...1.0100, step: 0.0001).accentColor(Color.red)
                    }
                    HStack{
                        Text("pH: \(String(format: "%.2f",vm.pH))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.pH, in: 1.5...7.7, step: 0.01).accentColor(Color.red)
                    }
                    HStack{
                        Text("Sulphates: \(String(format: "%.2f",vm.sulphates))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.sulphates, in: 0.0...4.0, step: 0.01).accentColor(Color.red)
                    }
                    HStack{
                        Text("Alcohol: \(String(format: "%.1f",vm.alcohol))")
                            .font(.system(size: 12, weight: .medium))
                            .frame(width: 100, alignment: .leading)
                        Slider(value: $vm.alcohol, in: 6.0...25.0, step: 0.1).accentColor(Color.red)
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
