//
//  Playlist.swift
//  ConnectMusics
//
//  Created by guillaume chieb bouares on 04/02/2017.
//  Copyright © 2017 com.github.shemana.application. All rights reserved.
//

import MediaPlayer

public class CMPlaylist: NSObject {

    public var name:String = ""
    public var mediaItem:AnyObject?
    public var provider:ProviderType?
    
    public static func initPlaylistFromAppleMusic(playlistItem:MPMediaPlaylist) -> CMPlaylist {
        let playlistInstance:CMPlaylist = CMPlaylist()
        
        playlistInstance.name = playlistItem.name!
        playlistInstance.mediaItem = playlistItem
        playlistInstance.provider = .appleMusic
        
        return playlistInstance
    }
    
    public static func initPlaylistFromSpotify(playlistItem:CMSpotifyPlaylist) -> CMPlaylist {
        let playlistInstance:CMPlaylist = CMPlaylist()
        
        playlistInstance.name = playlistItem.name
        playlistInstance.mediaItem = playlistItem
        playlistInstance.provider = .spotify
        
        return playlistInstance
    }
    
}
