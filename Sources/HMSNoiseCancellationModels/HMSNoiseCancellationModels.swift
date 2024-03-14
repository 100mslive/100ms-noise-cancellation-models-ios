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
        let bundle = Bundle.resourceBundle(for: Self.self)
        let weightFileName = bundle.path(forResource: modelName.rawValue, ofType: "kw")
        return weightFileName
#else
        let weightFileName = Bundle.module.path(forResource: modelName.rawValue, ofType: "kw")
        return weightFileName
#endif
    }
}

public extension Bundle {

    static func resourceBundle(for frameworkClass: AnyClass) -> Bundle {
        guard let moduleName = String(reflecting: frameworkClass).components(separatedBy: ".").first else {
            fatalError("Couldn't determine module name from class \(frameworkClass)")
        }

        let frameworkBundle = Bundle(for: frameworkClass)

        guard let resourceBundleURL = frameworkBundle.url(forResource: moduleName, withExtension: "bundle"),
              let resourceBundle = Bundle(url: resourceBundleURL) else {
            fatalError("\(moduleName).bundle not found in \(frameworkBundle)")
        }

        return resourceBundle
    }
}
