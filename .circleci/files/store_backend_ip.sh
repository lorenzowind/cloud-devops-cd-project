#!/bin/bash
ipaddress=$( tail -n 1 inventory )
echo $ipaddress
curl -H "Content-Type: text/plain" -H "token:82ddf924-061e-40d7-a7fa-dfddbd245df0" --request PUT --data $ipaddress https://api.memstash.io/values/backend
curl -H "Content-Type:text/plain" -H "token:82ddf924-061e-40d7-a7fa-dfddbd245df0" --request PUT --data "arn:aws:s3:::udapeople-${CIRCLE_WORKFLOW_ID:0:7}" https://api.memstash.io/values/frontend