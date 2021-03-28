//
//  Errors.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 14.02.2021.
//
import UIKit

enum ApiError: Error {
    case unauthorized
    case notFound
    case invalidModel
    case internalServer
    case emptyData
}

func handleApiError(error: ApiError) {
    switch error {
    case .internalServer, .notFound:
        Alert().showAlertError(title: "Not found", message: "We have some problems with our server")
    case .invalidModel:
        Alert().showAlertError(title: "Invalid model", message: "We have some problems with data parsing")
    case .unauthorized:
        Alert().showAlertError(title: "Auth error", message: "We have some problems with authorization token")
    case .emptyData:
        Alert().showAlertError(title: "Empty data", message: "We got the empty data")

    }
}


