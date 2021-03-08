//
//  ButtonInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/07.
//

import WatchKit
import Foundation

final class ButtonInterfaceController: WKInterfaceController {

    @IBOutlet private weak var button: WKInterfaceButton!

    @IBAction private func buttonAction() {
        print("button!!!")
    }
}
