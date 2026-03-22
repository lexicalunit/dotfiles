// Recompile:
// swiftc ~/bin/yeti-no-thru.swift -o ~/bin/yeti-no-thru

import CoreAudio
import Foundation

func printUsage() {
    print("""
    Usage: disable-yeti-thru [options]

    Disables the "Thru" (playthrough) setting on Blue Yeti microphones.

    Options:
        -h, --help    Show this help message and exit
    """)
}

// Handle arguments
if CommandLine.arguments.contains("-h") || CommandLine.arguments.contains("--help") {
    printUsage()
    exit(0)
}

func getDeviceName(_ device: AudioDeviceID) -> String? {
    var address = AudioObjectPropertyAddress(
        mSelector: kAudioDevicePropertyDeviceNameCFString,
        mScope: kAudioObjectPropertyScopeGlobal,
        mElement: kAudioObjectPropertyElementMain
    )

    var name: Unmanaged<CFString>?
    var size = UInt32(MemoryLayout<Unmanaged<CFString>?>.size)

    let status = AudioObjectGetPropertyData(device, &address, 0, nil, &size, &name)
    guard status == noErr, let cfName = name?.takeUnretainedValue() else {
        return nil
    }
    return cfName as String
}

func findBlueYeti() -> AudioDeviceID? {
    var propertySize: UInt32 = 0
    var address = AudioObjectPropertyAddress(
        mSelector: kAudioHardwarePropertyDevices,
        mScope: kAudioObjectPropertyScopeGlobal,
        mElement: kAudioObjectPropertyElementMain
    )

    AudioObjectGetPropertyDataSize(AudioObjectID(kAudioObjectSystemObject), &address, 0, nil, &propertySize)
    let deviceCount = Int(propertySize) / MemoryLayout<AudioDeviceID>.size
    var devices = [AudioDeviceID](repeating: 0, count: deviceCount)
    AudioObjectGetPropertyData(AudioObjectID(kAudioObjectSystemObject), &address, 0, nil, &propertySize, &devices)

    for device in devices {
        if let name = getDeviceName(device) {
            if name.contains("Yeti") || name.contains("Blue Microphones") {
                print("Found: \(name) (ID: \(device))")
                return device
            }
        }
    }
    return nil
}

func disablePlayThru(device: AudioDeviceID) -> Bool {
    var address = AudioObjectPropertyAddress(
        mSelector: kAudioDevicePropertyPlayThru,
        mScope: kAudioObjectPropertyScopeInput,
        mElement: kAudioObjectPropertyElementMain
    )

    // Check if property exists
    if !AudioObjectHasProperty(device, &address) {
        print("Device does not have PlayThru property on input scope")
        // Try output scope
        address.mScope = kAudioObjectPropertyScopeOutput
        if !AudioObjectHasProperty(device, &address) {
            print("Device does not have PlayThru property on output scope either")
            return false
        }
    }

    var value: UInt32 = 0  // 0 = off
    let size = UInt32(MemoryLayout<UInt32>.size)
    let status = AudioObjectSetPropertyData(device, &address, 0, nil, size, &value)

    if status == noErr {
        print("PlayThru disabled successfully")
        return true
    } else {
        print("Failed to disable PlayThru: \(status)")
        return false
    }
}

if let yeti = findBlueYeti() {
    _ = disablePlayThru(device: yeti)
} else {
    print("Blue Yeti not found")
}
