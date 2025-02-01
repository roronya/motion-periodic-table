//
//  BlurView.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/02.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        Circle()
            .foregroundColor(.green02)
            .phaseAnimator([0, 100]) { content, phase in
            content.blur(radius: phase)
        } animation: { _ in
                .smooth(duration: 1)
                // .repeatForever(autoreverses: false)
        }
    }
}

#Preview {
    BlurView()
}
