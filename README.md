# semlayer SQL check: a demo

A small repository that shows the
[semlayer SQL check](https://github.com/marketplace/actions/semlayer-sql-check)
GitHub Action at work.

- `layer.yaml` is a semantic layer that semlayer inferred from its sample
  warehouse, a made-up retailer with 36 tables. It was built with no AI model.
- `sql/` holds the queries. Every pull request that touches them is checked
  against the layer by `.github/workflows/sql.yml`.

## See it

[Pull request #1](../../pull/1) adds a query that runs without an error and
returns $59.8 million where the right figure is $14.6 million. Open its
**Files changed** tab: the check has written two findings on the lines that
cause them, each with a fix.

## Use it in your own repository

```yaml
- uses: semlayer-dev/semlayer@v0.7.0-beta.8
  with:
    mode: lint
    layer: layer.yaml
```

Build a layer for your own data with the
[semlayer CLI](https://github.com/semlayer-dev/semlayer), or try it first in a
browser tab at https://try.semlayer.dev.
