//
//  LowerLeftCalculation.swift
//  Rectangle, Ported from Spectacle
//
//  Created by Ryan Hanson on 6/14/19.
//  Copyright © 2019 Ryan Hanson. All rights reserved.
//

import Foundation

class LowerLeftCalculation: WindowCalculation, RepeatedExecutionsCalculation {

    override func calculateRect(_ params: RectCalculationParameters) -> RectResult {

        if params.lastAction == nil || !Defaults.subsequentExecutionMode.resizes {
            return calculateFirstRect(params)
        }
        
        return calculateRepeatedRect(params)
    }
    
    func calculateFirstRect(_ params: RectCalculationParameters) -> RectResult {
        let visibleFrameOfScreen = params.visibleFrameOfScreen

        var oneQuarterRect = visibleFrameOfScreen
        oneQuarterRect.size.width = floor(visibleFrameOfScreen.width / 2.0)
        oneQuarterRect.size.height = floor(visibleFrameOfScreen.height / 2.0)
        return RectResult(oneQuarterRect)
    }
    
    func calculateSecondRect(_ params: RectCalculationParameters) -> RectResult {
        let visibleFrameOfScreen = params.visibleFrameOfScreen

        var twoThirdsRect = visibleFrameOfScreen
        twoThirdsRect.size.width = floor(visibleFrameOfScreen.width * 2 / 3.0)
        twoThirdsRect.size.height = floor(visibleFrameOfScreen.height / 2.0)
        return RectResult(twoThirdsRect)
    }
    
    func calculateThirdRect(_ params: RectCalculationParameters) -> RectResult {
        let visibleFrameOfScreen = params.visibleFrameOfScreen

        var oneThirdRect = visibleFrameOfScreen
        oneThirdRect.size.width = floor(visibleFrameOfScreen.width / 3.0)
        oneThirdRect.size.height = floor(visibleFrameOfScreen.height / 2.0)
        return RectResult(oneThirdRect)
    }
}
