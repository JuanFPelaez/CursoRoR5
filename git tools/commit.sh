#!/bin/bash
# My first script
git add .
read -p "Commit description: " desc  
git commit -m "$desc"