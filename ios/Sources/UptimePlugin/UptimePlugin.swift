import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(UptimePlugin)
public class UptimePlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "UptimePlugin"
    public let jsName = "Uptime"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = Uptime()

   @objc func getUptime(_ call: CAPPluginCall) {
        let includeDeepSleep = call.getBool("includeDeepSleep") ?? false
        let uptime = ProcessInfo.processInfo.systemUptime

        let result: Double = includeDeepSleep ? uptime : uptime // Adjust for different logic if needed
        call.resolve(["uptime": result * 1000]) // Convert to milliseconds
    }
}
