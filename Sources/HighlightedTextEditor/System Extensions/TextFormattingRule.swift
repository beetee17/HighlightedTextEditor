//
//  TextFormattingRule.swift
//
//
//  Created by Kyle Nazario on 9/8/20.
//

import SwiftUI

#if os(iOS) && BETA
public extension TextFormattingRule {
    @available(iOS 14.0, *)
    init(foregroundColor resolvedColor: Color, fontTraits: SymbolicTraits = []) {
        self.init(key: .foregroundColor, value: UIColor(resolvedColor), fontTraits: fontTraits)
    }

    @available(iOS 14.0, *)
    init(highlightColor resolvedColor: Color, fontTraits: SymbolicTraits = []) {
        self.init(key: .backgroundColor, value: UIColor(resolvedColor), fontTraits: fontTraits)
    }
}
#endif

#if os(macOS) && BETA
public extension TextFormattingRule {
    @available(macOS 11.0, *)
    init(foregroundColor resolvedColor: Color, fontTraits: SymbolicTraits = []) {
        self.init(key: .foregroundColor, value: NSColor(resolvedColor), fontTraits: fontTraits)
    }

    @available(macOS 11.0, *)
    init(highlightColor resolvedColor: Color, fontTraits: SymbolicTraits = []) {
        self.init(key: .backgroundColor, value: NSColor(resolvedColor), fontTraits: fontTraits)
    }
}
#endif
