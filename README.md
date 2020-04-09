<img align="right" width="100" height="100" src="https://i.imgur.com/Iphriti.gif">

# DEmojiJS
### DiscordEmoji's number one API client for Node-based applications.

![CodeFactor](https://www.codefactor.io/repository/github/jinzulen/demojijs/badge/dev-1.3.0?style=for-the-badge) ![NPM Version](https://img.shields.io/npm/v/demojijs?style=for-the-badge) ![NPM Weekly Downloads](https://img.shields.io/npm/dw/demojijs.svg?style=for-the-badge)

## 1. Installation
DEmojiJS is trusted by hundreds of users from all over to power their interactions with the DiscordEmoji API. Why? It's **faster** thanks to its caching features, its wide array of **versatile search** functionalities and overall **stable** performance. Not convinced?

See for yourself:
```
npm i demojijs
```

## 2. Usage Examples
> Note #1: Please keep in mind that data in the DiscordEmoji database is case-sensitive, which means that if you were to request an emoji by name, it'd be have to be "KappaYugi" not "kappayugi" or such, same thing goes for requesting an emoji by author, etc.

> Note #2: Often times, you won't be able to fetch a recently uploaded emote, this is not a fault of DEmojiJS; the data provided by DiscordEmoji themselves through their API is often outdated by a month or two, give or take.

Firstly, require DEmojiJS:
```js
const Emoji = require("demojijs");
```

- Grabbing DiscordEmoji's statistics.
```js
// Grab all statistics.
Emoji.Statistics().then(Data => {
    console.log(`DiscordEmoji has ${Data.emoji} emojis, ${Data.users} users, ${Data.faves} favorited emojis and ${Data.pending_approvals} emojis pending approval.`);
}).catch(console.error);
// DiscordEmoji has 15660 emojis, 126446 users, 103646 favorited emojis and 17 emojis pending approval.

// Grab individual statistics.
Emoji.Statistics(["users", "faves"]).then(console.log).catch(console.error);
// { users: 126468, faves: 103702 }
```

- Grabbing a random emote.
```js
Emoji.randomEmoji().then(console.log).catch(console.error);
```

- Grabbing all emotes.
```js
Emoji.allEmoji().then(console.log).catch(console.error);
```

- Grabbing an emote by ID.
```js
Emoji.emojiByID(1).then(console.log).catch(console.error);
```

## 3. License
This module is publisher under the [Apache 2.0](https://github.com/Jinzulen/DEmojiJS/blob/master/LICENSE.md) license.
