//
//  Menu.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/07.
//

import WatchKit
import Foundation

enum Menu: Int, CaseIterable {
    case button
    case textField
    case `switch`
    case slider
    case picker
    case label
    case date
    case timer
    case group
    case table
    case image
    case separator
    case activityRing
    case map
    case movie
    case inlineMovie
    case nowPlayingView
    case volumeControl
    case gestures
}

extension Menu {
    var name: String {
        switch self {
        case .button:
            return "Button"
        case .textField:
            return "TextField"
        case .`switch`:
            return "Switch"
        case .slider:
            return "Slider"
        case .picker:
            return "Picker"
        case .label:
            return "Label"
        case .date:
            return "Date"
        case .timer:
            return "Timer"
        case .group:
            return "Group"
        case .table:
            return "Table"
        case .image:
            return "Image"
        case .separator:
            return "Separator"
        case .activityRing:
            return "ActivityRing"
        case .map:
            return "Map"
        case .movie:
            return "Movie"
        case .inlineMovie:
            return "InlineMovie"
        case .nowPlayingView:
            return "NowPlayingView"
        case .volumeControl:
            return "VolumeControl"
        case .gestures:
            return "Gestures"
        }
    }
}

extension Menu {
    var title: String {
        switch self {
        case .button:
            return "Button"
        case .textField:
            return "Text Field"
        case .`switch`:
            return "Switch"
        case .slider:
            return "Slider"
        case .picker:
            return "Picker"
        case .label:
            return "Label"
        case .date:
            return "Date"
        case .timer:
            return "Timer"
        case .group:
            return "Group"
        case .table:
            return "Table"
        case .image:
            return "Image"
        case .separator:
            return "Separator"
        case .activityRing:
            return "Activity Ring"
        case .map:
            return "Map"
        case .movie:
            return "Movie"
        case .inlineMovie:
            return "Inline Movie"
        case .nowPlayingView:
            return "Now Playing View"
        case .volumeControl:
            return "Volume Control"
        case .gestures:
            return "Gestures"
        }
    }
}

final class MenuRowController: NSObject {

    @IBOutlet private weak var label: WKInterfaceLabel!

    func setText(_ text: String) {
        label.setText(text)
    }
}
