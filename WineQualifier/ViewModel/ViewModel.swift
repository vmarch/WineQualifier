//
//  ViewModel.swift
//  WineQualifier
//
//  Created by Student on 22.09.21.
//

import Foundation
class ViewModel: ObservableObject{
    
    @Published var type: String = "red" { didSet{ getQuality() }}
    @Published var fixed_acidity: Double = 7.4 { didSet{ getQuality() }}
    @Published var volatile_acidity: Double = 0.36 { didSet{ getQuality() }}
    @Published var citric_acid: Double = 0.29 { didSet{ getQuality() }}
    @Published var residual_sugar: Double = 4.2 { didSet{ getQuality() }}
    @Published var chlorides: Double = 0.031 { didSet{ getQuality() }}
    @Published var free_sulfur_dioxide: Double = 26.0 { didSet{ getQuality() }}
    @Published var total_sulfur_dioxide: Double = 125.0 { didSet{ getQuality() }}
    @Published var density: Double = 0.9898 { didSet{ getQuality() }}
    @Published var pH: Double = 3.28 { didSet{ getQuality() }}
    @Published var sulphates: Double = 0.48 { didSet{ getQuality() }}
    @Published var alcohol: Double = 11.4 { didSet{ getQuality() }}
    @Published var quality: Double = 0.0
    
    func getQuality(){
        quality = QualityCalculator.calculateQuality(type: type, fixed_acidity: fixed_acidity, volatile_acidity: volatile_acidity, citric_acid: citric_acid, residual_sugar: residual_sugar, chlorides: chlorides, free_sulfur_dioxide: free_sulfur_dioxide, total_sulfur_dioxide: total_sulfur_dioxide, density: density, pH: pH, sulphates: sulphates, alcohol: alcohol)
    }
}
