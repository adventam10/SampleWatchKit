//
//  InterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/07.
//

import WatchKit
import Foundation

final class InterfaceController: WKInterfaceController {

    @IBOutlet private weak var table: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        table.setNumberOfRows(Menu.allCases.count, withRowType: "Row")
        Menu.allCases.enumerated().forEach { index, value in
            let row = table.rowController(at: index) as! MenuRowController
            row.setText(value.title)
        }
    }

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        let menu = Menu.allCases[rowIndex]
        pushController(withName: menu.name, context: nil)
    }
}
