//
//  ActivityRingInterfaceController.swift
//  SampleWatchKit WatchKit Extension
//
//  Created by am10 on 2021/03/08.
//

import WatchKit
import Foundation
import HealthKit

final class ActivityRingInterfaceController: WKInterfaceController {

    @IBOutlet private weak var activityRing: WKInterfaceActivityRing!

    override func awake(withContext context: Any?) {
        let activitySummary = HKActivitySummary()
        activitySummary.activeEnergyBurned = HKQuantity(unit: .kilocalorie(), doubleValue: 1500)
        activitySummary.activeEnergyBurnedGoal = HKQuantity(unit: .kilocalorie(), doubleValue: 3000)
        activitySummary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 30)
        activitySummary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 30)
        activitySummary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 9)
        activitySummary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 10)

        activityRing.setActivitySummary(activitySummary, animated: true)
    }
}
