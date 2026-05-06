# swiftgit

`swiftgit` is a compact Swift repository for developer tools, centered on this goal: Read loose Git object headers and summarize object kinds.

## Why I Keep It Small

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how change width and review cost should influence a review result.

## Swiftgit Review Notes

`recovery` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for change width and diagnostic quality.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/swiftgit-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `safe rewrite` and `change width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `change width`, `diagnostic quality`, `review cost`, and `safe rewrite`.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 220, which lands in `ship`. The most cautious case is `baseline` at 66, which lands in `hold`.

## Scope

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
