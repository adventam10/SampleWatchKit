//
//  MovieInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation

final class MovieInterfaceController: WKInterfaceController {

    @IBOutlet private weak var movie: WKInterfaceMovie!

    override func awake(withContext context: Any?) {
        let url = Bundle.main.url(forResource: "sample", withExtension: "mov")
        movie.setMovieURL(url!)
        let image = WKImage.init(imageName: "sample")
        print(image)
    }
}
