//
//  GridPracticeView.swift
//  SwiftUIPractice
//
//  Created by 李品毅 on 2023/2/14.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .fill(color.gradient)
            .overlay {
                Text(color.description)
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
    }
}

struct GridPracticeView: View {
    var body: some View {
        Grid {
            GridRow {
                ColorView(color: .pink)
                    .gridCellColumns(2)
                Grid {
                    ColorView(color: .blue)
                    ColorView(color: .purple)
                    ColorView(color: .brown)
                }
            }
            Grid {
                GridRow {
                    ColorView(color: .orange)
                    ColorView(color: .indigo)
                    Grid {
                        GridRow {
                            ColorView(color: .cyan)
                            ColorView(color: .yellow)
                        }
                        ColorView(color: .mint)
                        ColorView(color: .green)
                    }.gridCellColumns(2)
                }
            }
        }
    }
}

struct GridPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        GridPracticeView()
    }
}
