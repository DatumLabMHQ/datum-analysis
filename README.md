# datum-analysis

The workspace for any analysis, report or product idea on Datum's data. Clone it, open Claude Code in it, ask.
Nothing here is personal to a machine: the rules live in `CLAUDE.md`, the definitions in `datum-context`, the
numbers in the platform, and the only secret is an API key you hold as an environment variable.

## Setup, once per person (about two minutes)

1. Clone this repository and pull the definitions beside it:
   ```bash
   git clone https://github.com/DatumLabMHQ/datum-analysis && cd datum-analysis && ./setup.sh
   ```
2. Get a platform API key from Olusegun and put it in your shell profile (`~/.zshrc`):
   ```bash
   export DATUM_API_KEY=...
   ```
   Open a new terminal window so it takes effect. The key never goes into this repository.
3. Open Claude Code in this folder (the desktop app: open the folder as the project; the terminal: `claude`).
   The first time, Claude asks whether to trust the project's MCP server; say yes. It is our own API at
   `datum-api-datumlabs1.vercel.app`.

Check: ask Claude "run the datum health tool and list the products". It should name the last build time and
the products (sui, rwa, morpho, aave, centrifuge, defillama).

## How to ask

- **A number:** "What was Steakhouse's share of Morpho vault TVL yesterday?"
- **An analysis:** give the question, the audience and the window first: "Question: has lending on Sui grown
  since February? Audience: newsletter readers. Window: 19 Feb to today." Add "use the defi-data-research
  skill" for anything that will be shared.
- **A product or dashboard idea:** just say it. Claude opens a brief with the build kit and asks you the
  framing questions; nothing is built before the brief is signed.

`CLAUDE.md` holds the rules Claude follows in this folder; `datum-context/` the definitions; the platform's
current state is one `health` call away.
