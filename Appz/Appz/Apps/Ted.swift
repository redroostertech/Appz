//
//  Ted.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Ted: ExternalApplication {
        
        public typealias ActionType = Applications.Ted.Action
        
        public let scheme = "ted:"
        public let fallbackURL = "https://www.ted.com"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ted {
    
    public enum Action {
        case Open
    }
}

extension Applications.Ted.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
