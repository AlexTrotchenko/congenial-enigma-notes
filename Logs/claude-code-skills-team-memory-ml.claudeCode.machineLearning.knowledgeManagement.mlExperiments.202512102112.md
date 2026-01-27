---
title: Literature Note - How We Use Claude Code Skills to Run 1,000+ ML Experiments a Day
author: Sigrid Jin
date: 202512102112
tags: [claudeCode, machineLearning, knowledgeManagement, mlExperiments, teamCollaboration, aiTools]
source: https://huggingface.co/blog/sionic-ai/claude-code-skills-training
type: literature
---

# Key Takeaways from How We Use Claude Code Skills to Run 1,000+ ML Experiments a Day

## Summary
Sionic AI developed a "team memory" system for Claude Code that captures experimental knowledge through two commands: `/retrospective` (saves learnings as shareable "skills" after sessions) and `/advise` (retrieves relevant team knowledge before starting new work). This approach solves the common ML team problem of lost institutional knowledge buried in Slack threads and forgotten notebooks, enabling researchers to avoid repeating experiments and leverage collective discoveries.

## Key Points
- The `/retrospective` command lets Claude automatically extract insights from experiment sessions and create structured "skill" files that get merged into a shared registry via pull request
- The `/advise` command searches the team's skill registry before new experiments, surfacing relevant past findings including failure modes and working hyperparameters
- Effective skills require specific trigger conditions in descriptions (e.g., exact error messages), documented failure attempts, and concrete copy-paste configurations rather than vague advice
- The system addresses a fundamental knowledge management problem: getting people to document learnings is hard, but having Claude write the documentation while context is fresh removes this friction
- Skills follow a standardized structure including `plugin.json` for metadata, `SKILL.md` for core knowledge, troubleshooting docs, and reusable scripts
- The cultural adoption challenge is harder than the technical implementation—success requires seeding the registry with real experiments and making contribution nearly effortless

## Questions
- How does the skill relevance matching work when experiments span different domains but share methodological approaches?
- What governance or review processes prevent skill bloat or conflicting advice from accumulating over time?
- How transferable is this approach to teams not already using Claude Code as their primary development interface?
- What metrics indicate that the skills system is actually reducing duplicate experiments versus just adding documentation overhead?

## Source
[Original Article](https://huggingface.co/blog/sionic-ai/claude-code-skills-training)
