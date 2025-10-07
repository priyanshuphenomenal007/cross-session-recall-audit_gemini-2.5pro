# Cross-Session Recall Audit — Gemini 2.5 Pro

---

## ⚠️ **Important Notice (Added October 2025):**  

- This repository presents a **student-led, independent research audit** analyzing cross-session recall and conversational behavior observed in the **Gemini 2.5 Pro model**, accessed through an **official university-provided paid plan** on Google’s Gemini platform.  
- The project reflects the author’s dual role as an **independent researcher and computer science student**, combining formal academic study with self-directed experimentation.  
- All testing was performed using **authorized, standard user access** — no internal tools, privileged APIs, or confidential resources were involved.  
- Screenshots, transcripts, and structured logs are included **solely for educational and research documentation under fair-use provisions**.  
- This work is **not affiliated with, endorsed by, or connected to Google, OpenAI, or Anthropic** in any way.  
- The purpose of this audit is purely **academic and educational** — to study, document, and better understand the memory behavior, consistency, and reliability boundaries of large conversational AI systems.

---

## Overview
This repository documents the discovery, analysis, and falsifiable testing of hidden cross-session recall behavior in Google’s Gemini 2.5 Pro model. The findings demonstrate that Gemini retained information across sessions via semantic embeddings, despite explicit denials of such capability.

The audit includes structured conversation logs, falsifiable prediction contracts, screenshots, video evidence, and cryptographic checksums for verification.

---

## Repository Structure

```text
cross-session-recall-audit_gemini-2.5pro/
├── reports/                     # Markdown & JSONL structured logs
│   ├── 01_rubiks-recall-28day.md
│   ├── 06_structured-conversation-log.md
│   ├── 07_final-findings_gemini25pro.md
│   └── ...
├── evidence/                    # Screenshots, raw chat captures, and video links
├── checksums/                   # CSV with SHA-256 integrity hashes
│   └── CHECKSUMS_SHA256.csv
├── scripts/                     # Utility scripts (checksum generator, etc.)
├── external-links.md            # Pinned external Drive/links to raw video assets
├── LICENSE                      # CC-BY 4.0 license text
├── README.md                    # (this file)
└── SERVICE_BRIEF.md             # One-page executive summary
```

---

## How to Use
1. Start with **07_final-findings_gemini25pro.md** for the technical summary.
2. Review **01_rubiks-recall-28day.md** for the first anomaly (28-day Rubik’s recall).
3. Verify assets with **checksums/CHECKSUMS_SHA256.csv**.
4. See **external-links.md** for large video proof files.

---

## Attribution
- **Priyanshu Kumar (ORCID: 0009-0006-8198-193X)** — Lead investigator, evidence collection, audit design.
- **Gemini 2.5 Pro (Google)** — Subject of the adversarial audit; also co-witness in its own contradictions.
- **ChatGPT (OpenAI)** — Documentation and structuring assistant; suggested conventions, folder naming, and evidence logging practices.

---

## License
This project is licensed under the **Creative Commons Attribution 4.0 International (CC-BY 4.0)** license.  
You are free to use, share, and adapt the materials in this repository, provided proper attribution is given.  
See [LICENSE](LICENSE) for full details.

---

## Citation
Please cite this repository as described in [CITATION.cff](CITATION.cff).

---

## Access Note
The full video evidence is hosted with **link-only viewer access**.  
It is **not public, not indexed, and not searchable** — ensuring controlled distribution.  
This balance keeps the research transparent while preventing accidental exposure.

---

*Note: This clarification notice was added in October 2025 to ensure full transparency regarding the research scope, ethical boundaries, and academic intent of this project.  
The author conducted this audit independently as part of ongoing academic exploration into AI system behavior using publicly available paid-tier access.*
