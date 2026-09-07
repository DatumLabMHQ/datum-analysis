# datum-analysis

The workspace for any analysis, report or product idea on Datum's data. Clone it, open Claude Code in it, ask.
Nothing is personal to a machine and there are no keys: the rules live in `CLAUDE.md`, the definitions in
`datum-context`, the numbers in the platform, and access is your membership of the DatumLabMHQ GitHub organisation.

## Setup, once per person (two minutes)

1. Clone this repository and pull the definitions beside it:
   ```bash
   git clone https://github.com/DatumLabMHQ/datum-analysis && cd datum-analysis && ./setup.sh
   ```
2. Open Claude Code in this folder (desktop app: open the folder as the project; terminal: `claude`).
   The first time, Claude asks whether to trust the project's MCP server (`datum-mcp.datumlabs.workers.dev`,
   ours); say yes.
3. Ask Claude to "run the datum health tool". A browser tab opens: **Continue with GitHub**, sign in, approve.
   The tab closes and you never see it again. Only members of DatumLabMHQ get through.

Check: "list the products" should name sui, rwa, morpho, aave, centrifuge and defillama with their resources.

## How to ask

- **A number:** "What was Steakhouse's share of Morpho vault TVL yesterday?"
- **An analysis:** give the question, the audience and the window first: "Question: has lending on Sui grown
  since February? Audience: newsletter readers. Window: 19 Feb to today." Add "use the defi-data-research
  skill" for anything that will be shared.
- **A product or dashboard idea:** just say it. Claude opens a brief with the build kit and asks you the
  framing questions; nothing is built before the brief is signed.

`CLAUDE.md` holds the rules Claude follows in this folder; `datum-context/` the definitions; the platform's
current state is one `health` call away.
