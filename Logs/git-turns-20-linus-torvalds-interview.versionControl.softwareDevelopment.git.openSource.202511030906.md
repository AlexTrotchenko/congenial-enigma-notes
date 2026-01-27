---
title: Literature Note - Git Turns 20: A Q&A with Linus Torvalds
author: Taylor Blau (interviewer), Linus Torvalds (interviewee)
date: 202511030906
tags: [versionControl, softwareDevelopment, git, openSource, distributedSystems, toolDesign]
source: https://github.blog/open-source/git/git-turns-20-a-qa-with-linus-torvalds/
type: literature
---

# Key Takeaways from Git Turns 20: A Q&A with Linus Torvalds

## Summary
Linus Torvalds reflects on creating Git in approximately 10 days during April 2005 as a pragmatic solution to replace BitKeeper for Linux kernel development. The interview reveals how Git's core design principles—distributed architecture, performance, and data integrity through SHA-1 hashing—were shaped by Torvalds' file system background and his disdain for existing source control systems. Despite maintaining Git for only four months before handing it to Junio Hamano, the tool's success has far exceeded expectations, now dominating with approximately 98% market share.

## Key Points
- Git was developed in roughly 10 days of intensive coding, though Torvalds had spent 4 months prior mentally working through design concepts after losing BitKeeper access due to reverse engineering conflicts
- The distributed nature was a fundamental design goal, making every repository equal with no special "master" repository, which enabled easy collaboration and services like GitHub to flourish with minimal infrastructure
- Performance was critical—Torvalds needed to apply 50-100 patches in under a minute rather than the half-minute-per-patch that other SCMs required, making it a quality-of-life issue where instant feedback enables better workflow
- SHA-1 hashing was chosen primarily for corruption detection and data integrity rather than security, ensuring absolute protection of all data with "a really good hash"
- The design philosophy mirrors Unix—simple core concepts (everything is a file/process) with complex implementation details, making it conceptually elegant but practically sophisticated
- Initial adoption was difficult with significant complaints about usability and naming conventions, but a shift occurred between 2007-2010 when users began appreciating Git's power rather than complaining about its differences from CVS
- Torvalds maintained Git for only four months before recognizing Junio Hamano's "taste" through his patches and approach to code, successfully transitioning maintainership in August 2005

## Questions
- How did the decentralized design philosophy that seemed obvious in retrospect challenge the centralized SCM mindset that dominated at the time?
- What specific aspects of "taste" did Torvalds recognize in Junio Hamano that made him confident in the maintainer transition after just three months?
- Could Git's overwhelming market dominance (98%) potentially stifle innovation in version control, or does the network effect justify the consolidation?
- How did Git's design for kernel-scale projects inadvertently become the perfect tool for individual developers and small projects, and what does this say about good tool design?

## Source
[Original Article](https://github.blog/open-source/git/git-turns-20-a-qa-with-linus-torvalds/)
