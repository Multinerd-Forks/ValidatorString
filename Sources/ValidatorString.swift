import Foundation

struct Regex {
    static let alphabet = "^[a-zA-ZáéíóúÁÉÍÓÚñÑäëïöüÿÄËÏÖÜ ]+$"
    static let alphNumeric = "^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑäëïöüÿÄËÏÖÜ ]+$"
    static let email = "^[a-z0-9\\_\\-]+(\\.?[a-z0-9\\_\\-]+)+@\\w+([\\.-]\\w+)+$"
    static let video = "((?:https?:\\/{2})?(?:w{3}\\.)?youtu(?:be)?\\.(?:com|be)(?:\\/watch\\?v=|\\/)([^\\s&]+))|(?:https?:\\/{2})?(?:w{3}\\.)?vimeo.com\\/(.*)"
    static let address = "^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ&.,äëïöüÿÄËÏÖÜ \\-]+$"
    static let dni = "^[0-9]{8}$"
    static let password = "^[a-zA-Z0-9._%+-@]{3,32}$"
    static let housePhone = "^[0-9]{6,12}$"
    static let mobilePhone = "^[0-9]{9,12}$"
}

extension String{
    
    var isValidEmail: Bool {
        return evaluateRegex(Regex.email)
    }
    
    var isValidName: Bool {
        return evaluateRegex(Regex.alphabet)
    }
    
    var isValidAddress: Bool{
        return evaluateRegex(Regex.address)
    }
    
    var isValidAlphaNumeric: Bool{
        return evaluateRegex(Regex.alphNumeric)
    }
    
    var isValidHousePhone: Bool {
        return evaluateRegex(Regex.housePhone)
    }
    
    var isValidMobilePhone: Bool {
        return evaluateRegex(Regex.mobilePhone)
    }
    
    var isValidDni: Bool {
        return evaluateRegex(Regex.dni)
    }
    
    var isValidPassword: Bool {
        return evaluateRegex(Regex.password)
    }
    
    
    func evaluateRegex(_ pattern:String) -> Bool {
        do{
            let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
            return regex.firstMatch(in: self, options: [], range: NSMakeRange(0, utf16.count)) != nil
        }catch let error as NSError{
            print("Expresion Error: \(error.localizedDescription)")
        }
        return false
    }
    
}
