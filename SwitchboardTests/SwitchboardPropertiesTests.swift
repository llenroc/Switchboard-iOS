//
//  SwitchboardPropertiesTests.swift
//  SwitchboardTests
//
//  Created by Rob Phillips on 9/21/17.
//  Copyright © 2017 Keepsafe Software Inc. All rights reserved.
//

import XCTest
@testable import Switchboard

final class SwitchboardPropertiesTests: XCTestCase {

    func testDefaultProperties() {
        let defaults = SwitchboardProperties.defaults(withUuid: "abcd")
        XCTAssertNotNil(defaults)
        XCTAssertEqual(defaults[SwitchboardPropertyKeys.uuid] as? String, "abcd")
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.osMajorVersion])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.osVersion])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.device])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.lang])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.manufacturer])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.country])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.appId])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.version])
        XCTAssertNotNil(defaults[SwitchboardPropertyKeys.build])
    }

}
