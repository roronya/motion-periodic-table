//
//  BasicTransition.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/02.
//

import SwiftUI

/**
 SwiftUIはビューの依存関係をチェックしている。@Stateとか。この場合はshowの変化を見ている。
 showに依存する値はすべて計算され、計算結果をスナップショットとして持っている。
 showが変更されたとき、再計算を行い、スナップショットを更新する。←これを更新トランザクションと言う。
 withAnimationによって依存関係を更新したときのみ、更新トランザクションは計算する値がAnimatableかどうか確認する。
 Animatableだったとき、それらのどう動かすのか定義されているか確認し、定義されていればそれにのっとり徐々に値を変えていく。
 
 アニメーションしたければwithAnimationを使って依存関係の値を更新すること。
 アニメーションさあせたいViewにはtransitionやscaleEffectなどでアニメーションを設定しておくこと。
 */
struct BasicTransition: View {
    @State var show = false
    var body: some View {
        VStack {
            Circle().scaleEffect(show ? 1 : 0)
            Spacer()
            Button(action :{
                withAnimation {
                    show.toggle()
                }
            }, label: {
                Text("Hello")
            })
        }.onAppear {
            withAnimation(.easeIn(duration: 1.0)) {
                show = true
            }
        }
        
    }
}

#Preview {
    BasicTransition()
}
