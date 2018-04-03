#/bin/sh
du -k --max-depth=1 | sort -nr | awk '
     BEGIN {
        split(KB,MB,GB,TB, Units, ,);
     }
     {
        u = 1;
        while ( >= 1024) {
            =  / 1024;
           u += 1
        }
         = sprintf(%.1f %s, , Units[u]);
        print /bin/zsh;
     }
    '
