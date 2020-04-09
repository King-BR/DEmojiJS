###
# @author Jinzulen
# @license Apache 2.0
# @copyright Copyright (C) 2020 Jinzulen <https://github.com/Jinzulen>
###

API = require "../../API/EmojiAPI"

module.exports = new class getAll
    constructor: (Callback) ->
        return new Promise (Resolve, Reject) ->
            API.contactAPI "https://discordemoji.com/api/", (Error, Data) ->
                if Error then Reject Error else Resolve Data