//
//  CMBaseProvider.swift
//  ConnectMusics
//
//  Created by guillaume chieb bouares on 31/01/2017.
//  Copyright © 2017 com.github.shemana.application. All rights reserved.
//

import Foundation

@objc public protocol CMBaseProvider {
    
    var type: ProviderType { get set }
    
    static func createProviderInstance(cliendID:String?,clientSecret:String?,redirect_uri:String?,scopeNeeded:String?) -> CMBaseProvider
    func getPlaylists(completionHandler:@escaping (_ error:String?) -> Void)
    
    @objc optional func login(withAuthenticationCode:String)
}
