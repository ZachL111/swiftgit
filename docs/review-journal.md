# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its developer tools focus without claiming live deployment or external usage.

## Cases

- `baseline`: `change width`, score 66, lane `hold`
- `stress`: `diagnostic quality`, score 197, lane `ship`
- `edge`: `review cost`, score 211, lane `ship`
- `recovery`: `safe rewrite`, score 220, lane `ship`
- `stale`: `change width`, score 191, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
