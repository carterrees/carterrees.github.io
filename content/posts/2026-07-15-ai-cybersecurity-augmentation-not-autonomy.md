---
title: "AI Cybersecurity Is an Augmentation Story, Not an Autonomy Story"
date: 2026-07-15
draft: false
tags: ["ai", "cybersecurity", "agents", "security", "llms"]
summary: "AI is already useful in security operations, but the evidence points to supervised augmentation rather than autonomous defense. The practical question is not whether to use AI, but where to put the leash."
---

Every few years cybersecurity gets a new promise of automation. The current version is the autonomous security agent. It watches logs, detects anomalies, triages alerts, investigates incidents, patches systems, adapts to phishing, and responds before a human can blink.

That story is attractive because security teams are buried. Alert queues are too large. Attack surfaces keep expanding. Analysts are expensive and scarce. An AI system that can absorb the noise and act faster than attackers sounds less like a luxury and more like a survival strategy.

The evidence says something more useful, and less cinematic.

AI already works in cybersecurity when it is used as an augmentation layer. It can reduce alert volume. It can enrich investigations. It can filter false positives. It can help analysts decide what deserves attention. The same evidence does not support handing it broad authority to act alone. Current systems know more about security than they can reliably do. They are strong on language-heavy classification, weaker on code and multi-step operations, and fragile under prompt injection, drift, weak benchmarks, and legal accountability.

The practical conclusion is not "avoid AI in cybersecurity." It is this: use AI where the cost of a mistake is bounded, the human remains the decision-maker, and the system produces evidence that can be audited. Put the leash where the blast radius begins.

## The Useful Distinction: Augmentation Versus Autonomy

The cleanest way to evaluate AI in cybersecurity is to separate two roles.

Augmentation means AI helps a human analyst. It clusters alerts, summarizes logs, retrieves context, drafts hypotheses, ranks incidents, or filters noise. The human still owns the decision.

Autonomy means AI takes consequential action without human approval. It blocks accounts, quarantines systems, patches software, changes firewall rules, or executes incident response steps on its own authority.

Most optimistic claims slide between those two meanings. The evidence does not. Augmentation has strong support. Autonomy is still a research frontier.

A security team does not need a philosophical definition of agency here. It needs a control policy. The useful question is: if this model is wrong, what can it break before a human notices?

That question changes the deployment plan.

## Where AI Already Earns Its Keep

The strongest case for AI is alert triage. That is not a small use case. It is one of the core bottlenecks in security operations.

Security teams face a base-rate problem before they face a modeling problem. Attacks are rare relative to normal activity. A detector can look impressive on paper and still flood analysts in practice. If a system sees ten million events and only a tiny fraction are real attacks, even a low false-positive rate can create more noise than the team can inspect.

That is where augmentation helps. AI does not need perfect autonomy to be useful. It needs to reduce the analyst's search space without hiding the evidence.

DEEPCASE is the cleanest example from the research article I reviewed. It clustered security event sequences so an analyst could classify a group from one representative sample. On 10.5 million real events, it cut analyst workload by 90.53 percent while underestimating risk in fewer than 0.001 percent of cases (van Ede et al., 2022). That is exactly the kind of result security teams should care about. The model did not replace the analyst. It changed the analyst's unit of work.

Static-analysis triage shows a similar pattern. One LLM-agent filter cut OWASP false positives from more than 92 percent to as low as 6.3 percent (Xiong et al., 2026). The result matters because static analysis often fails socially before it fails technically. Developers ignore tools that cry wolf. A good AI layer can make the existing tool more usable by separating likely real findings from noise.

This is the first operating rule: give AI work where the output is a ranked queue, a cluster, a summary, or a recommendation. Do not start by giving it irreversible authority.

## Detection Is Not One Capability

The phrase "AI detects threats" hides too much. Threat detection is not one task. It is a bundle of tasks with different data types, base rates, and failure modes.

Language-heavy detection looks promising. DefenderBench reported macro-F1 up to 96.80 on malicious-text detection and 91.00 on malicious-web detection (Zhang et al., 2025). That makes sense. LLMs are strong at language and web content. They can use semantic cues that rules and signatures miss.

Code-level vulnerability detection is a different story. In the same benchmark, the best macro-F1 for code vulnerability detection was only 58.20 to 59.60, which the authors described as only slightly better than random (Zhang et al., 2025). That gap should change how teams buy and deploy these systems. A model that is useful for phishing analysis is not automatically useful for vulnerability detection.

Field performance also drops when the data gets harder. Phishsense-1B scored 97.5 percent on a custom phishing set but fell to 70 percent on a challenging real-world set (Blake, 2025). Older malware work shows why this happens. Evaluation can leak future information. Labels can become unavailable at deployment time. Malware changes over time. Pendlebury et al. (2018) showed that common malware-classification benchmarks could report F1 near 0.99 while spatial and temporal bias inflated the result.

