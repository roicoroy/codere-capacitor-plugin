import Foundation

@objc public class CodereCapacitorPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
