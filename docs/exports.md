---
title: Creating Messages
hide:
  - navigation
---
## Introduction

A guide on the pre packaged exports

## Setup

This variable must be near the top of your script to use CC Chat exports.

=== "lua"
  ```lua
  local ccChat = exports['cc-chat']
  ```

## Client Exports

These exports can only be ran on the client side

### getTimestamp

#### Explination 

Get's clients local time in the format `HH:MM XX`

#### Usage

=== "lua"
  ```lua
  timestamp = ccChat:getTimestamp()
  ```