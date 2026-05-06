# parity-algo-geometry-stack

`parity-algo-geometry-stack` explores algorithms with a small OCaml codebase and local fixtures. The technical goal is to package an OCaml local lab for geometry analysis with round-trip fixtures, lossless normalization checks, and documented operating limits.

## Problem It Tries To Make Smaller

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Parity Algo Geometry Stack Review Notes

Start with `complexity` and `search depth`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/parity-algo-geometry-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `search depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The OCaml code keeps the review rule close to the tests.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `recovery` is the high score at 246; `stress` is the low score at 123.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
