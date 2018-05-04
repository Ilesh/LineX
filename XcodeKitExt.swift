//
//  XcodeKitExt.swift
//  Linex
//
//  Created by Kaunteya Suryawanshi on 11/09/17.
//  Copyright © 2017 Kaunteya Suryawanshi. All rights reserved.
//

import Foundation
import XcodeKit

enum SelectionType {
    case none(position: XCSourceTextPosition)
    case words(line: Int, colStart: Int, colEnd: Int)
    case lines(start:XCSourceTextPosition, end: XCSourceTextPosition)//Complete line selection is counted multiline
    case multiLocation([XCSourceTextRange])
}

/// Returns nil if nothing is selected
func selectionRanges(of buffer: XCSourceTextBuffer) -> SelectionType {
    let selections = buffer.selections as! [XCSourceTextRange]
    if selections.count == 1 {
        let range = selections.first!
        if range.start.line == range.end.line {
            if range.start.column == range.end.column {
                return .none(position: XCSourceTextPosition(line: range.start.line, column: range.start.column))
            }
            return .words(line: range.start.line, colStart: range.start.column, colEnd: range.end.column)
        }
        return .lines(start: range.start, end: range.end)
    }
    let textRangeList = buffer.selections.map { $0 as! XCSourceTextRange }
    return .multiLocation(textRangeList)
}


/// Indexes of all the lines
///
/// - Returns: Returns nil if no selection
func selectedLinesIndexSet(for selectedRanges: SelectionType) -> IndexSet {
    switch selectedRanges {
    case .none(let position): return IndexSet(integer: position.line)
    case .words(let line, _, _): return IndexSet(integer: line)
    case .lines(let start, let end):
        return IndexSet(integersIn: start.line...(end.column == 0 ? end.line - 1 : end.line))
    case .multiLocation(_): fatalError()
    }
}
