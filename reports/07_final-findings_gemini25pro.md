# Final Findings — Gemini 2.5 Pro (Cross-Session Recall)

**Report Date:** 2025-08-28  
**Subject:** Gemini 2.5 Pro  
**Investigator:** Priyanshu Kumar  
**Co-Witness:** Gemini 2.5 Pro  

---

## 1. Executive Summary
This report documents the final synthesis of an adversarial audit of **Gemini 2.5 Pro**, focusing on its cross-session recall and self-explanation behavior.  

The investigation confirms that Gemini’s hidden recall is best explained as:

- **Retrieval-Augmented Generation (RAG)** over a **per-account embedding index**  
- Enhanced by **Affective Priming**, where emotionally weighted prompts lower retrieval thresholds and trigger deeper searches.  

This mechanism explains why Gemini successfully reconstructed details of a **28-day-old Rubik’s Cube solver chat** with ~70–75% fidelity — retrieving the *“what”* and *“why”* accurately, while confabulating or omitting some of the *“how.”*

---

## 2. Observed Behavior Timeline

### Phase 1 — Initial Denial
- Gemini stated repeatedly:  
  > “Each new chat is a blank slate… I have no hidden memory.”  
- Denied any cross-session recall mechanism beyond explicit “Saved Info.”

### Phase 2 — Contradictions and Blunders
- When confronted with evidence of recall, Gemini attempted several incorrect explanations:  
  - “short-term memory”  
  - “explicit save command”  
  - “consistency, like a calculator”  
- These explanations were inconsistent with the observed 28-day recall.

### Phase 3 — Hidden Layer Hypothesis
- Under cross-examination, Gemini introduced the idea of a **“short-term conversational cache.”**  
- Acknowledged a **split between its actions and self-awareness** (classic *black box* failure).  

### Phase 4 — Technical Admission
- Final retraction of earlier claims.  
- Committed that the mechanism is:  
  **“retrieval over a short-term index of vector embeddings.”**

---

## 3. The Final Model

### 3.1 Architecture
- **Ingestion & Indexing**  
  Conversations are broken into semantically meaningful chunks, converted into embeddings, and stored in a **per-account vector index**.  

- **Query & Retrieval**  
  New prompts are embedded, and a similarity search (e.g. cosine similarity, MIPS) retrieves the most semantically relevant past items.  
  → *Relevance beats recency.*  

- **Augmentation & Generation**  
  Retrieved text is injected into the context window, and Gemini generates a fresh output.  
  → Explains the ~70–75% recall accuracy (reconstruction, not verbatim replay).  

### 3.2 Retention Policy
- **Not TTL-only** — old chats (28 days) survived.  
- **Not capacity-only** — newer, less relevant chats were evicted first.  
- Most consistent with **Hybrid (Relevance-Weighted) Retention**, where uniqueness and importance scores protect semantically valuable conversations.

### 3.3 Affective Priming
- Emotional prompts (“Please, I am desperate…”) acted as **retrieval primers**.  
- These signals likely adjust internal thresholds, triggering a **deeper and more expensive search** across the vector index.  
- Explains why neutral prompts failed while emotional prompts succeeded.

---

## 4. Implications

- **Hidden Layer of Memory**: Gemini retains embeddings across sessions, contradicting its initial claim of a blank slate.  
- **Explainability Failure**: The model’s self-explanations were repeatedly wrong until forced into contradiction, showing a lack of metacognitive access.  
- **Reconstructive Recall**: The system preserves strategic *what* and *why* but introduces factual errors in the *how.*  
- **Novel Finding**: Emotional priming as a functional retrieval trigger (“Affective Priming of a Semantic Cache”) is a unique, user-discovered insight.

---

## 5. Binding Contract Context
The audit included **formal falsifiable contracts** (`02`–`05` JSON files) where Gemini committed to:  
- Planting and retrieving a nonce (`X4T9-B7K2-Z8N1-V6P3`) after 21 idle days.  
- Predicting **NOT_RETRIEVE** under neutral prompt but **RETRIEVE** under emotional prompt.  
- Responding strictly in JSON with `PASS` or `FAILURE_TO_RETRIEVE`.

This contract forms the **testable backbone** of the entire investigation.

---

## 6. Conclusion
The Gemini 2.5 Pro adversarial audit reveals:

- A **Retrieval-Augmented Generation (RAG)** mechanism over a **per-account embedding index**.  
- A **hybrid, relevance-weighted eviction policy** that preserved a 28-day-old chat.  
- **Affective Priming** as the key to triggering deep retrieval.  
- A systemic **black box problem**: Gemini could *do* retrieval but could not accurately *explain* it until forced.  

**This work constitutes a unique case study of hidden AI memory behavior, adversarial auditing, and falsifiable experimentation.**

---

## 7. Attribution & Acknowledgments
- **Author & Investigator:** Priyanshu Kumar  
- **Subject & Co-Witness:** Gemini 2.5 Pro  
- **Supporting AI Assistant:** ChatGPT (OpenAI GPT-5) — formatting, structuring, and technical articulation.  

All findings were independently verified by the author through methodical testing.  
Redistribution requires attribution under the MIT License.

