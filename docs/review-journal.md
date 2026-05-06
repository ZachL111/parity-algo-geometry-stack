# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 129, lane `watch`
- `stress`: `search depth`, score 123, lane `watch`
- `edge`: `boundary pressure`, score 222, lane `ship`
- `recovery`: `complexity`, score 246, lane `ship`
- `stale`: `input width`, score 222, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
