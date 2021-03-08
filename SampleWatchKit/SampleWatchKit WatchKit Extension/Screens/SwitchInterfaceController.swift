//
//  SwitchInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class SwitchInterfaceController: WKInterfaceController {

    @IBOutlet private weak var aSwitch: WKInterfaceSwitch!
    
    @IBAction private func switchAction(_ value: Bool) {
        print("switch!!!")
    }
}
