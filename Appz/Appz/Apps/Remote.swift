//
//  Remote.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Remote: ExternalApplication {
        
        public typealias ActionType = Applications.Remote.Action
        
        public let scheme = "remote:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Remote {
    
    public enum Action {
        case Open
    }
}

extension Applications.Remote.Action: ExternalApplicationAction {
    
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
