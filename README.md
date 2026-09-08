# datum-analysis

The workspace for any analysis, report or product idea on Datum's data. Clone it, open Claude Code in it, ask.
Nothing is personal to a machine and there are no keys: the rules live in `CLAUDE.md`, the definitions in
`datum-context`, the numbers in the platform, and access is your membership of the DatumLabMHQ GitHub organisation.

## Setup, once per person (five minutes, verified 2026-09-08)

The GitHub sign-in runs from the Claude Code command line. The desktop app can use the server afterwards but
cannot start the sign-in itself, so do steps 2 and 3 in Terminal once.

1. Clone this repository and pull the definitions beside it:
   ```bash
   git clone https://github.com/DatumLabMHQ/datum-analysis && cd datum-analysis && ./setup.sh
   ```
2. Install the Claude Code command line if `claude` is not found, and put it on your path:
   ```bash
   curl -fsSL https://claude.ai/install.sh | bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
   ```
3. Start it in this folder and sign in:
   ```bash
   cd ~/datum-analysis && claude
   ```
   - Login method: **Claude account with subscription**. The browser tab must be logged in to the Claude
     account that has the Pro or Max plan; if it says "Max or Pro is required", log out of claude.ai in the
     browser, log in with the right account, and run `claude` again.
   - "New MCP server found in this project: datum": choose **Use this MCP server**.
   - Type `/mcp`, choose `datum`, choose **Authenticate**. The browser opens the Datum approval page, then
     GitHub: sign in with your own GitHub account and authorise. Only members of DatumLabMHQ get through.
     The terminal shows "Authentication successful. Connected to datum."
4. Ask: "run the datum whoami tool, then the datum health tool". whoami shows your GitHub login; health
   shows the platform's jobs and sources.

After this, open the folder in the desktop app or the terminal, either works; the sign-in is remembered.

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
