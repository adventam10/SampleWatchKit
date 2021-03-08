//
//  SliderInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class SliderInterfaceController: WKInterfaceController {
    @IBOutlet private weak var slider: WKInterfaceSlider!

    @IBAction private func sliderAction(_ value: Float) {
        print("slider!!!")
    }
}