The downstream interpretation is simple. Do not ask, "What is the model's detection accuracy?" Ask, "Detection of what, under what base rate, on what future data, with what false-positive cost?"

That is a more annoying question. It is also the question that keeps an AI security deployment honest.

## The Knowledge-Action Gap

The strongest argument against near-term autonomy is the knowledge-action gap.

Many frontier models can answer cybersecurity questions. They can explain vulnerabilities. They can identify suspicious patterns. They can summarize threat intelligence. But operational security is not a quiz. It is a multi-step, stateful, adversarial workflow.

CAIBench makes that gap visible. The benchmark separates cybersecurity knowledge from operational capability across more than 10,000 instances. Frontier models scored 70 percent to 89 percent on knowledge questions but only 20 percent to 40 percent on multi-step attack and defense (Sanz-Gomez et al., 2025). Knowing security is not the same as doing security.

Incident response shows the same pattern. SIR-Bench found that a reference incident-response agent reached 97.1 percent true-positive detection but only 73.4 percent false-positive rejection (Begimher et al., 2026). That means the agent was good at noticing activity, but still weak at dismissing benign activity. In a SOC, that difference matters. Over-escalation is not harmless. It burns analyst time and trains the organization to distrust the system.

Agent benchmarks reinforce the point. Even without an adversary, current agents solved fewer than 66 percent of AgentDojo tasks (Debenedetti et al., 2024). On irregular intrusion tasks, strong models won only 44 percent to 47 percent of the time, and one capable model repeated a failed action 39 times without adapting (Zhang et al., 2025).

This is why autonomy is not just "augmentation plus confidence." It is a different risk category. The model does not merely need to classify correctly. It needs to maintain state, use tools safely, adapt when an action fails, avoid repeating mistakes, and know when to stop.

That is a high bar. Current evidence does not clear it.

## Offense Changes the Meaning of Defense

AI in cybersecurity is dual use. Any serious defense plan has to include that fact.

The most cited offensive result is both impressive and narrow. GPT-4 autonomously exploited 87 percent of one-day vulnerabilities when it was handed the CVE description, but only 7 percent without that description (Fang et al., 2024). The downstream meaning is not "AI can hack everything." It is "AI becomes much more capable when a human or external source already points it at the weakness."

That distinction matters. Exploiting a known vulnerability is not the same as discovering a novel one. In a 2026 benchmark, frontier models could not autonomously find and patch 22 novel critical vulnerabilities (Lau et al., 2026). Another realistic web-application benchmark found the best agent exploited only up to 13 percent of vulnerabilities (Zhu et al., 2025).

The offense story therefore points in two directions. AI may lower the labor cost of known-vulnerability exploitation, phishing, and repetitive offensive workflows. It does not yet prove that autonomous agents can discover and remediate novel security problems at production reliability.

For defenders, this changes the priority list. AI should be used to compress known work first: enrich alerts, map CVEs to exposed assets, summarize threat intelligence, generate investigation hypotheses, and draft remediation plans. The human still decides which plan gets executed.

## Prompt Injection Makes Autonomy Dangerous

The autonomous-agent story depends on tool use. A security agent has to read tickets, inspect logs, query systems, retrieve documents, call APIs, and perhaps make changes. Every one of those channels can carry untrusted instructions.

That is the prompt-injection problem. It is not solved.

A ReAct-prompted GPT-4 tool agent was vulnerable about 24 percent of the time, rising to 47 percent under an enhanced attack prompt (Zhan et al., 2024). Defenses reduce risk but do not remove it. AgentDojo reported that a secondary detector dropped attack success to 8 percent, not zero (Debenedetti et al., 2024). SecAlign pushed injection success below 10 percent while maintaining utility (Chen et al., 2024). Beurer-Kellner et al. (2025) argue that provable resistance requires structural design patterns, not better wording alone.

That last point is the important one. Prompt-only guardrails are not a security boundary. If an agent can take actions, the boundary has to live outside the model too. It belongs in permissions, sandboxes, tool schemas, policy engines, audit logs, approval gates, and least-privilege identities.

In other words, the model should not be trusted to decide the full scope of its own authority.

## The Governance Problem Is Not Paperwork

Autonomy also runs into audit and liability.

Security leaders cannot outsource responsibility to a model. Agents do not have legal personhood. If an AI system blocks a customer, leaks data, deletes evidence, or patches the wrong asset, the deploying organization owns the consequence.

That legal reality aligns with the technical evidence. Casper et al. (2024) argue that rigorous AI audits need more than black-box query access. The NIST AI Risk Management Framework puts governance at the center of mapping, measuring, and managing AI risk (NIST, 2023). The EU AI Act can classify cyber-AI systems as high risk when they operate in safety or critical-infrastructure contexts. GDPR Article 22 restricts solely automated significant decisions and requires meaningful human intervention.

