# !/bin/bash
# ATTENTION! PUT THIS FILE 2 *YOUR PROJECT*/$gitflow
# Visit https://github.com/sunbossrs/gitflow for more infos.

cd .. && DATE=$(date -d'1 day ago' "+%Y-%m-%d") && TIME=$(date "+%H:%M:%S") 
echo -e "  ____\n |\n   The upload-to-git-platform script as date-time format commit\n                                                             ____| \n_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _\n\n[+] Commiting changes ..." && git add . && git commit -a -m "$DATE $TIME" && echo "[+] Pushing ..." && git push
