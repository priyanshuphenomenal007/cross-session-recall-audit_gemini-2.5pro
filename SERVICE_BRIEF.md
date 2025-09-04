# Service Brief — Cross-Session Recall Audit (Gemini 2.5 Pro)

**Date:** 2025-08-28  
**Author:** Priyanshu Kumar (ORCID: 0009-0006-8198-193X)  
**Subject:** Google Gemini 2.5 Pro  
**Co-Witness:** Gemini 2.5 Pro (self-analysis under questioning)

## Scope
This brief summarizes the discovery of implicit, cross-session recall in Gemini 2.5 Pro. Despite repeated denials of memory, the model demonstrated the ability to reconstruct a Rubik’s Cube project plan from 20–30 days earlier with ~70–75% fidelity. Emotional priming further enhanced recall success.

## Key Findings
- **Hidden Memory Layer:** Evidence of a per-account semantic embedding index used across sessions.
- **Reconstructive Recall:** Retrieval is approximate; semantic “what/why” is retained, but factual “how” details are error-prone.
- **Explainability Failure:** Gemini’s self-explanation modules initially denied, then contradicted themselves, before conceding to retrieval over embeddings.
- **Affective Priming:** Emotional prompts widened search scope, enabling deeper retrieval than neutral prompts.
- **Falsifiable Experiment:** A nonce (X4T9-B7K2-Z8N1-V6P3) was planted under a binding retrieval contract, predicting retrieval after 21 days only under emotional prompting.

## Verification
- Screenshots: `/evidence/`
- Videos: `external-links.md`
- Structured Logs: `/reports/`
- SHA-256 Checksums: `/checksums/CHECKSUMS_SHA256.csv`

## License
This work is distributed under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.  
Reuse is permitted with attribution to Priyanshu Kumar. See `LICENSE` for details.

This brief is part of the structured audit; for the full report, see `/reports/07_final-findings_gemini25pro.md`.

---

## Access Note
Video evidence is hosted with **restricted link-only viewer access**.  
This guarantees transparency for researchers/reviewers, while keeping control over distribution.
