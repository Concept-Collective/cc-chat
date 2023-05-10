---
title: Exports
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
  local timestamp = ccChat:getTimestamp()
  ```
  
## Server Exports

These exports can only be ran on the server side

### getTimestamp

#### Explination 

Checks if a client is spamming. returns a boolen

#### Usage

=== "lua"
  ```lua
  if ccChat:checkSpam(source, message) then
    -- Code to run if the client is spamming chat
  else
    -- Code to run if the client is not spaming chat
  end
  ```
