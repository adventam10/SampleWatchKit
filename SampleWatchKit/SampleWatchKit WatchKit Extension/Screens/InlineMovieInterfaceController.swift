//
//  InlineMovieInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class InlineMovieInterfaceController: WKInterfaceController {

    @IBOutlet private weak var inlineMovie: WKInterfaceInlineMovie!

    override func awake(withContext context: Any?) {
        let url = Bundle.main.url(forResource: "sample", withExtension: "mov")
        inlineMovie.setMovieURL(url!)
        inlineMovie.play()
    }
}
