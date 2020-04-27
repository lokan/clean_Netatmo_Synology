days=$(( ( $(date '+%s') - $(date -d '10 months ago' '+%s') ) / 86400 ))
find /volume3/Security/Netatmo1 -mtime +$days -delete
find /volume3/Security/Netatmo2 -mtime +$days -delete
find /volume3/Security/Netatmo3 -mtime +$days -delete
