#!/bin/bash
ip=$(curl -H "token:82ddf924-061e-40d7-a7fa-dfddbd245df0" --request GET https://api.memstash.io/values/backend )
echo 'testing'
echo $ip
export API_URL=$ip