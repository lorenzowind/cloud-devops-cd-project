#!/bin/bash
ip=$(curl -H "token:82ddf924-061e-40d7-a7fa-dfddbd245df0" --request GET https://api.memstash.io/values/backend )
echo "[all]" > inventory
echo  "${ip} ansible_user=ubuntu" >> inventory