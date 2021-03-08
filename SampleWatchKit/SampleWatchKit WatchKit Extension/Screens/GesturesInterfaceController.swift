//
//  GesturesInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class GesturesInterfaceController: WKInterfaceController {

    @IBOutlet private weak var tapGesture: WKTapGestureRecognizer!
    @IBOutlet private weak var swipeGesture: WKSwipeGestureRecognizer!
    @IBOutlet private weak var longPressGesture: WKLongPressGestureRecognizer!
    @IBOutlet private weak var panGesture: WKPanGestureRecognizer!

    @IBOutlet private weak var tapLabel: WKInterfaceLabel!
    @IBOutlet private weak var swipeLabel: WKInterfaceLabel!
    @IBOutlet private weak var longPressLabel: WKInterfaceLabel!
    @IBOutlet private weak var panLabel: WKInterfaceLabel!

    private var tapCount = 0
    private var swipeCount = 0
    private var longPressCount = 0
    private var panCount = 0

    override func awake(withContext context: Any?) {
        tapLabel.setText("\(tapCount)")
        swipeLabel.setText("\(swipeCount)")
        longPressLabel.setText("\(longPressCount)")
        panLabel.setText("\(panCount)")
    }

    @IBAction private func handleTap(_ gesture: WKTapGestureRecognizer) {
        tapCount += 1
        tapLabel.setText("\(tapCount)!")
    }

    @IBAction private func handleSwipe(_ gesture: WKSwipeGestureRecognizer) {
        swipeCount += 1
        swipeLabel.setText("\(swipeCount)!")
    }

    @IBAction private func handleLongPress(_ gesture: WKLongPressGestureRecognizer) {
        if gesture.state == .began {
            longPressCount = 0
        } else {
            longPressCount += 1
        }
        longPressLabel.setText("\(longPressCount)!")
    }

    @IBAction private func handlePan(_ gesture: WKPanGestureRecognizer) {
        if gesture.state == .began {
            panCount = 0
        } else {
            panCount += 1
        }
        panLabel.setText("\(panCount)!")
    }
}
