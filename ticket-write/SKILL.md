---
name: ticket-write
description: Write a short, high-level Jira ticket via the Jira MCP from a conversation, bug, or idea. Use when asked to raise, file, or write a ticket. Not for implementation plans.
---

# Ticket Write

A ticket records that work exists and why. It is not a plan. Write a title that stands alone, plus the shortest description that lets someone pick the ticket up cold months later.

## Title

One line stating the problem or the outcome and where the work takes place.

- "Distillery - Export fails for reports over 10k rows"
- "JetEngine - Add a new matcher for ..."

## Description

Can be empty. Must be short and simple.

Add a sentence or two for things a future reader would have to rediscover, or where the title alone can't convey the whole story. 

Leave out approach, steps, estimates, and acceptance-criteria lists. If an approach was discussed, record the decision in one line, not the design. Link to related tickets, docs, or threads rather than summarising them. Use plain paragraphs and links, no headings.

## Process

1. Take the title and context from the conversation. Ask only for what the ticket cannot be created without, usually the project if it is not obvious.
2. Search the project for an existing ticket covering the same work. Offer to link or update it rather than duplicate.
3. Search, or ask for a related epic.
3. Show the draft title and description, and issue type (default to story unless obviously a bug) then create the ticket only once the user confirms. Leave assignee, priority, sprint, and estimates unset unless asked.
5. Report the ticket key and link.
