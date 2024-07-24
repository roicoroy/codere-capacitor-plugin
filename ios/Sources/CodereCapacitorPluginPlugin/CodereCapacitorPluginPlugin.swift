import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CodereCapacitorPluginPlugin)
public class CodereCapacitorPluginPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CodereCapacitorPluginPlugin"
    public let jsName = "CodereCapacitorPlugin"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CodereCapacitorPlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
