###
# @author Jinzulen
# @license Apache 2.0
# @copyright Copyright 2020 Khalil G. <https://github.com/Jinzulen>
###

FS         = require "fs"
Path       = require "path"
JSONDB     = require "node-json-db"
JSONConfig = require "node-json-db/dist/lib/JsonDBConfig"

module.exports = new class EmojiCache
    constructor: () ->
        this.Storage = new JSONDB.JsonDB(new JSONConfig.Config("./Cache/DiscordEmoji", true, false))

        this.Storage.push "/Stats"
        this.Storage.push "/Emoji"
        this.Storage.push "/Packs"
        this.Storage.push "/Categories"

    getCache: (Store) ->
        try
            Data = this.Storage.getData("/")["#{Store.replace "/", ""}"]

            if typeof Data != "undefined" then return Data else return false
        catch E
            throw E

    setCache: (Store, Data) ->
        try
            this.Storage.push Store, Data
        catch E
            throw E
