# Blog Ideas

## Current Lineup

1. **Designing Synthetic Data So Your Model Tells the Truth.**
   The house methodology post. Plant a known signal with SDV and Faker, then prove the pipeline recovers it. Downstream star: you can finally trust your interpretation because you know the ground truth you are comparing against.

2. **Predicting Churn Before You Have Churn Data.**
   Synthesize customers with realistic drivers, then build a classifier. Downstream star: calibrated probabilities feeding a cost-aware retention decision, ending on who to contact and the expected value of doing so.

3. **A Revenue Forecast Your CFO Can Actually Plan Around.**
   Trend, seasonality, and promo bumps, baseline versus fancier model. Downstream star: turning prediction intervals into a planning narrative leadership enjoys reading, not one scary point estimate.

4. **What Should This Unit Rent For?**
   Regression on a synthesized rental market. Downstream star: reading coefficients as pricing levers a stakeholder gets excited to pull, with honest guardrails on extrapolation.

5. **What Actually Is an Agent? Loops, Harnesses, and the Moving Parts.**
   Launches the explainer pillar. Downstream star: a plain breakdown of the anatomy plus a take on when an agent earns its complexity.

## Post One Notes

**Working title:** Designing Synthetic Data So Your Model Tells the Truth.

**Format:** Blowfish-ready Markdown post for `content/posts/`.

**Target length:** About 1,000 words with working code.

**Core framing:** Open on a real-world modeling problem, then show how to design synthetic data with a known relationship by hand so the correlation between drivers and churn is controlled.

**Method:** Use a handwritten data generating process as the true star and cast SDV as the realism layer. Recover the planted relationship with `statsmodels` so confidence intervals can be interpreted against known ground truth.

**Downstream payoff:** Interpretation is defensible. You can point at a coefficient and explain what it means because you designed the truth it is measured against.

**Tools and citations to include:**

- SDV citation from the verified SDV paper.
- CTGAN paper citation.
- Faker as the lightweight tool for realistic-looking fields.
- SDV as the tool for realism and distributional structure.

**Scope choice:** Keep the churn example lightweight because the second post goes deeper on churn. This post should stay about methodology, not churn specifically.

**Open revision option:** If the post should lead with SDV itself doing the correlation work instead of a handwritten data generating process, reshape the draft around that.

