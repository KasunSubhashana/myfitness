//
//  UserService.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 20/5/23.
//

import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

var db = Firestore.firestore()

func userRegister(user: User, completion:@escaping (_ message : ApiResult) -> Void) {
    
    var apiResult = ApiResult()
    
    Auth.auth().createUser(withEmail: user.email, password: user.password) { (result, error) in
        if let _eror = error {
            let err = _eror as NSError
            switch err.code {
            case AuthErrorCode.accountExistsWithDifferentCredential.rawValue:
                apiResult.message = "An account with this email already exists."
            case AuthErrorCode.weakPassword.rawValue:
                apiResult.message = "Password is too weak."
            default:
                apiResult.message = "Oops, Something went wrong."
            }
//            let err = _eror as NSError
//            if let authErrorCode = AuthErrorCode.Code(rawValue: err.code) {
//                switch authErrorCode {
//                case .accountExistsWithDifferentCredential :
//                    apiResult.message = "An account with this email already exists."
//                case .weakPassword :
//                    apiResult.message = "Password is too weak."
//                default:
//                    apiResult.message = "Oops, Something went wrong."
//                }
//            }
            
            apiResult.isSuccess = false
            print(_eror.localizedDescription)
            
        }
        else {
//            print(result)
            //createUser(user: <#T##User#>, userId: String(result?.user.uid ?? ""))
            apiResult.message = "User created successfully."
            apiResult.isSuccess = true
        }
        
        completion(apiResult)
    }
}

func createUser(user: User, userId: String) {
    
    db.collection("users").document(userId).setData([
        "fullName" : user.fullName ?? "",
        "userName" : user.userName ?? "",
        "dob" : user.dob ?? Date(),
        "gender" : user.gender ?? "",
        "height" : user.height ?? "",
        "weight" : user.weight ?? ""
    ])
}

func loginUser(user: User, completion:@escaping (_ message : ApiResult) -> Void)  {
    
    var apiResult = ApiResult()

    Auth.auth().signIn(withEmail: user.email, password: user.password) { (result, error) in
        if let _eror = error {
            let err = _eror as NSError
            switch err.code {
            case AuthErrorCode.accountExistsWithDifferentCredential.rawValue:
                apiResult.message = "An account with this email already exists."
            case AuthErrorCode.weakPassword.rawValue:
                apiResult.message = "Password is too weak."
            default:
                apiResult.message = "Oops, Something went wrong."
            }
            
            apiResult.isSuccess = false
            print(_eror.localizedDescription)
            
        }
        else {
            apiResult.isSuccess = true
        }
        
        completion(apiResult)
    }
}
