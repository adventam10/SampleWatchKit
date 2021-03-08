//
//  TableInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class TableInterfaceController: WKInterfaceController {

    @IBOutlet private weak var table: WKInterfaceTable!
    private var tableDataList = ["Test1", "Test2", "Test3", "Test4", "Test5"]
    private var addCount = 0

    override func awake(withContext context: Any?) {
        table.setNumberOfRows(tableDataList.count, withRowType: "Row")
        tableDataList.enumerated().forEach { index, value in
            let row = table.rowController(at: index) as! TableRowController
            row.configure(.init(index: index, text: value))
            row.delegate = self
        }
    }

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("didSelect")
    }

    @IBAction private func buttonAction() {
        addCount += 1
        let index = tableDataList.count
        tableDataList.append("Add\(addCount)")
        table.insertRows(at: [index], withRowType: "Row")
        let row = table.rowController(at: index) as! TableRowController
        row.configure(.init(index: index, text: tableDataList[index]))
        row.delegate = self
    }
}

extension TableInterfaceController: TableRowControllerDelegate {

    func tableRowController(_ tableRowController: TableRowController, didTapDeleteButtonAt index: Int) {
        tableDataList.remove(at: index)
        table.removeRows(at: [index])
        tableDataList.enumerated().forEach { index, value in
            let row = table.rowController(at: index) as! TableRowController
            row.configure(.init(index: index, text: value))
            row.delegate = self
        }
    }
}

protocol TableRowControllerDelegate: AnyObject {
    func tableRowController(_ tableRowController: TableRowController, didTapDeleteButtonAt index: Int)
}

final class TableRowController: NSObject {

    struct Config {
        let index: Int
        let text: String
    }

    weak var delegate: TableRowControllerDelegate?
    private var index: Int = 0
    @IBOutlet private weak var label: WKInterfaceLabel!

    func configure(_ config: Config) {
        label.setText(config.text)
        index = config.index
    }

    @IBAction private func buttonAction() {
        delegate?.tableRowController(self, didTapDeleteButtonAt: index)
    }
}
