//
//  PickerInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class PickerInterfaceController: WKInterfaceController {

    @IBOutlet private weak var picker1: WKInterfacePicker!
    @IBOutlet private weak var picker2: WKInterfacePicker!
    @IBOutlet private weak var picker3: WKInterfacePicker!

    @IBOutlet private weak var picker1Label: WKInterfaceLabel!
    @IBOutlet private weak var picker2Label: WKInterfaceLabel!
    @IBOutlet private weak var picker3Label: WKInterfaceLabel!

    private let items1: [WKPickerItem] = (0 ... 10).map {
        let item = WKPickerItem()
        item.title = "Item\($0)"
        return item
    }

    private let items2: [WKPickerItem] = ["person", "person.fill",
                                          "person.2", "person.2.fill",
                                          "person.3", "person.3.fill"].enumerated().map {
        let item = WKPickerItem()
        item.title = "Item\($0)"
        item.accessoryImage = .init(image: UIImage(systemName: $1)!)
        return item
    }

    private let items3: [WKPickerItem] = ["person", "person.fill",
                                          "person.2", "person.2.fill",
                                          "person.3", "person.3.fill"].enumerated().map {
        let item = WKPickerItem()
        item.contentImage = .init(image: UIImage(systemName: $1)!)
        item.caption = "Item\($0)"
        return item
    }

    override func awake(withContext context: Any?) {
        picker1.setItems(items1)
        picker2.setItems(items2)
        picker3.setItems(items3)
        picker1Label.setText("Unselected")
        picker2Label.setText("Unselected")
        picker3Label.setText("Unselected")
    }

    @IBAction private func picker1Action(_ value: Int) {
        print("picker1!!!")
        picker1Label.setText(items1[value].title)
    }

    @IBAction private func picker2Action(_ value: Int) {
        print("picker2!!!")
        picker2Label.setText(items1[value].title)
    }

    @IBAction private func picker3Action(_ value: Int) {
        print("picker3!!!")
        picker3Label.setText(items3[value].caption)
    }
}
