// The Swift Programming Language
// https://docs.swift.org/swift-book

import Firebase

public class FirebaseAuthManager {
    
   public var email: String
   public var password : String
    
   public init(with email: String, password: String) {
        self.email = email
        self.password = password

    }
    public func singIn(with email: String, password:String) {
        Auth.auth().signIn(withEmail: email, password: password) {result, error in

            //Handle result - I called network manager to just show how this is working
            NetworkManager.sendWelcomeEmail(to: email)
    
        }
    }
    
}
