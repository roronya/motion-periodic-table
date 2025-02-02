//
//  ContentView.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BlurView()
            FlowingLineView()
            GlowView()
            OpacityView(duration: 1.0, extraBounce: 0.3)
            OrbitView()
            RepeatRotate()
            RepeatScaleView()
            RotateView()
            TrimCircleView()
            CircleWaveView()
        }
    }
}

#Preview {
    ContentView()
}
