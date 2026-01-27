# Anthropic + Netflix: Building AI Agents at Scale

## Key Takeaways from the Event

---

## Part 1: Anthropic's Perspective on Developing Agents

### Company Overview
- Anthropic develops world-class AI models while prioritizing trustworthy AI systems
- Accelerating pace of model development: 5 model launches in the last year alone
- Each release offers step-change improvements in capabilities

### Recent Model Releases

**Sonnet 4.5**
- Most capable model for complex agents
- Best coding and computer use model available
- Enables significantly longer autonomous work sessions

**Haiku 4.5**
- Balances near-frontier performance with speed and affordability
- Great for free-tier use cases and scaling sub-agents

### New Platform Capabilities

1. **Memory Tools**: Allow Claude to save context outside the context window, enabling agents that improve over time and personalize to users

2. **Context Editing**: Automatically prunes old tool results from the context window to maximize available working memory

3. **Skills Feature**: Package common capabilities (spreadsheets, PowerPoints, etc.) into reusable assets shareable across organizations

4. **Claude Agent SDK**: Packages the Claude Code harness for building custom agents across diverse use cases

### The Future of Agents

**Contextual Intelligence**
- Agents that understand unique organizational environments
- Continuous learning from experience
- Personalization to user preferences

**Long-Running Execution**
- Models operating autonomously over extended time horizons
- Capability to accomplish broader efforts requiring multiple tasks
- Example: Debug production issue → pull logs → run analysis → chat with team → fix bug → open PR → run smoke test

**Genuine Collaboration**
- Agents as thought partners, not just instruction-followers
- Ask clarifying questions and push back when needed
- Scale human productivity through partnership

---

## Part 2: Netflix GenAI Platform Strategy

### Platform Philosophy

> "Be very opinionated about what kinds of capabilities we must provide, but stay intentionally flexible so you can change out individual building blocks with minimal disruption."

### Core Platform Capabilities

**1. Platform Basics**
- Rate limiting and flow management
- Resilience patterns
- DevOps and developer-focused interfaces
- Build time and latency optimization
- **Critical**: Identity and permissions for workflows/agents (work closely with security/privacy teams)

**2. Evaluations (Evals)**
- Encode preferences about how AI applications should behave
- Measure whether they're actually meeting those standards
- Using Braintrust for observability and eval capabilities
- Evals are as much about process and practice as tooling
- Identify both failures AND opportunities for improvement

**3. Tools (via MCP)**
- How agents interface with legacy systems and third-party components
- MCP provides normalized interface for tools
- Robust internal ecosystem of MCP tools
- Consider ownership, observability, and long-term maintainability

**4. Retrieval**
- Getting company-specific context to agents in the right form
- Netflix has a dedicated retrieval team
- Abstraction enables changing implementation styles easily
- Pre-indexing for important resources

---

## Part 3: Netflix Developer Productivity Implementation

### The Journey

**Before AI Assistants**
- Low satisfaction and poor uptake of early AI tools
- Key complaint: "Code is okay, but not connected to our standards and practices"

**After Evaluation Pilot**
- Claude Code selected as primary coding assistant
- Key metrics: **Utilization** and **Sentiment** (not just adoption)

### DeveLOp Profiles System

A dynamic configuration system that:
- Queries backend at Claude Code startup
- Computes appropriate profile based on:
  - Developer's team
  - Current codebase
  - Security factors
  - Other metadata
- Configures MCP tools and plugins just-in-time
- Works consistently across laptops and remote dev environments

### Default MCP Servers
- General suite of tools (available to everyone)
- Engineering-focused tools
- Commands and tools filter based on codebase metadata

### Current Results

| Metric | Result |
|--------|--------|
| Token usage growth | ~10% increase per user month-over-month |
| Developer satisfaction (CSAT) | Significantly north of 90% |
| Support load | Gradually decreasing despite user growth |

> "Claude Code with Sonnet 4.5 and Netflix context = Happy developers"

### Future Roadmap

1. **More Context**: Get more internal frameworks, practices, and platform knowledge into the context delivery mechanism

2. **Deeper Orchestration**: Sub-agents and task follow-through support

3. **Large Migrations**: Claude Code as the engine for major version upgrades (e.g., Java migrations)

