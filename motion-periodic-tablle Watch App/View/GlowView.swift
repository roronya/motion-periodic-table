//
//  GlowView.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/02.
//

import SwiftUI

struct GlowView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue04)
                .frame(width: 150, height: 150)
                .phaseAnimator([5, 40]) { content, phase in
                content.blur(radius: phase)
            } animation: { _ in
                    .easeOut(duration: 1.1)
                    // .repeatForever(autoreverses: false)
            }
            Circle().foregroundColor(.blue01).frame(width: 150, height: 150)
        }
    }
}

#Preview {
    GlowView()
}
