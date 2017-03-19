import XCTest
@testable import ValidatorString

class ValidatorStringTests: XCTestCase {
    
    func testEmail() {
        XCTAssertEqual("erikfloresq@gmail.com".isValidEmail, true)
    }
    
    func testValidName() {
        XCTAssertEqual("erik flores".isValidName, true)
    }
    
    func testAddress() {
        XCTAssertEqual("Ruy Diaz 371".isValidAddress, true)
    }
    
    func testAlphaNumeric() {
        XCTAssertEqual("Erik 45".isValidAlphaNumeric, true)
    }
    
    func testHousePhone() {
        XCTAssertEqual("5620355".isValidHousePhone, true)
    }
    
    func testMobilePhone() {
        XCTAssertEqual("991073926".isValidMobilePhone, true)
    }
    
    func testDni() {
        XCTAssertEqual("45831099".isValidDni, true)
    }

    func testPassword() {
        XCTAssertEqual("234%@Q".isValidPassword, true)
    }

    static var allTests : [(String, (ValidatorStringTests) -> () throws -> Void)] {
        return [
            ("testEmail", testEmail),
            ("testValidName", testValidName),
            ("testAddress", testAddress),
            ("testAlphaNumeric", testAlphaNumeric),
            ("testHousePhone", testHousePhone),
            ("testMobilePhone", testMobilePhone),
            ("testDni", testDni),
            ("testPassword", testPassword),
        ]
    }
}
