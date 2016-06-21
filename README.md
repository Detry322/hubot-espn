# hubot-espn

Get live sports data for most major sports leagues!

Leagues available:

- NBA
- NHL
- NFL
- MLB
- WNBA

Live score data accessible through `hubot espn NBA`, etc. Example Response:

```
> hubot espn MLB
Scores:
- ^Arizona 3   Philadelphia 1 (FINAL)
- San Francisco 0   Pittsburgh 0 (BOT 4TH)
- Chicago Sox 1   Boston 0 (BOT 4TH)
- Tampa Bay 3   Cleveland 1 (TOP 5TH)
- Seattle 4   Detroit 3 (TOP 3RD)
- Colorado 3   Miami 2 (TOP 4TH)
- Baltimore 0   Texas 0 (TOP 1ST)
- St. Louis 0   Chicago Cubs 0 (TOP 1ST)
- LA Angels 0   Houston 0 (TOP 1ST)
- Washington at LA Dodgers (10:00 PM ET)
```

See [`src/espn.coffee`][espn] for full code.

## Installation

In hubot project repo, run:

`npm install hubot-espn --save`

Then add **hubot-espn** to your `external-scripts.json`:

```json
[
  "hubot-espn"
]
```

## License

Copyright (c) 2015 Jack Serrino. Released under the MIT License. See
[LICENSE.md][license] for details.

[espn]: src/espn.coffee
[license]: LICENSE.md
