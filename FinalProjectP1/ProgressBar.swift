//
// ProgressBar.swift
// progressBar
//
// Created by Scholar on 7/30/24.
//
import SwiftUI
struct ProgressBar: View {
  var width: CGFloat = 200
  var height: CGFloat = 20
  var percent: CGFloat = 35
  var color1 = Color(UIColor(_colorLiteralRed: 0.178, green: 0.172, blue: 0.136, alpha: 1))
  var color2 = Color(UIColor(_colorLiteralRed: 0.246, green: 0.193, blue: 0.84, alpha: 1))
  var body: some View {
    let multiplier = width / 100
    ZStack (alignment: .leading) {
      RoundedRectangle(cornerRadius: height, style: .continuous)
        .frame(width: width, height: height)
      .foregroundColor(Color.black.opacity(0.1))
      RoundedRectangle(cornerRadius:height, style: .continuous)
        .frame(width: percent * multiplier, height: height)
        .background(
          LinearGradient(gradient:Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
        )
        .foregroundColor(.clear)
    }
  }
}
#Preview {
  ProgressBar()
}
