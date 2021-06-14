//
//  Route.swift
//
//  Created by Rashid on 07/10/2020.
//  Copyright © 2020 Stanislav Ostrovskiy. All rights reserved.
//



import Foundation
import Alamofire
 
enum Routes: URLRequestBuilder {
    case updateProfile(name:String,username:String, gender:String)
    
    
    // MARK: - Path
    internal var path: String {
        switch self {
        case .updateProfile:
            return "influencer/profile/update"
        }
    }
    // MARK: - Parameters
    internal var parameters: Parameters? {
        var params = Parameters.init()
        switch self {
        case .updateProfile(let name,let username,let gender):
            params["name"] = name
            params["username"] = username
            params["gender"] = gender
        }
        
        return params
    }
    // MARK: - Methods
    internal var method: HTTPMethod {
        switch self {
        default:
            return .post
        }
    }
    // MARK: - HTTPHeaders
    internal var headers: HTTPHeaders {
        let header:HTTPHeaders =
            [
                "Content-Type": "application/json",
                "Accept": "application/json",
                "lang": "en",
                "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDQ5MzkxZGViYzE0MmIzOTdiZTVlMmMwMWZjMTIyNWI0NDUxYmJhMjE2OTQ2YjY4OTVkY2QwMjc5MGE5YWFkYmY4MzNkMzM5MDRlZWJkYjIiLCJpYXQiOjE2MDg3MzEzNjMsIm5iZiI6MTYwODczMTM2MywiZXhwIjoxNjQwMjY3MzYzLCJzdWIiOiI0NiIsInNjb3BlcyI6W119.A5e3mMRt35_FWJXry2UHWDYkQuxXPEVwdteKF5Nm5O0DRL6aiU224ZzHxCTuqovjmIq_sjbelVtoFR_LEOIteWDYxplJvnQX0VsL5dwKxVGruCRFtQpbBiTl4SOvjslLUjxlBWfyobG_gkIxPAyeB5fZb-YQUYu4quWF-eI6vEaH-bOzyWO43t1sIELA3bNTG_B_OhBUjNilLaU0MKDfbMs8VF79vZ5G4feuJY9OT9TzitU6gk1H6ezg--ccG29k8IWJkXvsKahzLBJ-RxcatfGd86jMJsRHF4dpzLQqNF-9aVVPqgZHMzRWT6LOGTk3sES0gdsB1ksgzlV-kIvPCuggWNJKpvA_ACL3k4IjjZ2Opx-1rNYivmX-tzMNj2SV8wdffhobn0W4nfA582f_QEkNLSOH2cFR-v8ULa3y1U8Asp2zcaQFUbyz8zvCwNDvNcWuquoNf5f1Il4idf4koZkgpejXVjGTukUO5n01TojWDzJEpEfZgR7J3-8iUMZHq1Y6BNQ09x0Zw3AjOA6VpVvoHgBvlQsd4vKFtjgtIxOV5kbqZ_Qm6WVU76T39gbmtrSo4FcB3h6sDPG72w3orSOX0_fYcZK9cLZGzk2pb9H6NMrxdLamYstWpUPrG-u2wsuOuDI6-teHKV0sbO4sz0tCVoCR2KkWVeSTkpW1sLs",
            ]
        switch self {
        case .updateProfile:
            return header
        }
    }
}