Governance is not the opposite of engineering. It is what turns engineering into an accountable operating system. A production security agent needs an owner, a risk tier, scoped tools, approval boundaries, eval gates, rollback, incident response, and audit evidence.

Without that, autonomy is just an unowned operational risk with a better demo.

## A Practical Deployment Rule

The evidence supports a simple deployment ladder.

| Give AI this | Keep this human-owned |
| --- | --- |
| Alert clustering | Incident declaration |
| Log summarization | Containment decisions |
| Threat-intelligence retrieval | Account disablement |
| False-positive filtering | Network isolation |
| Draft remediation plans | Production patch approval |
| Investigation hypotheses | Legal or compliance notification |

The boundary is not whether AI participates. It should participate. The boundary is whether a wrong output can create a material side effect before review.

This makes AI useful sooner. A team does not need to wait for trustworthy autonomy to get value. It can deploy AI as a high-leverage analyst assistant now, as long as the outputs are observable, reversible, and reviewable.

The safest near-term target is bounded, auditable, human-supervised agents for triage, enrichment, and investigation support. Local models may make sense where confidentiality and latency matter. Sandboxing and least privilege should be defaults. Benchmarks should disclose cost, pin environments, and measure false-positive stability over time, not just aggregate F1.

## Takeaway

AI will become more prominent in cybersecurity. The mistake is assuming prominence means autonomy.

The strongest evidence points to augmentation. AI can reduce noise, speed investigation, enrich alerts, and help analysts focus. That is valuable. The weak evidence sits where the marketing is loudest: agents that independently search, decide, and mitigate threats with little human involvement.

The downstream interpretation is the whole story. If the model helps a human see the right evidence faster, use it aggressively. If the model can create an irreversible security action before a human sees the evidence, put a hard boundary around it.

AI is ready to be a force multiplier for defenders. It is not ready to be the defender of record.

## Method Note

This post adapts a longer research paper from my Research Papers folder into ThinThread form. I kept the central evidence spine, reduced the source list, and emphasized the operating decision: where AI belongs in a security workflow. Quantitative claims come from the cited research paper's source set. Recent 2026 sources should be read as early findings, especially where they are preprints.

## References

Begimher, A., et al. (2026). SIR-Bench: Investigation depth in security incident response agents. arXiv. https://arxiv.org/abs/2604.12040

Beurer-Kellner, L., et al. (2025). Design patterns for securing LLM agents against prompt injection. arXiv. https://arxiv.org/abs/2506.08837

Blake. (2025). Phishsense-1B: A technical perspective on an AI-powered phishing detection model. arXiv. https://arxiv.org/abs/2503.10944

Casper, S., et al. (2024). Black-box access is insufficient for rigorous AI audits. In *Proceedings of the 2024 ACM Conference on Fairness, Accountability, and Transparency*. https://doi.org/10.1145/3630106.3659037

Chen, S., et al. (2024). SecAlign: Defending against prompt injection with preference optimization. arXiv. https://arxiv.org/abs/2410.05451

Debenedetti, E., et al. (2024). AgentDojo: A dynamic environment to evaluate attacks and defenses for LLM agents. arXiv. https://arxiv.org/abs/2406.13352

Fang, R., et al. (2024). LLM agents can autonomously exploit one-day vulnerabilities. arXiv. https://arxiv.org/abs/2404.08144

Lau, W., et al. (2026). ZeroDayBench: Evaluating LLM agents on unseen zero-day vulnerabilities for cyberdefense. arXiv. https://arxiv.org/abs/2603.02297

National Institute of Standards and Technology. (2023). *Artificial intelligence risk management framework (AI RMF 1.0).* https://doi.org/10.6028/nist.ai.100-1

Pendlebury, F., et al. (2018). TESSERACT: Eliminating experimental bias in malware classification across space and time. arXiv. https://arxiv.org/abs/1807.07838

Sanz-Gomez, M., et al. (2025). CAIBench: A meta-benchmark for cybersecurity AI agents. arXiv. https://arxiv.org/abs/2510.24317

van Ede, T., et al. (2022). DEEPCASE: Semi-supervised contextual analysis of security events. In *2022 IEEE Symposium on Security and Privacy*. https://ris.utwente.nl/ws/files/268414561/2022.sp.pdf

Xiong, Y., et al. (2026). Sifting the noise: LLM-agent false-positive filtering for static analysis. arXiv. https://arxiv.org/abs/2601.22952

Zhan, Q., et al. (2024). InjecAgent: Benchmarking indirect prompt injections in tool-integrated LLM agents. arXiv. https://arxiv.org/abs/2403.02691

Zhang, C., et al. (2025). DefenderBench: A toolkit for evaluating language agents in cybersecurity environments. arXiv. https://arxiv.org/abs/2506.00739

Zhu, Y., et al. (2025). CVE-Bench: A benchmark for AI agents' ability to exploit real-world web-application vulnerabilities. arXiv. https://arxiv.org/abs/2503.17332
