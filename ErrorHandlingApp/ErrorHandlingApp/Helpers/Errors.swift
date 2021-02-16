//
//  Errors.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 14.02.2021.
//
import UIKit

enum DownloadError: Error {
    case unauthorized
    case notFound
    case invalidModel
    case internalServer
    case emptyData
}
