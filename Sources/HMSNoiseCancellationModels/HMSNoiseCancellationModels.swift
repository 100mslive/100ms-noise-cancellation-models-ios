// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@objc public class HMSNoiseCancellationModels: NSObject {
    
    @objc public enum ModelName: Int, RawRepresentable {
        case smallFullBand
        
        public typealias RawValue = String
        
        public var rawValue: RawValue {
            switch self {
            case .smallFullBand:
                return "c6.f.s.ced125"
            }
        }
        
        public init?(rawValue: RawValue) {
            switch rawValue {
            case "c6.f.s.ced125":
                self = .smallFullBand
            default:
                return nil
            }
        }
    }
    
    @objc public static func path(for modelName: ModelName) -> String? {
#if COCOAPODS
        let bundle = Bundle(for: Self.self)
        let weightFileName = bundle.path(forResource: modelName.rawValue, ofType: "kw")
        return weightFileName
#else
        let weightFileName = Bundle.module.path(forResource: modelName.rawValue, ofType: "kw")
        return weightFileName
#endif
    }
}
