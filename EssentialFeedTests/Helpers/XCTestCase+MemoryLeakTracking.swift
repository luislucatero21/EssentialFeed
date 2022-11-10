//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by JibJab on 24/10/22.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance,
                         "Instance should have been deallocated. Potential memmory leak.",
                         file: file,
                         line: line)
        }
    }

    func assertEqualErrors(_ errorL: NSError?,
                           _ errorR: NSError?,
                           file: StaticString = #file,
                           line: UInt = #line) {
        let errorMessage = "Expected error: \(String(describing: errorL)), got \(String(describing: errorR)) instead"
        XCTAssertEqual(errorL?.domain, errorR?.domain, errorMessage, file: file, line: line)
        XCTAssertEqual(errorL?.code, errorR?.code, errorMessage, file: file, line: line)
    }
}
