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
        
        // type,
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
        
        VStack{
            Spacer()
            Text("Wine quality is:")
                .font(.title)
            Text("\(Int(vm.quality))")
                .font(.title).bold()
                
            Spacer()
            Text("Change parameters to get quylity of Wine.")
                .font(.title3)
                .lineLimit(2)
                .padding(16)
            
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
                    Slider(value: $vm.fixed_acidity, in: 0.0...25.0, step: 0.1)
            
                }
                HStack{
                    Text("Volatile Acidity: \(String(format: "%.2f",vm.volatile_acidity))")
                    Slider(value: $vm.volatile_acidity, in: 0.00...3, step: 0.01)
                }
                HStack{
                    Text("Citric Acid: \(String(format: "%.2f",vm.citric_acid))")
                    Slider(value: $vm.citric_acid, in: 0.00...3.0, step: 0.01)
                }
                HStack{
                    Text("Residual Sugar: \(String(format: "%.1f",vm.residual_sugar))")
                    Slider(value: $vm.residual_sugar, in: 0.0...100, step: 0.1)
                }
                HStack{
                    Text("Chlorides: \(String(format: "%.3f",vm.chlorides))")
                    Slider(value: $vm.chlorides, in: 0.001...1.0, step: 0.001)
                }
                HStack{
                    Text("Free Sulfur Dioxide: \(String(format: "%.0f",vm.free_sulfur_dioxide))")
                    Slider(value: $vm.free_sulfur_dioxide, in: 0...350, step: 1)
                }
                HStack{
                    Text("Total Sulfur Dioxide: \(String(format: "%.0f",vm.total_sulfur_dioxide))")
                    Slider(value: $vm.total_sulfur_dioxide, in: 0...500, step: 1)
                }
            }
            Group{
                HStack{
                    Text("Density : \(String(format: "%.4f",vm.density))")
                    Slider(value: $vm.density, in: 0.9700...1.0100, step: 0.0001)
                }
                HStack{
                    Text("pH: \(String(format: "%.2f",vm.pH))")
                    Slider(value: $vm.pH, in: 1.5...7.7, step: 0.01)
                }
                HStack{
                    Text("Sulphates: \(String(format: "%.2f",vm.sulphates))")
                    Slider(value: $vm.sulphates, in: 0.0...4.0, step: 0.01)
                }
                HStack{
                    Text("Alcohol: \(String(format: "%.1f",vm.alcohol))")
                    Slider(value: $vm.alcohol, in: 6.0...25.0, step: 0.1)
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
