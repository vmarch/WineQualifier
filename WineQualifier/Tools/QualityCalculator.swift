//
//  QualityCalculator.swift
//  WineQualifier
//
//  Created by Student on 22.09.21.
//

import Foundation
class QualityCalculator{
    
    class func calculateQuality(
        type: String,
        fixed_acidity: Double,
        volatile_acidity: Double,
        citric_acid: Double,
        residual_sugar: Double,
        chlorides: Double,
        free_sulfur_dioxide: Double,
        total_sulfur_dioxide: Double,
        density: Double,
        pH: Double,
        sulphates: Double,
        alcohol: Double) -> Double{
        let model = VineQuality_1()
        guard let output = try? model.prediction(
            type: type,
            fixed_acidity: fixed_acidity,
            volatile_acidity: volatile_acidity,
            citric_acid: citric_acid,
            residual_sugar: residual_sugar,
            chlorides: chlorides,
            free_sulfur_dioxide: free_sulfur_dioxide,
            total_sulfur_dioxide: total_sulfur_dioxide,
            density: density,
            pH: pH,
            sulphates: sulphates,
            alcohol: alcohol
        )
        else
        {
            fatalError("Fatal error")
        }
        let quality = output.quality
        print(quality)
        return quality
    }
}
