[20-blog-post.md](https://github.com/user-attachments/files/25638006/20-blog-post.md)
---
title: "[BLOG POST TITLE]"
type: blog-post
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: "[AUTHOR NAME]"
status: draft
tags: []
description: "[SEO META DESCRIPTION — 150-160 characters max]"
canonical_url: ""
---

<!-- TEMPLATE: BLOG POST
     PURPOSE: A published article with front matter optimized for SEO,
     social sharing, and static site generators. Covers technical and
     non-technical topics.
     AUDIENCE: Blog readers, developers, and the broader community.
     SOURCE: Vercel's blog structure, Hugo/Jekyll front matter conventions,
     Anthropic's prose-first writing, and SEO best practices. -->


# [BLOG POST TITLE]

<!-- First paragraph: hook the reader. State the problem, insight, or
     news in 2-3 sentences. No throat-clearing. No "In this post, we
     will discuss..." Just start. -->

[OPENING PARAGRAPH — State the key insight, problem, or announcement.
Make the reader want to continue.]


## [SECTION HEADING]

<!-- Each H2 section covers one idea. Use clear, descriptive headings
     that work as standalone scannable labels. -->

[BODY PARAGRAPHS — Write in flowing prose. Use short paragraphs of
2-4 sentences. Break complex ideas across multiple paragraphs rather
than using bullet points.]

[CONTINUE WITH SUPPORTING DETAIL, EVIDENCE, OR EXPLANATION.]


## [SECTION HEADING]

[BODY PARAGRAPHS]

<!-- Include code examples for technical posts. Every example must be
     runnable and include expected output. -->

```[LANGUAGE]
[CODE EXAMPLE IF APPLICABLE]
```

<!-- Use images sparingly and only when they add understanding.
     ![Descriptive alt text](images/filename.png) -->


## [SECTION HEADING]

[BODY PARAGRAPHS]

<details>
<summary>[OPTIONAL: Expand for additional detail]</summary>

[SUPPLEMENTARY CONTENT — background info, extended examples, or
tangential points that would interrupt the main flow.]

</details>


## [CONCLUSION / CALL TO ACTION]

<!-- End with a clear takeaway or next step. What should the reader
     do now? Try something, read more, sign up, contribute? -->

[CLOSING PARAGRAPH — Summarize the key point and give the reader a
concrete next step.]

- [LINK TO RELATED RESOURCE]
- [LINK TO RELATED RESOURCE]


<!-- REAL-WORLD EXAMPLE: A completed blog post opening. -->

<!--
# How We Cut API Latency by 40% with Connection Pooling

Our API response times had been creeping up for months. P99 latency
hit 800ms in January, and users were noticing. After profiling, we
traced the bottleneck to a surprising place: not our application code,
but the cost of establishing new database connections on every request.

Switching to connection pooling with PgBouncer dropped our P99 to
480ms overnight. Here's exactly what we did, what went wrong along
the way, and the configuration that worked.

## The Problem

Every API request was opening a new PostgreSQL connection, using it
for one or two queries, and closing it. At 500 requests per second,
that meant 500 TCP handshakes, 500 TLS negotiations, and 500
authentication rounds — per second. The database server was spending
more time managing connections than executing queries.
-->
