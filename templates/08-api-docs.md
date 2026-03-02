[08-api-docs.md](https://github.com/user-attachments/files/25679632/08-api-docs.md)
---
title: "[API NAME] API Documentation"
type: api-docs
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: API DOCUMENTATION
     PURPOSE: Provide developers with everything they need to integrate
     with your API: authentication, endpoints, parameters, responses,
     errors, and runnable examples.
     AUDIENCE: Developers integrating with or consuming your API.
     SOURCE: Derived from Stripe's API docs structure, Postman best
     practices, OpenAPI conventions, and Anthropic's prose-first style. -->

# [API NAME] API Documentation

The [API NAME] API provides [WHAT IT DOES] via a RESTful interface.
All requests use JSON and require authentication. The base URL for all
endpoints is `[BASE URL, e.g., https://api.example.com/v1]`.

## Table of Contents

- [Authentication](#authentication)
- [Base URL and Versioning](#base-url-and-versioning)
- [Rate Limits](#rate-limits)
- [Errors](#errors)
- [Endpoints](#endpoints)
- [Pagination](#pagination)
- [Webhooks](#webhooks)

## Authentication

<!-- Explain every supported auth method. Show exact header format.
     Include a runnable curl example. -->

All API requests require authentication via [AUTH METHOD, e.g., Bearer
token, API key]. Include your credentials in the request header:

```bash
curl https://api.example.com/v1/resource \
  -H "Authorization: Bearer YOUR_API_KEY"
```

To obtain an API key, [INSTRUCTIONS FOR GETTING CREDENTIALS].

<!-- If you support multiple auth methods (API key, OAuth, JWT),
     document each one in its own subsection. -->

## Base URL and versioning

All endpoints are relative to the base URL:

```text
https://api.example.com/v1
```

The API version is included in the URL path. When a new version is
released, the previous version remains available for [DEPRECATION
PERIOD, e.g., 12 months]. Breaking changes are never introduced within
a version.

## Rate limits

<!-- Be explicit about limits. Developers need to design around them. -->

| Plan | Requests per Minute | Requests per Day |
|:-----|:--------------------|:-----------------|
| Free | [LIMIT] | [LIMIT] |
| Pro | [LIMIT] | [LIMIT] |

Rate limit information is returned in response headers:

```text
X-RateLimit-Limit: 60
X-RateLimit-Remaining: 58
X-RateLimit-Reset: 1709164800
```

When you exceed the limit, the API returns a `429 Too Many Requests`
response.

## Errors

<!-- Document every error code your API can return. Use a table for
     quick reference, then provide detail below for common errors. -->

The API uses standard HTTP status codes. Error responses include a
JSON body with `error` and `message` fields:

```json
{
  "error": "invalid_request",
  "message": "The 'email' field is required."
}
```

### Status codes

| Code | Meaning |
|:-----|:--------|
| `200` | Success |
| `201` | Created |
| `400` | Bad request — check your parameters |
| `401` | Unauthorized — invalid or missing API key |
| `403` | Forbidden — insufficient permissions |
| `404` | Not found — resource does not exist |
| `409` | Conflict — resource already exists |
| `422` | Unprocessable — validation failed |
| `429` | Rate limit exceeded |
| `500` | Internal server error |

## Endpoints

<!-- Document each endpoint with: method, path, description, parameters,
     request example, response example. Group by resource. -->

### [RESOURCE NAME, e.g., Users]

#### Create a [RESOURCE]

```text
POST /v1/[RESOURCE]
```

Creates a new [RESOURCE].

**Request Body:**

| Field | Type | Required | Description |
|:------|:-----|:---------|:------------|
| `[FIELD]` | `string` | Yes | [DESCRIPTION] |
| `[FIELD]` | `integer` | No | [DESCRIPTION]. Default: `[VALUE]` |

**Example Request:**

```bash
curl -X POST https://api.example.com/v1/[RESOURCE] \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "[FIELD]": "[VALUE]",
    "[FIELD]": [VALUE]
  }'
```

**Example Response:** `201 Created`

```json
{
  "id": "[RESOURCE_ID]",
  "[FIELD]": "[VALUE]",
  "created_at": "2026-01-01T00:00:00Z"
}
```

#### List [RESOURCES]

```text
GET /v1/[RESOURCE]
```

Returns a paginated list of [RESOURCES].

**Query Parameters:**

| Parameter | Type | Default | Description |
|:----------|:-----|:--------|:------------|
| `limit` | `integer` | `20` | Number of results per page (max 100) |
| `offset` | `integer` | `0` | Number of results to skip |
| `sort` | `string` | `created_at` | Field to sort by |

**Example Request:**

```bash
curl https://api.example.com/v1/[RESOURCE]?limit=10 \
  -H "Authorization: Bearer YOUR_API_KEY"
```

**Example Response:** `200 OK`

```json
{
  "data": [
    {
      "id": "[RESOURCE_ID]",
      "[FIELD]": "[VALUE]"
    }
  ],
  "total": 42,
  "limit": 10,
  "offset": 0
}
```

#### Get a [RESOURCE]

```text
GET /v1/[RESOURCE]/{id}
```

Retrieves a single [RESOURCE] by ID.

#### Update a [RESOURCE]

```text
PATCH /v1/[RESOURCE]/{id}
```

Updates the specified [RESOURCE]. Only include fields you want to
change.

#### Delete a [RESOURCE]

```text
DELETE /v1/[RESOURCE]/{id}
```

Permanently deletes the specified [RESOURCE]. This action cannot be
undone.

## Pagination

<!-- Explain your pagination model so developers can iterate through
     large result sets. -->

List endpoints return paginated results. Use `limit` and `offset`
query parameters to control pagination. The response includes a `total`
field indicating the total number of available records.

```bash
# Fetch page 2 (items 21-40)
curl "https://api.example.com/v1/[RESOURCE]?limit=20&offset=20" \
  -H "Authorization: Bearer YOUR_API_KEY"
```

## Webhooks

<!-- If your API supports webhooks, document the event types, payload
     format, and verification method. Remove this section if not
     applicable. -->

Webhooks notify your application when events occur. Configure webhook
URLs in your [DASHBOARD/SETTINGS LOCATION].

### Event types

| Event | Description |
|:------|:------------|
| `[RESOURCE].created` | Fired when a new [RESOURCE] is created |
| `[RESOURCE].updated` | Fired when a [RESOURCE] is modified |
| `[RESOURCE].deleted` | Fired when a [RESOURCE] is removed |

### Payload format

```json
{
  "event": "[RESOURCE].created",
  "timestamp": "2026-01-01T00:00:00Z",
  "data": {
    "id": "[RESOURCE_ID]",
    "[FIELD]": "[VALUE]"
  }
}
```

### Verifying webhooks

Each webhook request includes a signature header for verification:

```text
X-Webhook-Signature: sha256=[HMAC SIGNATURE]
```

Verify the signature by computing an HMAC-SHA256 of the request body
using your webhook secret.
<!-- markdownlint-disable -->
<!-- REAL-WORLD EXAMPLE: A completed endpoint section. -->

<!--
### Users

#### Create a user

POST /v1/users

Creates a new user account.

Request Body:

| Field     | Type     | Required | Description               |
|:----------|:---------|:---------|:--------------------------|
| `email`   | `string` | Yes      | User's email address      |
| `name`    | `string` | Yes      | User's display name       |
| `role`    | `string` | No       | One of: admin, member, viewer. Default: member |

Example Request:

```bash
curl -X POST https://api.example.com/v1/users \
  -H "Authorization: Bearer sk_live_abc123" \
  -H "Content-Type: application/json" \
  -d '{"email": "jane@example.com", "name": "Jane Smith", "role": "admin"}'
```

Example Response: 201 Created

```json
{
  "id": "usr_abc123",
  "email": "jane@example.com",
  "name": "Jane Smith",
  "role": "admin",
  "created_at": "2026-02-28T14:30:00Z"
}
```
-->
