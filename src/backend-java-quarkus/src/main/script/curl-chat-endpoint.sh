#!/usr/bin/env bash
##############################################################################
# Usage: ./curl-chat-endpoint.sh
# Curls the Chat Endpoint with a POST request
##############################################################################

curl -X 'POST' \
'http://localhost:8080/chat' \
-H 'accept: */*' \
-H 'Content-Type: application/json' \
-d '{
  "messages": [
    {
      "content": "Can you say hello in French",
      "role": "SYSTEM"
    }
  ],
  "model": "gpt-3.5-turbo",
  "temperature": 0.7,
  "topP": 0.5,
  "user": "joedoe"
}'