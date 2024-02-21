// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class HMSNoiseCancellationModels {
    
    public enum ModelName: String {
        case smallFullBandModelName = "c6.f.s.ced125"
    }
    
    public static func path(for modelName: ModelName) -> String? {
        let frameworkBundle = Bundle(for: HMSNoiseCancellationModels.self)
        let weightFileName = frameworkBundle.path(forResource: modelName.rawValue, ofType: "kw")
        return weightFileName
    }
}