4. **Java/Kotlin Ecosystem**: Better coverage for Netflix's large native ecosystem

5. **Rapid Feature Deployment**: New capabilities out to developers within days

---

## Part 4: Context Delivery & Evaluation Systems

### Context Delivery Architecture

**Two Approaches:**
1. **High-quality AI workflows**: MCP prompts, skills, or agents
2. **Ambient context**: Engineering platform documents and code examples via agent search tools

**Key Principles:**
- Context must be information-dense and faithful to ground truth
- Filter and summarize documentation where necessary
- Use project signals (dependency files) to calibrate relevant context
- Target specific developer toils: testing edge cases, fixing builds, migrations, performance issues

### Multi-Level Evaluation Strategy

| Level | What It Measures |
|-------|------------------|
| Single-turn evals | Prompt/completion pairs for response quality |
| Workflow evals | Tool calls and observable outputs |
| High-fidelity benchmarks | Real engineering tasks with build/code validation at scale |

### Eval Data Sources
- Real user queries captured by Braintrust
- Simulated queries derived from platform documentation
- Expert review for ground truth validation

### Metrics Used
- Normalized Discounted Cumulative Gain (NDCG)
- Context precision and recall
- Response quality metrics (via Ragas)

### Sonnet 4 → Sonnet 4.5 Improvements

| Metric | Improvement |
|--------|-------------|
| Answer correctness | +10% higher |
| Response time | 10% faster |
| Turns to complete tasks | 6% reduction |
| Tool call errors | **43% reduction** |

> "Substantially fewer tool call errors result in more reliable workflows."

### Example: Nebula 10 Upgrade Agent Workflow

```
Code Analyzer Agent
    ↓ Fetches Nebula context and upgrade guide
    ↓ Analyzes Gradle build logic
    ↓ Checks known edge cases
    ↓
Build Engineer Agent
    ↓ Fixes breaking changes
    ↓ Verifies build functionality
    ↓
Code Analyzer Agent (verification)
    ↓
Docs Editor Agent
    ↓ Updates README and developer-facing docs
```

**Impact**: Migrations that normally take hours per app can save weeks/months at scale.

---

## Part 5: Fireside Chat Highlights

### Cultural Shift
- Training 3000+ developers to be "agent orchestrators"
- AI Champions cross-pollinate patterns and practices
- It's not just about tools—requires human connection and ground game

### Handling Bad Context
- AI workflow quality tools include docs faithfulness checks
- Documentation health tools identify outdated/poor content
- AI can summarize or update problematic documentation
- Platform-level security guardrails protect against bad context

### Biggest Surprise
> "Claude Code is unfortunately named. It's really being used for much more than just code."

The general-purpose nature of the harness enables everything from calendar management to data analysis to arbitrary automation.

### Measuring ROI
- Organizational view of productivity (not just PRs)
- Developer happiness compounds over time
- Leverage traditional frameworks: DORA, SPACE
- Success stories become patterns for the organization
- Token usage as directional metric (efficiency improvements amplify the signal)

### Future of Software Development
- Higher levels of abstraction on top of existing abstractions
- Need better tools for understanding complexity
- Systems thinking methodologies become more important
- Next generation needs broader perspective given AI capabilities

---

## Key Quotes

> "If you look at the delta between Opus 4 and Sonnet 4.5, we've seen a really dramatic increase in the amount of hours these models can work autonomously."

> "These capabilities are all well and good, but they don't mean anything unless people are actually building incredible stuff with them."

> "If we can keep our developer community happy, we assume those gains compound."

> "It would be easier to answer where we're NOT being impacted. Virtually nobody at Netflix knows exactly how this technology is going to transform the way we operate."

---

## Action Items for Organizations

1. **Invest in platform basics**: Rate limiting, identity/permissions, resilience
2. **Build eval infrastructure early**: Both tooling and organizational practice
3. **Standardize on MCP**: Creates composable, maintainable tool ecosystem
4. **Measure sentiment, not just adoption**: Happy developers = compounding productivity
5. **Create context delivery systems**: High-quality, calibrated context is essential
6. **Partner with security/privacy**: Agent identity and permissions are complex
7. **Embrace cultural change**: Ground game and human connection matter
8. **Stay flexible**: Architect for change, be opinionated about capabilities not implementations
