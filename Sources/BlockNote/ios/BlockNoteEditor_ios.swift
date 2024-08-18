//
//  SwiftUIView.swift
//  BlockNote
//
//  Created by Michael Collins on 8/18/24.
//

#if os(iOS)
import SwiftUI

public struct BlockNoteEditor: UIViewRepresentable {
    public init() {}
    
    public func makeUIView(context: Context) -> BlockNoteEditorView {
        BlockNoteEditorView(frame: .zero)
    }
    
    public func updateUIView(
        _ uiView: BlockNoteEditorView,
        context: Context
    ) {}
}

#Preview {
    BlockNoteEditor()
}
#endif
