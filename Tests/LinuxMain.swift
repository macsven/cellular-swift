import XCTest
@testable import UnitTests

XCTMain([
    testCase(CodableTests.allTests),
    testCase(LockingTests.allTests),
    testCase(ResultTests.allTests)
])
