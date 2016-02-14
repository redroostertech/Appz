//
//  Notes.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Notes: ExternalApplication {
        
        public typealias ActionType = Applications.Notes.Action
        
        public let scheme = "mobilenotes:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Notes {
    
    public enum Action {
        case Open
    }
}

extension Applications.Notes.Action: ExternalApplicationAction {
    
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
