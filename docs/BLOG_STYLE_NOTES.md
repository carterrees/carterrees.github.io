# ThinThread Blog Style Notes

## Reference Post

Reference: Lilian Weng, "Harness Engineering for Self-Improvement"

URL: https://lilianweng.github.io/posts/2026-07-04-harness/

Measured structure from the article body:

- Estimated reading time shown on page: 31 minutes.
- Approximate article-body length: 6,800 words.
- Approximate length before references: 6,150 words.
- Body headings: 16, split across major `h1` sections and nested `h2` subsections.
- Figures/images: 18.
- References: 39.
- Code blocks: 1.

## Style Notes

- Open with the historical or real-world problem before introducing the method.
- Define the core term early, then use the rest of the post to deepen that definition.
- Organize around named sections that form a conceptual map, not around a chronological literature dump.
- Use a nested table-of-contents style outline for long posts.
- Pair each technical concept with a concrete artifact: a diagram, equation, workflow, benchmark, code snippet, or table.
- Keep citations inline with the argument. Do not relegate evidence to a bibliography-only role.
- Include a future-challenges or limitations section before references.
- Use appendices for useful supporting material that would interrupt the main story.
- Write as an expert explainer: direct, technical, calm, and synthesis-heavy.

## ThinThread Length Target

Use the Lilian Weng post as the high-detail ceiling rather than the default.

- Short tactical post: 1,200 to 1,800 words.
- Standard technical post: 2,000 to 3,500 words.
- Deep research style post: 4,000 to 5,500 words.
- Flagship reference post: 5,500 to 7,000 words only when the topic needs it.

For the current synthetic-data series, aim for 2,000 to 3,500 words by default. Use 4,000 to 5,500 words when the post needs a literature-backed methodology section, reproducible code, and a decision-focused interpretation section.

## Deep Research Skill Lessons To Reuse

The local `deep-research` skill is too long and academic for every blog post, but its structure is useful.

Reusable parts:

- Start with a scope and reader promise.
- Build a source dossier before writing claims.
- Prefer academic and primary technical sources for method claims.
- Read sources before relying on them.
- Re-outline after research instead of forcing findings into the first outline.
- Include failure modes and limitations as first-class sections.
- Fact-check claims against fetched source text.
- Use a neutral methodology note for research-heavy posts.

Parts to soften for the blog:

- Write in a more conversational expert voice.
- Prefer fewer sources, read more deeply.
- Use citations where they support the argument, not as academic ornament.
- End with downstream interpretation, business meaning, or implementation choices.
- Keep the final post shorter than a full research report unless it is a flagship reference post.

## Proposed ThinThread Post Pattern

1. Hook: real-world decision, modeling pain, or misleading intuition.
2. Promise: what the reader will be able to do by the end.
3. Setup: define terms and show the toy or synthetic world.
4. Method: explain the data, model, or system with runnable code where useful.
5. Evidence: show the result, diagnostic, coefficient, interval, benchmark, or comparison.
6. Interpretation: explain what the result means downstream.
7. Guardrails: state where the interpretation breaks.
8. Takeaway: concise decision rule or mental model.
9. References: only sources that actually supported the post.

## Custom Skill Recommendation

Recommended skill name: `thinthread-blog`.

Recommended trigger: use when drafting, researching, outlining, revising, or publishing ThinThread blog posts, especially long-form technical posts about data science, ML, AI agents, synthetic data, interpretation, forecasting, or decision-focused analysis.

Core workflow:

1. Classify the post type: tactical, standard, deep research, or flagship reference.
2. Set a word-count target before researching.
3. Create a reader promise and downstream interpretation target.
4. Build a source dossier for research-heavy posts.
5. Draft an outline after the source pass, not before.
6. Write with a calm expert-explainer voice.
7. Add code only when it advances the argument.
8. Include limitations and guardrails.
9. Convert the final draft to Blowfish front matter under `content/posts/`.
10. Build-check with Hugo before publishing.

Suggested default word count:

- Use 2,000 to 3,500 words for most ThinThread posts.
- Use 4,000 to 5,500 words for research-backed explainers.
- Use 5,500 to 7,000 words only for flagship reference posts.

Important style constraint: the downstream interpretation is the star. A post should not stop at "the model worked." It should explain what the result means, what decision changes, and where the interpretation can fail.
