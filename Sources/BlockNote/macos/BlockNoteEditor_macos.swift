//
//  SwiftUIView.swift
//  BlockNote
//
//  Created by Michael Collins on 8/18/24.
//

#if os(macOS)
import SwiftUI

public struct BlockNoteEditor: NSViewRepresentable {
    public init() {}

    public func makeNSView(context: Context) -> BlockNoteEditorView {
        BlockNoteEditorView(frame: .zero)
    }
    
    public func updateNSView(_ nsView: BlockNoteEditorView, context: Context) {}
}

#Preview {
    BlockNoteEditor()
        .frame(width: 640, height: 480)
}
#endif
