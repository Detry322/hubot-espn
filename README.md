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
> hubot espn NBA
Scores:
Cleveland 77   Golden State 76 (11:12 IN 4TH)
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
