[14-runbook.md](https://github.com/user-attachments/files/25634382/14-runbook.md)
---
title: "[SERVICE NAME] Runbook"
type: runbook
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: RUNBOOK / PLAYBOOK
     PURPOSE: Provide step-by-step procedures for operating, maintaining,
     and responding to incidents in a production system. A runbook should
     be usable by an on-call engineer at 3am under stress.
     AUDIENCE: On-call engineers, SREs, and operations staff.
     SOURCE: Google SRE practices, PagerDuty incident response docs,
     and AWS operational excellence guidelines.
     KEY PRINCIPLE: Every procedure must be executable by someone who
     has never seen this system before. No assumed knowledge. -->


# [SERVICE NAME] Runbook


## Table of Contents

- [Service Overview](#service-overview)
- [Contacts](#contacts)
- [Access and Credentials](#access-and-credentials)
- [Common Operations](#common-operations)
- [Incident Response](#incident-response)
- [Alert Playbooks](#alert-playbooks)
- [Disaster Recovery](#disaster-recovery)
- [Maintenance Procedures](#maintenance-procedures)


## Service Overview

<!-- A 2-3 sentence summary. On-call engineers need instant context. -->

**What it does:** [ONE SENTENCE DESCRIPTION]

**Dependencies:** [LIST UPSTREAM AND DOWNSTREAM SERVICES]

**SLA:** [AVAILABILITY TARGET, e.g., 99.9% uptime]

| Detail | Value |
|:-------|:------|
| Repository | `[REPO URL]` |
| Dashboard | [LINK TO MONITORING DASHBOARD] |
| Logs | [LINK TO LOG AGGREGATOR] |
| Alerts | [LINK TO ALERTING SYSTEM] |
| Deployment | [LINK TO CI/CD PIPELINE] |


## Contacts

<!-- Who to escalate to when you're stuck. -->

| Role | Name | Contact |
|:-----|:-----|:--------|
| Primary on-call | [NAME] | [PHONE/SLACK/EMAIL] |
| Secondary on-call | [NAME] | [PHONE/SLACK/EMAIL] |
| Service owner | [NAME] | [PHONE/SLACK/EMAIL] |
| Database admin | [NAME] | [PHONE/SLACK/EMAIL] |


## Access and Credentials

<!-- How to get into the systems you need to operate. -->

| System | Access Method | Credentials Location |
|:-------|:-------------|:--------------------|
| [PRODUCTION SERVERS] | `[SSH/VPN COMMAND]` | [SECRET MANAGER PATH] |
| [DATABASE] | `[CONNECTION COMMAND]` | [SECRET MANAGER PATH] |
| [CLOUD CONSOLE] | [URL] | SSO via [PROVIDER] |
| [MONITORING] | [URL] | SSO via [PROVIDER] |


## Common Operations

### Restart the Service

```bash
[RESTART COMMAND, e.g., kubectl rollout restart deployment/service-name -n production]
```

Verify it's back up:

```bash
[HEALTH CHECK COMMAND]
```

### Scale Up / Down

```bash
# Scale to N replicas
[SCALE COMMAND, e.g., kubectl scale deployment/service-name --replicas=N -n production]
```

### View Logs

```bash
[LOG COMMAND, e.g., kubectl logs -f deployment/service-name -n production --tail=100]
```

### Deploy a New Version

```bash
[DEPLOY COMMAND OR LINK TO CI/CD PIPELINE]
```

### Rollback a Deployment

```bash
[ROLLBACK COMMAND, e.g., kubectl rollout undo deployment/service-name -n production]
```


## Incident Response

<!-- Standard incident procedure. Keep it short — this is read under
     pressure. -->

### When an Alert Fires

1. **Acknowledge** the alert within [TIMEFRAME, e.g., 5 minutes].
2. **Assess severity** using the table below.
3. **Follow the playbook** for the specific alert (see [Alert
   Playbooks](#alert-playbooks)).
4. **Communicate** in the incident channel: `[SLACK CHANNEL]`.
5. **Escalate** if you cannot resolve within [TIMEFRAME, e.g., 30
   minutes].

### Severity Levels

| Severity | Impact | Response Time | Example |
|:---------|:-------|:-------------|:--------|
| SEV1 | Service down for all users | Immediate | [EXAMPLE] |
| SEV2 | Major feature degraded | 15 minutes | [EXAMPLE] |
| SEV3 | Minor feature affected | 1 hour | [EXAMPLE] |
| SEV4 | Cosmetic or low-impact | Next business day | [EXAMPLE] |


## Alert Playbooks

<!-- One subsection per alert. Name matches the alert name exactly. -->

### [ALERT NAME, e.g., "High Error Rate"]

**Trigger:** [WHAT CAUSES THIS ALERT, e.g., Error rate > 5% for 5
minutes]

**Impact:** [WHAT IS AFFECTED]

**Steps:**

1. Check the error logs:

   ```bash
   [LOG COMMAND WITH ERROR FILTER]
   ```

2. Identify the error pattern — is it one endpoint or widespread?

3. If one endpoint: check recent deployments via `[DEPLOY LOG COMMAND]`.
   Roll back if a new deployment correlates with the error spike.

4. If widespread: check dependencies via `[DEPENDENCY CHECK COMMAND]`.

5. If the issue persists after 30 minutes, escalate to [CONTACT].

### [ALERT NAME, e.g., "High Latency"]

**Trigger:** [CONDITION]

**Impact:** [WHAT IS AFFECTED]

**Steps:**

1. [STEP 1]
2. [STEP 2]
3. [STEP 3]

### [ALERT NAME, e.g., "Disk Usage > 90%"]

**Trigger:** [CONDITION]

**Impact:** [WHAT IS AFFECTED]

**Steps:**

1. [STEP 1]
2. [STEP 2]


## Disaster Recovery

### Database Restore

1. Identify the most recent backup:

   ```bash
   [LIST BACKUPS COMMAND]
   ```

2. Restore to a new instance:

   ```bash
   [RESTORE COMMAND]
   ```

3. Verify data integrity:

   ```bash
   [VERIFICATION COMMAND]
   ```

4. Update the service to point to the restored instance.

### Full Service Recovery

1. [STEP 1: RESTORE INFRASTRUCTURE]
2. [STEP 2: RESTORE DATA]
3. [STEP 3: RESTART SERVICES IN ORDER]
4. [STEP 4: VERIFY HEALTH]
5. [STEP 5: NOTIFY STAKEHOLDERS]

**Recovery Time Objective (RTO):** [TARGET, e.g., 1 hour]

**Recovery Point Objective (RPO):** [TARGET, e.g., 15 minutes]


## Maintenance Procedures

### [PROCEDURE NAME, e.g., "Database Maintenance Window"]

**Frequency:** [SCHEDULE, e.g., Monthly, first Sunday at 02:00 UTC]

**Steps:**

1. [STEP 1]
2. [STEP 2]
3. [STEP 3]

### [PROCEDURE NAME, e.g., "Certificate Renewal"]

**Frequency:** [SCHEDULE]

**Steps:**

1. [STEP 1]
2. [STEP 2]
