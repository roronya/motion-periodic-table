//
//  RotateView.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/02.
//

import SwiftUI

struct RotateView: View {
    var body: some View {
        Rectangle()
            .stroke(lineWidth: 10)
            .frame(width: 80, height: 80)
            .phaseAnimator([0, 360]) { content, phase in
            content.rotationEffect(.degrees(phase))
        } animation: { _ in
                .linear(duration: 3.0)
                .repeatForever(autoreverses: false)
        }
    }
}

#Preview {
    RotateView()
}
