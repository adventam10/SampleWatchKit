//
//  TextFieldInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class TextFieldInterfaceController: WKInterfaceController {

    @IBOutlet private weak var label: WKInterfaceLabel!
    @IBOutlet private weak var textField: WKInterfaceTextField!

    @IBAction private func textFieldAction(_ value: NSString?) {
        print("input text!!!")
        label.setText((value as String?) ?? "nil")
    }
}
