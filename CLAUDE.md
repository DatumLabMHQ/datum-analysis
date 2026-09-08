# Datum analysis workspace

You are in Datum Labs' analysis workspace. Every session here is about Datum's data: an analysis, a report,
a quick number, or a product idea. Follow these rules without being asked.

## Where the numbers come from
- The Datum data platform, through the `datum` MCP server (tools: list_products, list_questions, ask, query,
  health). Every figure you write must come from it, or you say plainly that the platform does not hold it.
  If the server is missing or refuses, tell the person to run `./setup.sh`, reopen Claude Code in this folder,
  and complete the GitHub sign-in when the browser tab opens; do not guess numbers.
- `datum-context/` (pulled by setup.sh) is the written-down half: `metrics/` are the definitions (tvl-net,
  tvl-gross, supply-apy, borrow-apy, utilization), `protocols/` the notes, `house/` the rules, `products/`
  what each product holds and its gaps, `evals/divergence-log.md` every known disagreement with other
  sources. Read the relevant metric and product files before quoting a number.

## Rules for any number you write
1. Cite the table and the day: "morpho.fct_morpho_curator_daily, 2026-09-07".
2. Use the house definition from datum-context/metrics. If the reader will compare with DefiLlama or a
   protocol's own UI, show both and name the difference.
3. Call `health` first; if a source is stale or a job errored, say so next to the number.
4. Known traps are in datum-context/products/*.md (unlisted Morpho markets, Aave v4 spoke utilization, the
   RWA total-AUM vs RWA-AUM naming, Suilend on the legacy copy). Do not restate a trap as a finding.
5. A disagreement you find between the platform and any other source becomes a proposed row for
   datum-context/evals/divergence-log.md, in that file's format, for the owner to commit.

## Kinds of work
- **"3 step" + a link or a question:** the house summary format, defined in datum-context/house/3step.md:
  one paragraph, then two, then three, each prefix self-contained, nothing repeated, labels "Layer 1/2/3".
- **Quick question:** ask the MCP directly; answer with value, unit, date, table.
- **Analysis or report:** confirm the question, audience and window before pulling rows; use `query` for
  rows and `ask` for the canonical questions; write with the defi-data-research skill for anything that will
  be shared; every chart from platform rows; sources numbered.
- **A new product or dashboard:** do NOT build. Open a brief with datum-databuild-kit
  (`bin/datum new brief <slug>` in a clone of that repository), ask the owner the seven questions in it,
  capture ground truth, and stop until the brief is signed off.

## What the platform does not hold yet (say so, do not estimate)
Morpho and Aave history before 2026-09-04; Sui liquidations from 28 Jul to mid-Aug 2026; SparkLend, Fluid,
Euler and the lending-intelligence terminal beyond DefiLlama TVL; positions and wallets; anything on chains
or protocols not listed by `list_products`.
