// Copyright 2024 Michael F. Collins, III
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

#if os(iOS)
import UIKit
import WebKit

open class BlockNoteEditorView: UIView {
    private let webView: WKWebView
    
    public override init(frame: CGRect) {
        let configuration = WKWebViewConfiguration()
        configuration.setURLSchemeHandler(
            BlockNoteSchemeHandler(),
            forURLScheme: "blocknote"
        )
        self.webView = .init(frame: .zero, configuration: configuration)
        
        super.init(frame: frame)
        
        addSubview(self.webView)
        self.webView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.webView.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor
            ),
            self.webView.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor
            ),
            self.webView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor
            ),
            self.webView.bottomAnchor.constraint(
                equalTo: safeAreaLayoutGuide.bottomAnchor
            )
        ])
        
        let urlRequest = URLRequest(
            url: .init(string: "blocknote://index.html")!
        )
        self.webView.load(urlRequest)
    }
    
    public required init?(coder: NSCoder) {
        let configuration = WKWebViewConfiguration()
        configuration.setURLSchemeHandler(
            BlockNoteSchemeHandler(),
            forURLScheme: "blocknote"
        )
        self.webView = .init(frame: .zero, configuration: configuration)
        
        super.init(coder: coder)
        
        addSubview(self.webView)
        NSLayoutConstraint.activate([
            self.webView.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor
            ),
            self.webView.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor
            ),
            self.webView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor
            ),
            self.webView.bottomAnchor.constraint(
                equalTo: safeAreaLayoutGuide.bottomAnchor
            )
        ])
        
        let urlRequest = URLRequest(
            url: .init(string: "blocknote://index.html")!
        )
        self.webView.load(urlRequest)
    }
}
#endif
